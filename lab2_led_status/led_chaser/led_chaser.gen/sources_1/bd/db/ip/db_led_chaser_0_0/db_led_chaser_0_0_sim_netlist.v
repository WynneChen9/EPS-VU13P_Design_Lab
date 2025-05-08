// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Mar 13 10:23:17 2025
// Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/wynnechen/project/EPS_VU13P/lab/lab2_led_status/led_chaser/led_chaser.gen/sources_1/bd/db/ip/db_led_chaser_0_0/db_led_chaser_0_0_sim_netlist.v
// Design      : db_led_chaser_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu13p-fhgb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "db_led_chaser_0_0,led_chaser,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_chaser,Vivado 2024.2_AR37126" *) 
(* NotValidForBitStream *)
module db_led_chaser_0_0
   (clk,
    btn_rst,
    vio_rst,
    vio_ctrl_enable,
    vio_mode,
    btn_mode,
    led,
    mode);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN db_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 btn_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME btn_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input btn_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vio_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vio_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vio_rst;
  input vio_ctrl_enable;
  input [1:0]vio_mode;
  input btn_mode;
  output [3:0]led;
  output [1:0]mode;

  wire btn_mode;
  wire btn_rst;
  wire clk;
  wire [3:0]led;
  wire [1:0]mode;
  wire vio_ctrl_enable;
  wire [1:0]vio_mode;
  wire vio_rst;

  db_led_chaser_0_0_led_chaser inst
       (.Q(mode),
        .btn_mode(btn_mode),
        .btn_rst(btn_rst),
        .clk(clk),
        .led(led),
        .vio_ctrl_enable(vio_ctrl_enable),
        .vio_mode(vio_mode),
        .vio_rst(vio_rst));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module db_led_chaser_0_0_debounce
   (SR,
    btn_rst,
    clk,
    out);
  output [0:0]SR;
  input btn_rst;
  input clk;
  input out;

  wire [0:0]SR;
  wire btn_rst;
  wire btn_rst_n;
  wire btn_stable_i_1_n_0;
  wire btn_stable_i_2_n_0;
  wire btn_stable_i_3_n_0;
  wire btn_stable_i_4_n_0;
  wire btn_stable_i_5_n_0;
  wire btn_stable_i_6_n_0;
  wire btn_sync_1;
  wire btn_sync_2;
  wire btn_sync_3;
  wire clk;
  wire \counter[0]_i_2_n_0 ;
  wire [19:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_10 ;
  wire \counter_reg[0]_i_1_n_11 ;
  wire \counter_reg[0]_i_1_n_12 ;
  wire \counter_reg[0]_i_1_n_13 ;
  wire \counter_reg[0]_i_1_n_14 ;
  wire \counter_reg[0]_i_1_n_15 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[0]_i_1_n_8 ;
  wire \counter_reg[0]_i_1_n_9 ;
  wire \counter_reg[16]_i_1_n_12 ;
  wire \counter_reg[16]_i_1_n_13 ;
  wire \counter_reg[16]_i_1_n_14 ;
  wire \counter_reg[16]_i_1_n_15 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_10 ;
  wire \counter_reg[8]_i_1_n_11 ;
  wire \counter_reg[8]_i_1_n_12 ;
  wire \counter_reg[8]_i_1_n_13 ;
  wire \counter_reg[8]_i_1_n_14 ;
  wire \counter_reg[8]_i_1_n_15 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_8 ;
  wire \counter_reg[8]_i_1_n_9 ;
  wire out;
  wire [7:3]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    btn_stable_i_1
       (.I0(btn_stable_i_2_n_0),
        .I1(counter_reg[0]),
        .I2(btn_stable_i_3_n_0),
        .I3(btn_stable_i_4_n_0),
        .I4(btn_stable_i_5_n_0),
        .I5(btn_stable_i_6_n_0),
        .O(btn_stable_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    btn_stable_i_2
       (.I0(btn_sync_3),
        .I1(btn_rst_n),
        .O(btn_stable_i_2_n_0));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    btn_stable_i_3
       (.I0(counter_reg[11]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(btn_stable_i_2_n_0),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_stable_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF70FFF0FFF0FFF0)) 
    btn_stable_i_4
       (.I0(counter_reg[16]),
        .I1(counter_reg[19]),
        .I2(btn_rst_n),
        .I3(btn_sync_3),
        .I4(counter_reg[18]),
        .I5(counter_reg[17]),
        .O(btn_stable_i_4_n_0));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    btn_stable_i_5
       (.I0(counter_reg[6]),
        .I1(counter_reg[9]),
        .I2(counter_reg[10]),
        .I3(btn_stable_i_2_n_0),
        .I4(counter_reg[8]),
        .I5(counter_reg[7]),
        .O(btn_stable_i_5_n_0));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    btn_stable_i_6
       (.I0(counter_reg[1]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(btn_stable_i_2_n_0),
        .I4(counter_reg[3]),
        .I5(counter_reg[2]),
        .O(btn_stable_i_6_n_0));
  FDRE btn_stable_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_stable_i_1_n_0),
        .Q(btn_rst_n),
        .R(1'b0));
  FDRE btn_sync_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_rst),
        .Q(btn_sync_1),
        .R(1'b0));
  FDRE btn_sync_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_1),
        .Q(btn_sync_2),
        .R(1'b0));
  FDRE btn_sync_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_2),
        .Q(btn_sync_3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_15 ),
        .Q(counter_reg[0]),
        .R(btn_sync_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 ,\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_8 ,\counter_reg[0]_i_1_n_9 ,\counter_reg[0]_i_1_n_10 ,\counter_reg[0]_i_1_n_11 ,\counter_reg[0]_i_1_n_12 ,\counter_reg[0]_i_1_n_13 ,\counter_reg[0]_i_1_n_14 ,\counter_reg[0]_i_1_n_15 }),
        .S({counter_reg[7:1],\counter[0]_i_2_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_13 ),
        .Q(counter_reg[10]),
        .R(btn_sync_3));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_12 ),
        .Q(counter_reg[11]),
        .R(btn_sync_3));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_11 ),
        .Q(counter_reg[12]),
        .R(btn_sync_3));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_10 ),
        .Q(counter_reg[13]),
        .R(btn_sync_3));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_9 ),
        .Q(counter_reg[14]),
        .R(btn_sync_3));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[15]),
        .R(btn_sync_3));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_15 ),
        .Q(counter_reg[16]),
        .R(btn_sync_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[16]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [7:3],\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [7:4],\counter_reg[16]_i_1_n_12 ,\counter_reg[16]_i_1_n_13 ,\counter_reg[16]_i_1_n_14 ,\counter_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,counter_reg[19:16]}));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_14 ),
        .Q(counter_reg[17]),
        .R(btn_sync_3));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_13 ),
        .Q(counter_reg[18]),
        .R(btn_sync_3));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_12 ),
        .Q(counter_reg[19]),
        .R(btn_sync_3));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_14 ),
        .Q(counter_reg[1]),
        .R(btn_sync_3));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_13 ),
        .Q(counter_reg[2]),
        .R(btn_sync_3));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_12 ),
        .Q(counter_reg[3]),
        .R(btn_sync_3));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_11 ),
        .Q(counter_reg[4]),
        .R(btn_sync_3));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_10 ),
        .Q(counter_reg[5]),
        .R(btn_sync_3));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_9 ),
        .Q(counter_reg[6]),
        .R(btn_sync_3));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_8 ),
        .Q(counter_reg[7]),
        .R(btn_sync_3));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_15 ),
        .Q(counter_reg[8]),
        .R(btn_sync_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[8]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 ,\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_8 ,\counter_reg[8]_i_1_n_9 ,\counter_reg[8]_i_1_n_10 ,\counter_reg[8]_i_1_n_11 ,\counter_reg[8]_i_1_n_12 ,\counter_reg[8]_i_1_n_13 ,\counter_reg[8]_i_1_n_14 ,\counter_reg[8]_i_1_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_14 ),
        .Q(counter_reg[9]),
        .R(btn_sync_3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led[3]_i_1 
       (.I0(out),
        .I1(btn_rst_n),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module db_led_chaser_0_0_debounce_0
   (btn_mode_n,
    D,
    E,
    btn_mode,
    clk,
    vio_mode,
    btn_mode_n_d,
    vio_ctrl_enable,
    Q);
  output btn_mode_n;
  output [1:0]D;
  output [0:0]E;
  input btn_mode;
  input clk;
  input [1:0]vio_mode;
  input btn_mode_n_d;
  input vio_ctrl_enable;
  input [1:0]Q;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire btn_mode;
  wire btn_mode_n;
  wire btn_mode_n_d;
  wire btn_stable_i_1__0_n_0;
  wire btn_stable_i_2__0_n_0;
  wire btn_stable_i_3__0_n_0;
  wire btn_stable_i_4__0_n_0;
  wire btn_stable_i_5__0_n_0;
  wire btn_stable_i_6__0_n_0;
  wire btn_sync_1_reg_n_0;
  wire btn_sync_2_reg_n_0;
  wire btn_sync_3;
  wire clk;
  wire \counter[0]_i_2__0_n_0 ;
  wire [19:0]counter_reg;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_10 ;
  wire \counter_reg[0]_i_1__0_n_11 ;
  wire \counter_reg[0]_i_1__0_n_12 ;
  wire \counter_reg[0]_i_1__0_n_13 ;
  wire \counter_reg[0]_i_1__0_n_14 ;
  wire \counter_reg[0]_i_1__0_n_15 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[0]_i_1__0_n_8 ;
  wire \counter_reg[0]_i_1__0_n_9 ;
  wire \counter_reg[16]_i_1__0_n_12 ;
  wire \counter_reg[16]_i_1__0_n_13 ;
  wire \counter_reg[16]_i_1__0_n_14 ;
  wire \counter_reg[16]_i_1__0_n_15 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_10 ;
  wire \counter_reg[8]_i_1__0_n_11 ;
  wire \counter_reg[8]_i_1__0_n_12 ;
  wire \counter_reg[8]_i_1__0_n_13 ;
  wire \counter_reg[8]_i_1__0_n_14 ;
  wire \counter_reg[8]_i_1__0_n_15 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_8 ;
  wire \counter_reg[8]_i_1__0_n_9 ;
  wire vio_ctrl_enable;
  wire [1:0]vio_mode;
  wire [7:3]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [7:4]\NLW_counter_reg[16]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    btn_stable_i_1__0
       (.I0(btn_stable_i_2__0_n_0),
        .I1(counter_reg[0]),
        .I2(btn_stable_i_3__0_n_0),
        .I3(btn_stable_i_4__0_n_0),
        .I4(btn_stable_i_5__0_n_0),
        .I5(btn_stable_i_6__0_n_0),
        .O(btn_stable_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    btn_stable_i_2__0
       (.I0(btn_sync_3),
        .I1(btn_mode_n),
        .O(btn_stable_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    btn_stable_i_3__0
       (.I0(counter_reg[11]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(btn_stable_i_2__0_n_0),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_stable_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFF70FFF0FFF0FFF0)) 
    btn_stable_i_4__0
       (.I0(counter_reg[16]),
        .I1(counter_reg[19]),
        .I2(btn_mode_n),
        .I3(btn_sync_3),
        .I4(counter_reg[18]),
        .I5(counter_reg[17]),
        .O(btn_stable_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    btn_stable_i_5__0
       (.I0(counter_reg[6]),
        .I1(counter_reg[9]),
        .I2(counter_reg[10]),
        .I3(btn_stable_i_2__0_n_0),
        .I4(counter_reg[8]),
        .I5(counter_reg[7]),
        .O(btn_stable_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    btn_stable_i_6__0
       (.I0(counter_reg[1]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(btn_stable_i_2__0_n_0),
        .I4(counter_reg[3]),
        .I5(counter_reg[2]),
        .O(btn_stable_i_6__0_n_0));
  FDRE btn_stable_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_stable_i_1__0_n_0),
        .Q(btn_mode_n),
        .R(1'b0));
  FDRE btn_sync_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_mode),
        .Q(btn_sync_1_reg_n_0),
        .R(1'b0));
  FDRE btn_sync_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_1_reg_n_0),
        .Q(btn_sync_2_reg_n_0),
        .R(1'b0));
  FDRE btn_sync_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_2_reg_n_0),
        .Q(btn_sync_3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2__0_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_15 ),
        .Q(counter_reg[0]),
        .R(btn_sync_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 ,\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1__0_n_8 ,\counter_reg[0]_i_1__0_n_9 ,\counter_reg[0]_i_1__0_n_10 ,\counter_reg[0]_i_1__0_n_11 ,\counter_reg[0]_i_1__0_n_12 ,\counter_reg[0]_i_1__0_n_13 ,\counter_reg[0]_i_1__0_n_14 ,\counter_reg[0]_i_1__0_n_15 }),
        .S({counter_reg[7:1],\counter[0]_i_2__0_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_13 ),
        .Q(counter_reg[10]),
        .R(btn_sync_3));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_12 ),
        .Q(counter_reg[11]),
        .R(btn_sync_3));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_11 ),
        .Q(counter_reg[12]),
        .R(btn_sync_3));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_10 ),
        .Q(counter_reg[13]),
        .R(btn_sync_3));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_9 ),
        .Q(counter_reg[14]),
        .R(btn_sync_3));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_8 ),
        .Q(counter_reg[15]),
        .R(btn_sync_3));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_15 ),
        .Q(counter_reg[16]),
        .R(btn_sync_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [7:3],\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1__0_O_UNCONNECTED [7:4],\counter_reg[16]_i_1__0_n_12 ,\counter_reg[16]_i_1__0_n_13 ,\counter_reg[16]_i_1__0_n_14 ,\counter_reg[16]_i_1__0_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,counter_reg[19:16]}));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_14 ),
        .Q(counter_reg[17]),
        .R(btn_sync_3));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_13 ),
        .Q(counter_reg[18]),
        .R(btn_sync_3));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_12 ),
        .Q(counter_reg[19]),
        .R(btn_sync_3));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_14 ),
        .Q(counter_reg[1]),
        .R(btn_sync_3));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_13 ),
        .Q(counter_reg[2]),
        .R(btn_sync_3));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_12 ),
        .Q(counter_reg[3]),
        .R(btn_sync_3));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_11 ),
        .Q(counter_reg[4]),
        .R(btn_sync_3));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_10 ),
        .Q(counter_reg[5]),
        .R(btn_sync_3));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_9 ),
        .Q(counter_reg[6]),
        .R(btn_sync_3));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_8 ),
        .Q(counter_reg[7]),
        .R(btn_sync_3));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_15 ),
        .Q(counter_reg[8]),
        .R(btn_sync_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 ,\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_8 ,\counter_reg[8]_i_1__0_n_9 ,\counter_reg[8]_i_1__0_n_10 ,\counter_reg[8]_i_1__0_n_11 ,\counter_reg[8]_i_1__0_n_12 ,\counter_reg[8]_i_1__0_n_13 ,\counter_reg[8]_i_1__0_n_14 ,\counter_reg[8]_i_1__0_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_14 ),
        .Q(counter_reg[9]),
        .R(btn_sync_3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA2AAAE)) 
    \mode[0]_i_1 
       (.I0(vio_mode[0]),
        .I1(btn_mode_n_d),
        .I2(btn_mode_n),
        .I3(vio_ctrl_enable),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \mode[1]_i_1 
       (.I0(vio_ctrl_enable),
        .I1(btn_mode_n_d),
        .I2(btn_mode_n),
        .O(E));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F066F0)) 
    \mode[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(vio_mode[1]),
        .I3(btn_mode_n_d),
        .I4(btn_mode_n),
        .I5(vio_ctrl_enable),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "led_chaser" *) 
