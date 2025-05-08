module led_chaser (
    input wire          clk,
    input wire          btn_rst, 
    input wire          vio_rst, 
    input wire          vio_ctrl_enable,
    input wire [1:0]    vio_mode,
    input wire          btn_mode,
    output reg [3:0]    led,
    output reg [1:0]    mode
);



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
    reg btn_mode_n_d; // 延遲一拍
    wire btn_mode_falling;
    wire btn_rst_n;
    wire btn_mode_n;
    wire rst_sync = !vio_rst_sync || !btn_rst_n;
    
    always @(posedge clk) begin
        if (rst_sync) begin
            btn_mode_n_d <= 1'b1;
        end else begin
            btn_mode_n_d <= btn_mode_n;
        end
    end

assign btn_mode_falling = (btn_mode_n_d == 1'b1) && (btn_mode_n == 1'b0);

    always @(posedge clk) begin
        if (rst_sync) begin
            mode <= 0;
        end else if (btn_mode_falling && !vio_ctrl_enable) begin
            mode <= (mode == 2'b11) ? 2'b00 : mode + 1;
        end else if (vio_ctrl_enable) begin
            mode <= vio_mode;
        end
    end
    
///////////////////////cade/////////////////////

    reg [25:0] counter;     
    reg [3:0]  pattern; 
    reg        mode4_cnt;
    reg [3:0]  mode4;


    always @(posedge clk) begin
        if (rst_sync) begin
           counter <= 26'd0; 
           pattern <= 4'd0;   
           mode4_cnt <= 1'd0;
           mode4 <= 4'd0;
        end else begin
            case (mode)
                2'b00,2'b01: begin // LED 每秒加1
                    if (counter == 26'd50_000_000 - 1) begin
                        counter <= 26'd0; 
                        pattern <= pattern + 1;
                    end else begin
                        counter <= counter + 1;
                    end
                end
                2'b10: begin // LED 每半秒加1
                    if (counter == 26'd25_000_000 - 1) begin
                        counter <= 26'd0; 
                        pattern <= pattern + 1;
                    end else begin
                        counter <= counter + 1;
                    end
                end
                2'b11: begin // LED 每秒交錯閃爍1次
                    if (counter == 26'd25_000_000 - 1) begin
                        counter <= 26'd0;  
                        mode4_cnt <= ~mode4_cnt;
                        mode4 <= (mode4_cnt) ? 4'b0101 : 4'b1010;
                    end else begin
                        counter <= counter + 1; 
                    end
                end
            endcase
        end
    end
    
///////////////////////led_output/////////////////////
    
    always @(posedge clk) begin
        if (rst_sync)
            led <= 4'd0;
        else begin
            case (mode)
                2'b00: led <= pattern;
                2'b01: led <= ~pattern;
                2'b10: led <= pattern;
                2'b11: led <= mode4;
                default: led<= 4'd0;
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
