`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2025 12:11:15 PM
// Design Name: 
// Module Name: led_chaser2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_chaser2 (
    input wire          clk,
    input wire          btn_rst, 
    input wire          vio_rst, 
    input wire [1:0]    vio_mode,
    input wire          btn_mode,
    output reg [7:0]    led 
);

    wire btn_rst_n;
    wire btn_mode_n;

    (* dont_touch = "true" *) reg vio_rst_d0   = 0;
    (* dont_touch = "true" *) reg vio_rst_d1   = 0;
    (* dont_touch = "true" *) reg vio_rst_sync = 0;

    always @(posedge clk) begin
        vio_rst_d0   <= vio_rst;
        vio_rst_d1   <= vio_rst_d0;
        vio_rst_sync <= vio_rst_d1;
    end

    reg [1:0] vio_mode_sync_0;
    reg [1:0] vio_mode_sync_1; 
    reg [1:0] vio_mode_int;  

    reg [20:0] btn_cnt;  
    reg        btn_pressed; 
    reg        last_btn_state; 

    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n) begin
            vio_mode_sync_0 <= 2'b00;
            vio_mode_sync_1 <= 2'b00;
            vio_mode_int    <= 2'b00;
            btn_cnt         <= 0;
            btn_pressed     <= 0;
            last_btn_state  <= 1;
        end else begin
            // VIO Mode 同步
            vio_mode_sync_0 <= vio_mode; 
            vio_mode_sync_1 <= vio_mode_sync_0;
            if (vio_mode_sync_1 != vio_mode_int) begin
                vio_mode_int <= vio_mode_sync_1;
            end 
            else if (btn_mode_n == 0 && last_btn_state == 1) begin
                if (btn_cnt < 21'd1_000_000) begin 
                    btn_cnt <= btn_cnt + 1;
                end else if (!btn_pressed) begin
                    vio_mode_int <= (vio_mode_int == 2'b11) ? 2'b00 : vio_mode_int + 1;
                    btn_pressed  <= 1; 
                end
            end else if (btn_mode_n == 1) begin
                btn_cnt     <= 0;
                btn_pressed <= 0; 
            end
            
            last_btn_state <= btn_mode_n; 
        end
    end

    reg [25:0] counter;     
    reg [7:0]  pattern; 
    
    reg mode4_cnt;
    reg [7:0] mode4;

    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n) begin
            counter <= 26'd0; 
            pattern <= 8'd0;   
            mode4_cnt <= 1'd0;
            mode4 <= 8'd0;
        end else begin
            if (vio_mode_int <= 2'b01) begin
                // 模式 00, 01
                if (counter == 26'd50_000_000 - 1) begin
                    counter <= 26'd0; 
                    pattern <= pattern + 1;
                end else if (pattern == 8'b11111111) begin
                    pattern <= 8'd1;
                    counter <= counter;
                end else begin
                    counter <= counter + 26'd1;
                end
            end else if (vio_mode_int == 2'b10) begin
                // 模式 10
                if (counter >= 26'd25_000_000) begin
                    counter <= 26'd0; 
                end else if (counter == 26'd25_000_000 - 1) begin
                    counter <= 26'd0;  
                    pattern <= pattern + 8'd1;
                end else if (pattern == 8'b11111111) begin
                    pattern <= 8'd0;
                    counter <= counter;
                end else begin
                    counter <= counter + 25'd1; 
                end
            end else if (vio_mode_int == 2'b11) begin
                // 模式 11
                if (counter >= 26'd25_000_000) begin
                    counter <= 26'd0; 
                end else if (counter == 25'd25_000_000 - 1) begin
                    counter <= 25'd0;  
                    mode4_cnt <= mode4_cnt + 1'd1;
                end else if (mode4_cnt == 1'd0) begin
                    mode4 <= 8'b01010101;
                end else if (mode4_cnt == 1'd1) begin
                    mode4 <= 8'b10101010;
                end else begin
                    counter <= counter + 25'd1; 
                end
            end
        end
    end

    always @(posedge clk or posedge vio_rst_sync) begin
        if (!vio_rst_sync || !btn_rst_n)
            led <= 8'd0;
        else begin
            case (vio_mode_int)
                2'b00: led <= pattern;
                2'b01: led <= ~pattern;
                2'b10: led <= pattern;
                2'b11: led <= mode4;
                default: led <= 8'd0;
            endcase
        end
    end

    // 按键去抖动
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

    );

endmodule

