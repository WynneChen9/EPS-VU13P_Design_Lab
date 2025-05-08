module led_chaser (
    input wire          clk,
    input wire          btn_rst, 
    input wire          vio_rst, 
    input wire          vio_ctrl_enable,
    input wire [2:0]    vio_mode,
    input wire          btn_mode,
    output reg [7:0]    led,
    output reg [2:0]    mode,
    output reg [11:0]    pwm_counter    // PWM Counter
);

    wire btn_rst_n;
    wire btn_mode_n;

    reg [26:0] btn_cnt; 
    reg        btn_enable;
///////////////////////reset/////////////////////
    (* dont_touch = "true" *) reg vio_rst_d0   = 0;
    (* dont_touch = "true" *) reg vio_rst_d1   = 0;
    (* dont_touch = "true" *) reg vio_rst_sync = 0;
    
    always @(posedge clk) begin
        vio_rst_d0   <= vio_rst;
        vio_rst_d1   <= vio_rst_d0;
        vio_rst_sync <= vio_rst_d1;
    end

///////////////////////botton/////////////////////

    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n) begin
            btn_cnt         <= 0;
            btn_enable      <= 0;
            mode            <= 0;
        end else if (!btn_enable && !btn_mode_n && !vio_ctrl_enable) begin
            btn_enable <= 1;
        end else if (btn_enable) begin
            if (btn_cnt == 26'd50_000_000) begin 
                mode <= (mode == 3'b111) ? 3'b000 : mode + 1;
                btn_cnt  <= 0;
                btn_enable <= 0; 
            end else begin
                btn_cnt <= btn_cnt + 1;
            end
        end else if (vio_ctrl_enable) begin  
            mode <= vio_mode;
        end
    end
    
///////////////////////cade/////////////////////

    reg [25:0] counter;     
    reg [7:0]  pattern; 
    reg        mode4_cnt;
    reg [7:0]  mode4;

    reg [11:0] brightness;
    reg       increase;
    reg [19:0] breath_counter;
    // 波浪呼吸燈
    reg [11:0] led_brightness [7:0];


    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n) begin
           counter <= 26'd0; 
           pattern <= 8'd0;   
           mode4_cnt <= 1'd0;
           mode4 <= 8'd0;
           brightness <= 12'd0;
           increase <= 1'b1;
           breath_counter <= 2'd0;
        end else begin
            case (mode)
                3'b000,3'b001: begin // LED 每秒加1
                    if (counter == 26'd50_000_000 - 1) begin
                        counter <= 26'd0; 
                        pattern <= pattern + 1;
                    end else begin
                        counter <= counter + 1;
                    end
                end
                3'b010: begin // LED 每半秒加1
                    if (counter == 26'd25_000_000 - 1) begin
                        counter <= 26'd0; 
                        pattern <= pattern + 1;
                    end else begin
                        counter <= counter + 1;
                    end
                end
                3'b011: begin // LED 每秒交錯閃爍1次
                    if (counter == 26'd25_000_000 - 1) begin
                        counter <= 26'd0;  
                        mode4_cnt <= ~mode4_cnt;
                        mode4 <= (mode4_cnt) ? 8'b01010101 : 8'b10101010;
                    end else begin
                        counter <= counter + 1; 
                    end
                end
                3'b110: begin // 同步呼吸燈
                    if (breath_counter >= 20'd500_000) begin
                        breath_counter <= 20'd0;
                        if (increase)
                            brightness <= brightness + 1;
                        else
                            brightness <= brightness - 1;

                        if (brightness == 12'd1249)
                            increase <= 1'b0;
                        else if (brightness == 12'd0)
                            increase <= 1'b1;
                        else
                            breath_counter <= breath_counter + 1;
                    end
                end
                3'b111: begin // 波浪型呼吸燈
                    if (breath_counter >= 20'd250_000) begin
                        breath_counter <= 20'd0;
                        if (increase)
                            brightness <= brightness + 1;
                        else
                            brightness <= brightness - 1;

                        if (brightness == 12'd1249)
                            increase <= 1'b0;
                        else if (brightness == 12'd0)
                            increase <= 1'b1;
                        else
                            breath_counter <= breath_counter + 1;
                   end
                end
            endcase
        end
    end
    
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : LED_BRIGHTNESS_LOGIC
            always @(posedge clk or posedge vio_rst_sync) begin
                if (!vio_rst_sync || !btn_rst_n) begin
                    led_brightness[i] <= 12'd0;
                end else begin
                    case (mode)
                        3'b100: begin
                            led_brightness[i] <= 12'd1249;
                        end
                        3'b101: begin
                            if (counter == 26'd25_000_000 - 1)
                                led_brightness[i] <= (led_brightness[i] == 12'd1249) ? 12'd1249 : 12'd499;
                        end
                        3'b110: begin
                            led_brightness[i] <= brightness;
                        end
                        3'b111: begin
                            led_brightness[i] <= brightness >> (i & 3);
                        end
                        default: led_brightness[i] <= led_brightness[i];
                    endcase
                end
            end
        end
    endgenerate

    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n)
            pwm_counter <= 12'd0;
        else if (pwm_counter == 12'd1249)
            pwm_counter <= 12'd0;
        else
            pwm_counter <= pwm_counter + 1;
        
    end
    
///////////////////////led_output/////////////////////
    
    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n)
            led <= 8'd0;
        else begin
            case (mode)
                3'b000: led <= pattern;
                3'b001: led <= ~pattern;
                3'b010: led <= pattern;
                3'b011: led <= mode4;
                default: begin
                    led[0] <= (pwm_counter < led_brightness[0]);
                    led[1] <= (pwm_counter < led_brightness[1]);
                    led[2] <= (pwm_counter < led_brightness[2]);
                    led[3] <= (pwm_counter < led_brightness[3]);
                    led[4] <= (pwm_counter < led_brightness[4]);
                    led[5] <= (pwm_counter < led_brightness[5]);
                    led[6] <= (pwm_counter < led_brightness[6]);
                    led[7] <= (pwm_counter < led_brightness[7]);
                end
            endcase
        end
    end


    debounce debounce_inst (
        .clk(clk),
        .btn_input(btn_rst), 
        .btn_stable(btn_rst_n)
    );
    
    debounce debounce_mode_inst (
        .clk(clk),
        .btn_input(btn_mode), 
        .btn_stable(btn_mode_n)
    );

endmodule
