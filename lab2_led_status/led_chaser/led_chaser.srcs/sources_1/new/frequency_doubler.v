`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 04:39:05 PM
// Design Name: 
// Module Name: frequency_doubler
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


module frequency_doubler (
    input wire clk_in,  // 輸入時鐘
    input wire rst,     // 重置信號
    output reg clk_out // 輸出時鐘（倍頻後）
);

reg clk_div;  // 用於時鐘分頻的中間信號

// 使用寄存器來控制倍頻
always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        clk_div <= 0;
        clk_out <= 0;
    end else begin
        // 每次輸入時鐘的上升沿時翻轉 clk_div
        clk_div <= ~clk_div;
        // 輸出時鐘在 clk_div 翻轉時改變
        clk_out <= clk_div;
    end
end

endmodule

