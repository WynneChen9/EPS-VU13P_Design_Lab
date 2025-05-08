// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Mar 13 10:23:17 2025
// Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wynnechen/project/EPS_VU13P/lab/lab2_led_status/led_chaser/led_chaser.gen/sources_1/bd/db/ip/db_led_chaser_0_0/db_led_chaser_0_0_stub.v
// Design      : db_led_chaser_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu13p-fhgb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "db_led_chaser_0_0,led_chaser,{}" *) (* CORE_GENERATION_INFO = "db_led_chaser_0_0,led_chaser,{x_ipProduct=Vivado 2024.2_AR37126,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=led_chaser,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "led_chaser,Vivado 2024.2_AR37126" *) 
module db_led_chaser_0_0(clk, btn_rst, vio_rst, vio_ctrl_enable, vio_mode, 
  btn_mode, led, mode)
/* synthesis syn_black_box black_box_pad_pin="btn_rst,vio_rst,vio_ctrl_enable,vio_mode[1:0],btn_mode,led[3:0],mode[1:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN db_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 btn_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME btn_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input btn_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vio_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vio_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vio_rst;
  input vio_ctrl_enable;
  input [1:0]vio_mode;
  input btn_mode;
  output [3:0]led;
  output [1:0]mode;
endmodule
