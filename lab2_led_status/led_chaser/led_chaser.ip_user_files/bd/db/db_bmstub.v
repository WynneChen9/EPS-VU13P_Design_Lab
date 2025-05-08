// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module db (
  gclk_100m_clk_n,
  gclk_100m_clk_p,
  btn_rst,
  btn_mode,
  led
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gclk_100m CLK_N" *)
  (* X_INTERFACE_MODE = "slave gclk_100m" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gclk_100m, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input [0:0]gclk_100m_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gclk_100m CLK_P" *)
  input [0:0]gclk_100m_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BTN_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.BTN_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BTN_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input btn_rst;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn_mode;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]led;

  // stub module has no contents

endmodule
