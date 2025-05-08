//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Mar 13 10:15:56 2025
//Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target db_wrapper.bd
//Design      : db_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module db_wrapper
   (gclk_100m_clk_n,
    gclk_100m_clk_p,
    led0,
    led1,
    led2,
    led3);
  input [0:0]gclk_100m_clk_n;
  input [0:0]gclk_100m_clk_p;
  output [0:0]led0;
  output [0:0]led1;
  output [0:0]led2;
  output [0:0]led3;

  wire [0:0]gclk_100m_clk_n;
  wire [0:0]gclk_100m_clk_p;
  wire [0:0]led0;
  wire [0:0]led1;
  wire [0:0]led2;
  wire [0:0]led3;

  db db_i
       (.gclk_100m_clk_n(gclk_100m_clk_n),
        .gclk_100m_clk_p(gclk_100m_clk_p),
        .led0(led0),
        .led1(led1),
        .led2(led2),
        .led3(led3));
endmodule
