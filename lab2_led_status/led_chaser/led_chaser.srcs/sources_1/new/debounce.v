`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 03:04:27 PM
// Design Name: 
// Module Name: debounce
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


module debounce (
    input  wire clk, 
    input  wire btn_input, 
    output reg  btn_stable   // 去抖動後的穩定按鈕信號
);

    reg [19:0] counter;
    reg btn_sync_1, btn_sync_2, btn_sync_3;

    always @(posedge clk) begin
        btn_sync_1 <= btn_input;
        btn_sync_2 <= btn_sync_1;
        btn_sync_3 <= btn_sync_2;

        if (btn_sync_3 == 0) begin
            counter <= counter + 1;
            if (counter == 20'hFFFFF) 
                btn_stable <= 0;
        end else begin
            counter <= 0;
            btn_stable <= 1;
        end
    end
endmodule
