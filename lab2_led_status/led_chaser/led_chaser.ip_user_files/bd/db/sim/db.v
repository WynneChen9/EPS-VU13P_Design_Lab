//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Mar 10 14:52:23 2025
//Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target db.bd
//Design      : db
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "db,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=db,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "db.hwdef" *) 
module db
   (btn_mode,
    btn_rst,
    gclk_100m_clk_n,
    gclk_100m_clk_p,
    led);
  input btn_mode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BTN_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BTN_RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input btn_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gclk_100m CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gclk_100m, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]gclk_100m_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gclk_100m CLK_P" *) input [0:0]gclk_100m_clk_p;
  output [7:0]led;

  wire btn_mode;
  wire btn_rst;
  wire [0:0]gclk_100m_clk_n;
  wire [0:0]gclk_100m_clk_p;
  wire [7:0]led_chaser_0_led;
  wire [2:0]led_chaser_0_mode;
  wire [11:0]led_chaser_0_pwm_counter;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]util_ds_buf_1_BUFG_O;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
  wire [2:0]vio_0_probe_out2;

  assign led[7:0] = led_chaser_0_led;
  db_led_chaser_0_0 led_chaser_0
       (.btn_mode(btn_mode),
        .btn_rst(btn_rst),
        .clk(util_ds_buf_1_BUFG_O),
        .led(led_chaser_0_led),
        .mode(led_chaser_0_mode),
        .pwm_counter(led_chaser_0_pwm_counter),
        .vio_ctrl_enable(vio_0_probe_out1),
        .vio_mode(vio_0_probe_out2),
        .vio_rst(vio_0_probe_out0));
  db_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(gclk_100m_clk_n),
        .IBUF_DS_P(gclk_100m_clk_p),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  db_util_ds_buf_0_1 util_ds_buf_1
       (.BUFG_I(util_ds_buf_0_IBUF_OUT),
        .BUFG_O(util_ds_buf_1_BUFG_O));
  db_vio_0_0 vio_0
       (.clk(util_ds_buf_1_BUFG_O),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
  db_vio_0_1 vio_1
       (.clk(util_ds_buf_1_BUFG_O),
        .probe_in0(led_chaser_0_mode),
        .probe_in1(led_chaser_0_led),
        .probe_in2(led_chaser_0_pwm_counter[7:0]));
endmodule
