//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Mar 13 10:24:35 2025
//Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target db_wrapper.bd
//Design      : db_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module db_wrapper
   (btn_mode,
    btn_rst,
    gclk_100m_clk_n,
    gclk_100m_clk_p,
    led);
  input btn_mode;
  input btn_rst;
  input [0:0]gclk_100m_clk_n;
  input [0:0]gclk_100m_clk_p;
  output [3:0]led;

  wire btn_mode;
  wire btn_rst;
  wire [0:0]gclk_100m_clk_n;
  wire [0:0]gclk_100m_clk_p;
  wire [3:0]led;

  db db_i
       (.btn_mode(btn_mode),
        .btn_rst(btn_rst),
        .gclk_100m_clk_n(gclk_100m_clk_n),
        .gclk_100m_clk_p(gclk_100m_clk_p),
        .led(led));
endmodule
