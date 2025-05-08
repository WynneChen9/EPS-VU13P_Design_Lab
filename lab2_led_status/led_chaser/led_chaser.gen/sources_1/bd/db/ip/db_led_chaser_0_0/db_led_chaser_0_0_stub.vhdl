-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Mar 13 10:23:17 2025
-- Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wynnechen/project/EPS_VU13P/lab/lab2_led_status/led_chaser/led_chaser.gen/sources_1/bd/db/ip/db_led_chaser_0_0/db_led_chaser_0_0_stub.vhdl
-- Design      : db_led_chaser_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu13p-fhgb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity db_led_chaser_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    btn_rst : in STD_LOGIC;
    vio_rst : in STD_LOGIC;
    vio_ctrl_enable : in STD_LOGIC;
    vio_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_mode : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mode : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of db_led_chaser_0_0 : entity is "db_led_chaser_0_0,led_chaser,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of db_led_chaser_0_0 : entity is "db_led_chaser_0_0,led_chaser,{x_ipProduct=Vivado 2024.2_AR37126,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=led_chaser,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of db_led_chaser_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of db_led_chaser_0_0 : entity is "module_ref";
end db_led_chaser_0_0;

architecture stub of db_led_chaser_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,btn_rst,vio_rst,vio_ctrl_enable,vio_mode[1:0],btn_mode,led[3:0],mode[1:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN db_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of btn_rst : signal is "xilinx.com:signal:reset:1.0 btn_rst RST";
  attribute X_INTERFACE_MODE of btn_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of btn_rst : signal is "XIL_INTERFACENAME btn_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vio_rst : signal is "xilinx.com:signal:reset:1.0 vio_rst RST";
  attribute X_INTERFACE_MODE of vio_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vio_rst : signal is "XIL_INTERFACENAME vio_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "led_chaser,Vivado 2024.2_AR37126";
begin
end;