module db_led_chaser_0_0_led_chaser
   (Q,
    led,
    btn_rst,
    clk,
    btn_mode,
    vio_rst,
    vio_mode,
    vio_ctrl_enable);
  output [1:0]Q;
  output [3:0]led;
  input btn_rst;
  input clk;
  input btn_mode;
  input vio_rst;
  input [1:0]vio_mode;
  input vio_ctrl_enable;

  wire [1:0]Q;
  wire btn_mode;
  wire btn_mode_n;
  wire btn_mode_n_d;
  wire btn_rst;
  wire clk;
  wire [25:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[25]_i_2_n_0 ;
  wire \counter[25]_i_3_n_0 ;
  wire \counter[25]_i_4_n_0 ;
  wire [25:1]data0;
  wire debounce_mode_inst_n_1;
  wire debounce_mode_inst_n_2;
  wire debounce_mode_inst_n_3;
  wire [3:0]led;
  wire [0:0]led0;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_2_n_0 ;
  wire [3:2]mode4;
  wire \mode4[3]_i_1_n_0 ;
  wire \mode4[3]_i_2_n_0 ;
  wire \mode4[3]_i_3_n_0 ;
  wire \mode4[3]_i_4_n_0 ;
  wire \mode4[3]_i_5_n_0 ;
  wire \mode4[3]_i_6_n_0 ;
  wire \mode4[3]_i_7_n_0 ;
  wire \mode4[3]_i_8_n_0 ;
  wire mode4_cnt;
  wire mode4_cnt_i_1_n_0;
  wire [25:0]p_0_in;
  wire [3:1]p_0_in__0;
  wire \pattern[3]_i_1_n_0 ;
  wire \pattern[3]_i_3_n_0 ;
  wire \pattern[3]_i_4_n_0 ;
  wire \pattern[3]_i_5_n_0 ;
  wire \pattern[3]_i_6_n_0 ;
  wire \pattern[3]_i_7_n_0 ;
  wire [3:0]pattern_reg;
  wire rst_sync;
  wire vio_ctrl_enable;
  wire [1:0]vio_mode;
  wire vio_rst;
  (* DONT_TOUCH *) wire vio_rst_d0;
  (* DONT_TOUCH *) wire vio_rst_d1;
  (* DONT_TOUCH *) wire vio_rst_sync;
  wire [7:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [7:1]NLW_counter0_carry__2_O_UNCONNECTED;

  FDSE btn_mode_n_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_mode_n),
        .Q(btn_mode_n_d),
        .S(rst_sync));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry
       (.CI(counter[0]),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(counter[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(counter[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3,counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:17]),
        .S(counter[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO(NLW_counter0_carry__2_CO_UNCONNECTED[7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__2_O_UNCONNECTED[7:1],data0[25]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter[25]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[13]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[14]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[15]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[16]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[16]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[17]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[18]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[18]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[19]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[19]),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[20]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[20]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[21]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[21]),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[22]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[22]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[23]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[23]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[24]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[24]),
        .O(p_0_in[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[25]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[25]_i_2 
       (.I0(\counter[25]_i_3_n_0 ),
        .I1(\counter[25]_i_4_n_0 ),
        .I2(\mode4[3]_i_6_n_0 ),
        .I3(\mode4[3]_i_5_n_0 ),
        .I4(\mode4[3]_i_4_n_0 ),
        .I5(\mode4[3]_i_3_n_0 ),
        .O(\counter[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBDFFF)) 
    \counter[25]_i_3 
       (.I0(counter[17]),
        .I1(counter[16]),
        .I2(counter[6]),
        .I3(counter[23]),
        .I4(counter[18]),
        .O(\counter[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7EFFFFFFF)) 
    \counter[25]_i_4 
       (.I0(Q[1]),
        .I1(counter[24]),
        .I2(counter[25]),
        .I3(counter[6]),
        .I4(counter[15]),
        .I5(counter[11]),
        .O(\counter[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1 
       (.I0(\counter[25]_i_2_n_0 ),
        .I1(data0[9]),
        .O(p_0_in[9]));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(counter[0]),
        .R(rst_sync));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(counter[10]),
        .R(rst_sync));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(counter[11]),
        .R(rst_sync));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(counter[12]),
        .R(rst_sync));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(counter[13]),
        .R(rst_sync));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(counter[14]),
        .R(rst_sync));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(counter[15]),
        .R(rst_sync));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(counter[16]),
        .R(rst_sync));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(counter[17]),
        .R(rst_sync));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(counter[18]),
        .R(rst_sync));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(counter[19]),
        .R(rst_sync));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(counter[1]),
        .R(rst_sync));
  FDRE \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(counter[20]),
        .R(rst_sync));
  FDRE \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(counter[21]),
        .R(rst_sync));
  FDRE \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(counter[22]),
        .R(rst_sync));
  FDRE \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(counter[23]),
        .R(rst_sync));
  FDRE \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(counter[24]),
        .R(rst_sync));
  FDRE \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(counter[25]),
        .R(rst_sync));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(counter[2]),
        .R(rst_sync));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(counter[3]),
        .R(rst_sync));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(counter[4]),
        .R(rst_sync));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(counter[5]),
        .R(rst_sync));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(counter[6]),
        .R(rst_sync));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(counter[7]),
        .R(rst_sync));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(counter[8]),
        .R(rst_sync));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(counter[9]),
        .R(rst_sync));
  db_led_chaser_0_0_debounce debounce_inst
       (.SR(rst_sync),
        .btn_rst(btn_rst),
        .clk(clk),
        .out(vio_rst_sync));
  db_led_chaser_0_0_debounce_0 debounce_mode_inst
       (.D({debounce_mode_inst_n_1,debounce_mode_inst_n_2}),
        .E(debounce_mode_inst_n_3),
        .Q(Q),
        .btn_mode(btn_mode),
        .btn_mode_n(btn_mode_n),
        .btn_mode_n_d(btn_mode_n_d),
        .clk(clk),
        .vio_ctrl_enable(vio_ctrl_enable),
        .vio_mode(vio_mode));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8FB0)) 
    \led[0]_i_1 
       (.I0(mode4[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(pattern_reg[0]),
        .O(\led[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8FD0)) 
    \led[1]_i_1 
       (.I0(Q[1]),
        .I1(mode4[3]),
        .I2(Q[0]),
        .I3(pattern_reg[1]),
        .O(\led[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8FB0)) 
    \led[2]_i_1 
       (.I0(mode4[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(pattern_reg[2]),
        .O(\led[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE626)) 
    \led[3]_i_2 
       (.I0(pattern_reg[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(mode4[3]),
        .O(\led[3]_i_2_n_0 ));
  FDRE \led_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(rst_sync));
  FDRE \led_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(rst_sync));
  FDRE \led_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(rst_sync));
  FDRE \led_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[3]_i_2_n_0 ),
        .Q(led[3]),
        .R(rst_sync));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \mode4[3]_i_1 
       (.I0(\mode4[3]_i_3_n_0 ),
        .I1(\mode4[3]_i_4_n_0 ),
        .I2(\mode4[3]_i_5_n_0 ),
        .I3(\mode4[3]_i_6_n_0 ),
        .I4(\mode4[3]_i_7_n_0 ),
        .I5(\mode4[3]_i_8_n_0 ),
        .O(\mode4[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mode4[3]_i_2 
       (.I0(mode4_cnt),
        .O(\mode4[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \mode4[3]_i_3 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[5]),
        .I3(counter[7]),
        .O(\mode4[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mode4[3]_i_4 
       (.I0(counter[0]),
        .I1(counter[21]),
        .I2(counter[22]),
        .I3(counter[2]),
        .I4(counter[1]),
        .O(\mode4[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mode4[3]_i_5 
       (.I0(counter[14]),
        .I1(counter[13]),
        .I2(counter[20]),
        .I3(counter[19]),
        .O(\mode4[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \mode4[3]_i_6 
       (.I0(counter[9]),
        .I1(counter[8]),
        .I2(counter[12]),
        .I3(counter[10]),
        .O(\mode4[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \mode4[3]_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter[6]),
        .I3(counter[15]),
        .I4(counter[11]),
        .O(\mode4[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mode4[3]_i_8 
       (.I0(counter[18]),
        .I1(counter[23]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(counter[25]),
        .I5(counter[24]),
        .O(\mode4[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    mode4_cnt_i_1
       (.I0(\mode4[3]_i_1_n_0 ),
        .I1(mode4_cnt),
        .O(mode4_cnt_i_1_n_0));
  FDRE mode4_cnt_reg
       (.C(clk),
        .CE(1'b1),
        .D(mode4_cnt_i_1_n_0),
        .Q(mode4_cnt),
        .R(rst_sync));
  FDRE \mode4_reg[2] 
       (.C(clk),
        .CE(\mode4[3]_i_1_n_0 ),
        .D(mode4_cnt),
        .Q(mode4[2]),
        .R(rst_sync));
  FDRE \mode4_reg[3] 
       (.C(clk),
        .CE(\mode4[3]_i_1_n_0 ),
        .D(\mode4[3]_i_2_n_0 ),
        .Q(mode4[3]),
        .R(rst_sync));
  FDRE \mode_reg[0] 
       (.C(clk),
        .CE(debounce_mode_inst_n_3),
        .D(debounce_mode_inst_n_2),
        .Q(Q[0]),
        .R(rst_sync));
  FDRE \mode_reg[1] 
       (.C(clk),
        .CE(debounce_mode_inst_n_3),
        .D(debounce_mode_inst_n_1),
        .Q(Q[1]),
        .R(rst_sync));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pattern[0]_i_1 
       (.I0(pattern_reg[0]),
        .O(led0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pattern[1]_i_1 
       (.I0(pattern_reg[0]),
        .I1(pattern_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pattern[2]_i_1 
       (.I0(pattern_reg[1]),
        .I1(pattern_reg[0]),
        .I2(pattern_reg[2]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h0F08)) 
    \pattern[3]_i_1 
       (.I0(\pattern[3]_i_3_n_0 ),
        .I1(\pattern[3]_i_4_n_0 ),
        .I2(\pattern[3]_i_5_n_0 ),
        .I3(\pattern[3]_i_6_n_0 ),
        .O(\pattern[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pattern[3]_i_2 
       (.I0(pattern_reg[2]),
        .I1(pattern_reg[0]),
        .I2(pattern_reg[1]),
        .I3(pattern_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \pattern[3]_i_3 
       (.I0(counter[18]),
        .I1(counter[23]),
        .I2(Q[0]),
        .I3(counter[17]),
        .I4(counter[25]),
        .I5(counter[24]),
        .O(\pattern[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \pattern[3]_i_4 
       (.I0(Q[1]),
        .I1(counter[11]),
        .I2(counter[6]),
        .I3(counter[15]),
        .I4(counter[16]),
        .O(\pattern[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pattern[3]_i_5 
       (.I0(\mode4[3]_i_3_n_0 ),
        .I1(\mode4[3]_i_4_n_0 ),
        .I2(\mode4[3]_i_5_n_0 ),
        .I3(\mode4[3]_i_6_n_0 ),
        .O(\pattern[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \pattern[3]_i_6 
       (.I0(counter[15]),
        .I1(counter[11]),
        .I2(counter[6]),
        .I3(Q[1]),
        .I4(\pattern[3]_i_7_n_0 ),
        .O(\pattern[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \pattern[3]_i_7 
       (.I0(counter[23]),
        .I1(counter[18]),
        .I2(counter[17]),
        .I3(counter[16]),
        .I4(counter[24]),
        .I5(counter[25]),
        .O(\pattern[3]_i_7_n_0 ));
  FDRE \pattern_reg[0] 
       (.C(clk),
        .CE(\pattern[3]_i_1_n_0 ),
        .D(led0),
        .Q(pattern_reg[0]),
        .R(rst_sync));
  FDRE \pattern_reg[1] 
       (.C(clk),
        .CE(\pattern[3]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(pattern_reg[1]),
        .R(rst_sync));
  FDRE \pattern_reg[2] 
       (.C(clk),
        .CE(\pattern[3]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(pattern_reg[2]),
        .R(rst_sync));
  FDRE \pattern_reg[3] 
       (.C(clk),
        .CE(\pattern[3]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(pattern_reg[3]),
        .R(rst_sync));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    vio_rst_d0_reg
       (.C(clk),
        .CE(1'b1),
        .D(vio_rst),
        .Q(vio_rst_d0),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    vio_rst_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(vio_rst_d0),
        .Q(vio_rst_d1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    vio_rst_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(vio_rst_d1),
        .Q(vio_rst_sync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
