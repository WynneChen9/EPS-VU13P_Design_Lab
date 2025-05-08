// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module db (
  gclk_100m_clk_n,
  gclk_100m_clk_p,
  led0,
  led1,
  led2,
  led3
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gclk_100m CLK_N" *)
  (* X_INTERFACE_MODE = "slave gclk_100m" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gclk_100m, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]gclk_100m_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gclk_100m CLK_P" *)
  input [0:0]gclk_100m_clk_p;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]led0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]led1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]led2;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]led3;

  // stub module has no contents

endmodule
