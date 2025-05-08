-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2_AR37126 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Mar 13 10:23:18 2025
-- Host        : WC-DemoNB running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/wynnechen/project/EPS_VU13P/lab/lab2_led_status/led_chaser/led_chaser.gen/sources_1/bd/db/ip/db_led_chaser_0_0/db_led_chaser_0_0_sim_netlist.vhdl
-- Design      : db_led_chaser_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu13p-fhgb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity db_led_chaser_0_0_debounce is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of db_led_chaser_0_0_debounce : entity is "debounce";
end db_led_chaser_0_0_debounce;

architecture STRUCTURE of db_led_chaser_0_0_debounce is
  signal btn_rst_n : STD_LOGIC;
  signal btn_stable_i_1_n_0 : STD_LOGIC;
  signal btn_stable_i_2_n_0 : STD_LOGIC;
  signal btn_stable_i_3_n_0 : STD_LOGIC;
  signal btn_stable_i_4_n_0 : STD_LOGIC;
  signal btn_stable_i_5_n_0 : STD_LOGIC;
  signal btn_stable_i_6_n_0 : STD_LOGIC;
  signal btn_sync_1 : STD_LOGIC;
  signal btn_sync_2 : STD_LOGIC;
  signal btn_sync_3 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of btn_stable_i_2 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \led[3]_i_1\ : label is "soft_lutpair0";
begin
btn_stable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => btn_stable_i_2_n_0,
      I1 => counter_reg(0),
      I2 => btn_stable_i_3_n_0,
      I3 => btn_stable_i_4_n_0,
      I4 => btn_stable_i_5_n_0,
      I5 => btn_stable_i_6_n_0,
      O => btn_stable_i_1_n_0
    );
btn_stable_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => btn_sync_3,
      I1 => btn_rst_n,
      O => btn_stable_i_2_n_0
    );
btn_stable_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(14),
      I2 => counter_reg(15),
      I3 => btn_stable_i_2_n_0,
      I4 => counter_reg(13),
      I5 => counter_reg(12),
      O => btn_stable_i_3_n_0
    );
btn_stable_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70FFF0FFF0FFF0"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(19),
      I2 => btn_rst_n,
      I3 => btn_sync_3,
      I4 => counter_reg(18),
      I5 => counter_reg(17),
      O => btn_stable_i_4_n_0
    );
btn_stable_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(9),
      I2 => counter_reg(10),
      I3 => btn_stable_i_2_n_0,
      I4 => counter_reg(8),
      I5 => counter_reg(7),
      O => btn_stable_i_5_n_0
    );
btn_stable_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(4),
      I2 => counter_reg(5),
      I3 => btn_stable_i_2_n_0,
      I4 => counter_reg(3),
      I5 => counter_reg(2),
      O => btn_stable_i_6_n_0
    );
btn_stable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_stable_i_1_n_0,
      Q => btn_rst_n,
      R => '0'
    );
btn_sync_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_rst,
      Q => btn_sync_1,
      R => '0'
    );
btn_sync_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_1,
      Q => btn_sync_2,
      R => '0'
    );
btn_sync_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_2,
      Q => btn_sync_3,
      R => '0'
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_15\,
      Q => counter_reg(0),
      R => btn_sync_3
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1_n_0\,
      CO(6) => \counter_reg[0]_i_1_n_1\,
      CO(5) => \counter_reg[0]_i_1_n_2\,
      CO(4) => \counter_reg[0]_i_1_n_3\,
      CO(3) => \counter_reg[0]_i_1_n_4\,
      CO(2) => \counter_reg[0]_i_1_n_5\,
      CO(1) => \counter_reg[0]_i_1_n_6\,
      CO(0) => \counter_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \counter_reg[0]_i_1_n_8\,
      O(6) => \counter_reg[0]_i_1_n_9\,
      O(5) => \counter_reg[0]_i_1_n_10\,
      O(4) => \counter_reg[0]_i_1_n_11\,
      O(3) => \counter_reg[0]_i_1_n_12\,
      O(2) => \counter_reg[0]_i_1_n_13\,
      O(1) => \counter_reg[0]_i_1_n_14\,
      O(0) => \counter_reg[0]_i_1_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_13\,
      Q => counter_reg(10),
      R => btn_sync_3
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_12\,
      Q => counter_reg(11),
      R => btn_sync_3
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_11\,
      Q => counter_reg(12),
      R => btn_sync_3
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_10\,
      Q => counter_reg(13),
      R => btn_sync_3
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_9\,
      Q => counter_reg(14),
      R => btn_sync_3
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_8\,
      Q => counter_reg(15),
      R => btn_sync_3
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_15\,
      Q => counter_reg(16),
      R => btn_sync_3
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \counter_reg[16]_i_1_n_5\,
      CO(1) => \counter_reg[16]_i_1_n_6\,
      CO(0) => \counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_counter_reg[16]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \counter_reg[16]_i_1_n_12\,
      O(2) => \counter_reg[16]_i_1_n_13\,
      O(1) => \counter_reg[16]_i_1_n_14\,
      O(0) => \counter_reg[16]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_14\,
      Q => counter_reg(17),
      R => btn_sync_3
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_13\,
      Q => counter_reg(18),
      R => btn_sync_3
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_12\,
      Q => counter_reg(19),
      R => btn_sync_3
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_14\,
      Q => counter_reg(1),
      R => btn_sync_3
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_13\,
      Q => counter_reg(2),
      R => btn_sync_3
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_12\,
      Q => counter_reg(3),
      R => btn_sync_3
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_11\,
      Q => counter_reg(4),
      R => btn_sync_3
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_10\,
      Q => counter_reg(5),
      R => btn_sync_3
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_9\,
      Q => counter_reg(6),
      R => btn_sync_3
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_8\,
      Q => counter_reg(7),
      R => btn_sync_3
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_15\,
      Q => counter_reg(8),
      R => btn_sync_3
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1_n_0\,
      CO(6) => \counter_reg[8]_i_1_n_1\,
      CO(5) => \counter_reg[8]_i_1_n_2\,
      CO(4) => \counter_reg[8]_i_1_n_3\,
      CO(3) => \counter_reg[8]_i_1_n_4\,
      CO(2) => \counter_reg[8]_i_1_n_5\,
      CO(1) => \counter_reg[8]_i_1_n_6\,
      CO(0) => \counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1_n_8\,
      O(6) => \counter_reg[8]_i_1_n_9\,
      O(5) => \counter_reg[8]_i_1_n_10\,
      O(4) => \counter_reg[8]_i_1_n_11\,
      O(3) => \counter_reg[8]_i_1_n_12\,
      O(2) => \counter_reg[8]_i_1_n_13\,
      O(1) => \counter_reg[8]_i_1_n_14\,
      O(0) => \counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_14\,
      Q => counter_reg(9),
      R => btn_sync_3
    );
\led[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \out\,
      I1 => btn_rst_n,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity db_led_chaser_0_0_debounce_0 is
  port (
    btn_mode_n : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_mode : in STD_LOGIC;
    clk : in STD_LOGIC;
    vio_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_mode_n_d : in STD_LOGIC;
    vio_ctrl_enable : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of db_led_chaser_0_0_debounce_0 : entity is "debounce";
end db_led_chaser_0_0_debounce_0;

architecture STRUCTURE of db_led_chaser_0_0_debounce_0 is
  signal \^btn_mode_n\ : STD_LOGIC;
  signal \btn_stable_i_1__0_n_0\ : STD_LOGIC;
  signal \btn_stable_i_2__0_n_0\ : STD_LOGIC;
  signal \btn_stable_i_3__0_n_0\ : STD_LOGIC;
  signal \btn_stable_i_4__0_n_0\ : STD_LOGIC;
  signal \btn_stable_i_5__0_n_0\ : STD_LOGIC;
  signal \btn_stable_i_6__0_n_0\ : STD_LOGIC;
  signal btn_sync_1_reg_n_0 : STD_LOGIC;
  signal btn_sync_2_reg_n_0 : STD_LOGIC;
  signal btn_sync_3 : STD_LOGIC;
  signal \counter[0]_i_2__0_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1__0\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mode[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mode[1]_i_1\ : label is "soft_lutpair1";
begin
  btn_mode_n <= \^btn_mode_n\;
\btn_stable_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \btn_stable_i_2__0_n_0\,
      I1 => counter_reg(0),
      I2 => \btn_stable_i_3__0_n_0\,
      I3 => \btn_stable_i_4__0_n_0\,
      I4 => \btn_stable_i_5__0_n_0\,
      I5 => \btn_stable_i_6__0_n_0\,
      O => \btn_stable_i_1__0_n_0\
    );
\btn_stable_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => btn_sync_3,
      I1 => \^btn_mode_n\,
      O => \btn_stable_i_2__0_n_0\
    );
\btn_stable_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(14),
      I2 => counter_reg(15),
      I3 => \btn_stable_i_2__0_n_0\,
      I4 => counter_reg(13),
      I5 => counter_reg(12),
      O => \btn_stable_i_3__0_n_0\
    );
\btn_stable_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70FFF0FFF0FFF0"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(19),
      I2 => \^btn_mode_n\,
      I3 => btn_sync_3,
      I4 => counter_reg(18),
      I5 => counter_reg(17),
      O => \btn_stable_i_4__0_n_0\
    );
\btn_stable_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(9),
      I2 => counter_reg(10),
      I3 => \btn_stable_i_2__0_n_0\,
      I4 => counter_reg(8),
      I5 => counter_reg(7),
      O => \btn_stable_i_5__0_n_0\
    );
\btn_stable_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(4),
      I2 => counter_reg(5),
      I3 => \btn_stable_i_2__0_n_0\,
      I4 => counter_reg(3),
      I5 => counter_reg(2),
      O => \btn_stable_i_6__0_n_0\
    );
btn_stable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \btn_stable_i_1__0_n_0\,
      Q => \^btn_mode_n\,
      R => '0'
    );
btn_sync_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_mode,
      Q => btn_sync_1_reg_n_0,
      R => '0'
    );
btn_sync_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_1_reg_n_0,
      Q => btn_sync_2_reg_n_0,
      R => '0'
    );
btn_sync_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_2_reg_n_0,
      Q => btn_sync_3,
      R => '0'
    );
\counter[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_15\,
      Q => counter_reg(0),
      R => btn_sync_3
    );
\counter_reg[0]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__0_n_0\,
      CO(6) => \counter_reg[0]_i_1__0_n_1\,
      CO(5) => \counter_reg[0]_i_1__0_n_2\,
      CO(4) => \counter_reg[0]_i_1__0_n_3\,
      CO(3) => \counter_reg[0]_i_1__0_n_4\,
      CO(2) => \counter_reg[0]_i_1__0_n_5\,
      CO(1) => \counter_reg[0]_i_1__0_n_6\,
      CO(0) => \counter_reg[0]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \counter_reg[0]_i_1__0_n_8\,
      O(6) => \counter_reg[0]_i_1__0_n_9\,
      O(5) => \counter_reg[0]_i_1__0_n_10\,
      O(4) => \counter_reg[0]_i_1__0_n_11\,
      O(3) => \counter_reg[0]_i_1__0_n_12\,
      O(2) => \counter_reg[0]_i_1__0_n_13\,
      O(1) => \counter_reg[0]_i_1__0_n_14\,
      O(0) => \counter_reg[0]_i_1__0_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => \counter[0]_i_2__0_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_13\,
      Q => counter_reg(10),
      R => btn_sync_3
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_12\,
      Q => counter_reg(11),
      R => btn_sync_3
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_11\,
      Q => counter_reg(12),
      R => btn_sync_3
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_10\,
      Q => counter_reg(13),
      R => btn_sync_3
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_9\,
      Q => counter_reg(14),
      R => btn_sync_3
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_8\,
      Q => counter_reg(15),
      R => btn_sync_3
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_15\,
      Q => counter_reg(16),
      R => btn_sync_3
    );
\counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \counter_reg[16]_i_1__0_n_5\,
      CO(1) => \counter_reg[16]_i_1__0_n_6\,
      CO(0) => \counter_reg[16]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_counter_reg[16]_i_1__0_O_UNCONNECTED\(7 downto 4),
      O(3) => \counter_reg[16]_i_1__0_n_12\,
      O(2) => \counter_reg[16]_i_1__0_n_13\,
      O(1) => \counter_reg[16]_i_1__0_n_14\,
      O(0) => \counter_reg[16]_i_1__0_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_14\,
      Q => counter_reg(17),
      R => btn_sync_3
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_13\,
      Q => counter_reg(18),
      R => btn_sync_3
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_12\,
      Q => counter_reg(19),
      R => btn_sync_3
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_14\,
      Q => counter_reg(1),
      R => btn_sync_3
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_13\,
      Q => counter_reg(2),
      R => btn_sync_3
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_12\,
      Q => counter_reg(3),
      R => btn_sync_3
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_11\,
      Q => counter_reg(4),
      R => btn_sync_3
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_10\,
      Q => counter_reg(5),
      R => btn_sync_3
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_9\,
      Q => counter_reg(6),
      R => btn_sync_3
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_8\,
      Q => counter_reg(7),
      R => btn_sync_3
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_15\,
      Q => counter_reg(8),
      R => btn_sync_3
    );
\counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__0_n_0\,
      CO(6) => \counter_reg[8]_i_1__0_n_1\,
      CO(5) => \counter_reg[8]_i_1__0_n_2\,
      CO(4) => \counter_reg[8]_i_1__0_n_3\,
      CO(3) => \counter_reg[8]_i_1__0_n_4\,
      CO(2) => \counter_reg[8]_i_1__0_n_5\,
      CO(1) => \counter_reg[8]_i_1__0_n_6\,
      CO(0) => \counter_reg[8]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__0_n_8\,
      O(6) => \counter_reg[8]_i_1__0_n_9\,
      O(5) => \counter_reg[8]_i_1__0_n_10\,
      O(4) => \counter_reg[8]_i_1__0_n_11\,
      O(3) => \counter_reg[8]_i_1__0_n_12\,
      O(2) => \counter_reg[8]_i_1__0_n_13\,
      O(1) => \counter_reg[8]_i_1__0_n_14\,
      O(0) => \counter_reg[8]_i_1__0_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_14\,
      Q => counter_reg(9),
      R => btn_sync_3
    );
\mode[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2AAAE"
    )
        port map (
      I0 => vio_mode(0),
      I1 => btn_mode_n_d,
      I2 => \^btn_mode_n\,
      I3 => vio_ctrl_enable,
      I4 => Q(0),
      O => D(0)
    );
\mode[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => vio_ctrl_enable,
      I1 => btn_mode_n_d,
      I2 => \^btn_mode_n\,
      O => E(0)
    );
\mode[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F066F0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => vio_mode(1),
      I3 => btn_mode_n_d,
      I4 => \^btn_mode_n\,
      I5 => vio_ctrl_enable,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity db_led_chaser_0_0_led_chaser is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn_rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    btn_mode : in STD_LOGIC;
    vio_rst : in STD_LOGIC;
    vio_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vio_ctrl_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of db_led_chaser_0_0_led_chaser : entity is "led_chaser";
end db_led_chaser_0_0_led_chaser;

architecture STRUCTURE of db_led_chaser_0_0_led_chaser is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal btn_mode_n : STD_LOGIC;
  signal btn_mode_n_d : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal \counter[25]_i_2_n_0\ : STD_LOGIC;
  signal \counter[25]_i_3_n_0\ : STD_LOGIC;
  signal \counter[25]_i_4_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal debounce_mode_inst_n_1 : STD_LOGIC;
  signal debounce_mode_inst_n_2 : STD_LOGIC;
  signal debounce_mode_inst_n_3 : STD_LOGIC;
  signal led0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal \led[1]_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_i_1_n_0\ : STD_LOGIC;
  signal \led[3]_i_2_n_0\ : STD_LOGIC;
  signal mode4 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \mode4[3]_i_1_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_2_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_3_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_4_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_5_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_6_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_7_n_0\ : STD_LOGIC;
  signal \mode4[3]_i_8_n_0\ : STD_LOGIC;
  signal mode4_cnt : STD_LOGIC;
  signal mode4_cnt_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \pattern[3]_i_1_n_0\ : STD_LOGIC;
  signal \pattern[3]_i_3_n_0\ : STD_LOGIC;
  signal \pattern[3]_i_4_n_0\ : STD_LOGIC;
  signal \pattern[3]_i_5_n_0\ : STD_LOGIC;
  signal \pattern[3]_i_6_n_0\ : STD_LOGIC;
  signal \pattern[3]_i_7_n_0\ : STD_LOGIC;
  signal pattern_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_sync : STD_LOGIC;
  signal vio_rst_d0 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of vio_rst_d0 : signal is std.standard.true;
  signal vio_rst_d1 : STD_LOGIC;
  attribute DONT_TOUCH of vio_rst_d1 : signal is std.standard.true;
  signal vio_rst_sync : STD_LOGIC;
  attribute DONT_TOUCH of vio_rst_sync : signal is std.standard.true;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[20]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[21]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[23]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[24]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \led[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mode4[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pattern[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pattern[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pattern[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pattern[3]_i_2\ : label is "soft_lutpair3";
  attribute DONT_TOUCH of vio_rst_d0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of vio_rst_d0_reg : label is "yes";
  attribute DONT_TOUCH of vio_rst_d1_reg : label is std.standard.true;
  attribute KEEP of vio_rst_d1_reg : label is "yes";
  attribute DONT_TOUCH of vio_rst_sync_reg : label is std.standard.true;
  attribute KEEP of vio_rst_sync_reg : label is "yes";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
btn_mode_n_d_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => btn_mode_n,
      Q => btn_mode_n_d,
      S => rst_sync
    );
counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => counter(0),
      CI_TOP => '0',
      CO(7) => counter0_carry_n_0,
      CO(6) => counter0_carry_n_1,
      CO(5) => counter0_carry_n_2,
      CO(4) => counter0_carry_n_3,
      CO(3) => counter0_carry_n_4,
      CO(2) => counter0_carry_n_5,
      CO(1) => counter0_carry_n_6,
      CO(0) => counter0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(8 downto 1),
      S(7 downto 0) => counter(8 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \counter0_carry__0_n_0\,
      CO(6) => \counter0_carry__0_n_1\,
      CO(5) => \counter0_carry__0_n_2\,
      CO(4) => \counter0_carry__0_n_3\,
      CO(3) => \counter0_carry__0_n_4\,
      CO(2) => \counter0_carry__0_n_5\,
      CO(1) => \counter0_carry__0_n_6\,
      CO(0) => \counter0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(16 downto 9),
      S(7 downto 0) => counter(16 downto 9)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter0_carry__1_n_0\,
      CO(6) => \counter0_carry__1_n_1\,
      CO(5) => \counter0_carry__1_n_2\,
      CO(4) => \counter0_carry__1_n_3\,
      CO(3) => \counter0_carry__1_n_4\,
      CO(2) => \counter0_carry__1_n_5\,
      CO(1) => \counter0_carry__1_n_6\,
      CO(0) => \counter0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(24 downto 17),
      S(7 downto 0) => counter(24 downto 17)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_counter0_carry__2_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_counter0_carry__2_O_UNCONNECTED\(7 downto 1),
      O(0) => data0(25),
      S(7 downto 1) => B"0000000",
      S(0) => counter(25)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => p_0_in(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(10),
      O => p_0_in(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(11),
      O => p_0_in(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(12),
      O => p_0_in(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(13),
      O => p_0_in(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(14),
      O => p_0_in(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(15),
      O => p_0_in(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(16),
      O => p_0_in(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(17),
      O => p_0_in(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(18),
      O => p_0_in(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(19),
      O => p_0_in(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(1),
      O => p_0_in(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(20),
      O => p_0_in(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(21),
      O => p_0_in(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(22),
      O => p_0_in(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(23),
      O => p_0_in(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(24),
      O => p_0_in(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(25),
      O => p_0_in(25)
    );
\counter[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[25]_i_3_n_0\,
      I1 => \counter[25]_i_4_n_0\,
      I2 => \mode4[3]_i_6_n_0\,
      I3 => \mode4[3]_i_5_n_0\,
      I4 => \mode4[3]_i_4_n_0\,
      I5 => \mode4[3]_i_3_n_0\,
      O => \counter[25]_i_2_n_0\
    );
\counter[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBDFFF"
    )
        port map (
      I0 => counter(17),
      I1 => counter(16),
      I2 => counter(6),
      I3 => counter(23),
      I4 => counter(18),
      O => \counter[25]_i_3_n_0\
    );
\counter[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7EFFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => counter(24),
      I2 => counter(25),
      I3 => counter(6),
      I4 => counter(15),
      I5 => counter(11),
      O => \counter[25]_i_4_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(2),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(4),
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(5),
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(6),
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(7),
      O => p_0_in(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(8),
      O => p_0_in(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter[25]_i_2_n_0\,
      I1 => data0(9),
      O => p_0_in(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => counter(0),
      R => rst_sync
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(10),
      Q => counter(10),
      R => rst_sync
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(11),
      Q => counter(11),
      R => rst_sync
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(12),
      Q => counter(12),
      R => rst_sync
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(13),
      Q => counter(13),
      R => rst_sync
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(14),
      Q => counter(14),
      R => rst_sync
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(15),
      Q => counter(15),
      R => rst_sync
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(16),
      Q => counter(16),
      R => rst_sync
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(17),
      Q => counter(17),
      R => rst_sync
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(18),
      Q => counter(18),
      R => rst_sync
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(19),
      Q => counter(19),
      R => rst_sync
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => counter(1),
      R => rst_sync
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(20),
      Q => counter(20),
      R => rst_sync
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(21),
      Q => counter(21),
      R => rst_sync
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(22),
      Q => counter(22),
      R => rst_sync
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(23),
      Q => counter(23),
      R => rst_sync
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(24),
      Q => counter(24),
      R => rst_sync
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(25),
      Q => counter(25),
      R => rst_sync
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => counter(2),
      R => rst_sync
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => counter(3),
      R => rst_sync
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => counter(4),
      R => rst_sync
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => counter(5),
      R => rst_sync
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => counter(6),
      R => rst_sync
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => counter(7),
      R => rst_sync
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => counter(8),
      R => rst_sync
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => counter(9),
      R => rst_sync
    );
debounce_inst: entity work.db_led_chaser_0_0_debounce
     port map (
      SR(0) => rst_sync,
      btn_rst => btn_rst,
      clk => clk,
      \out\ => vio_rst_sync
    );
debounce_mode_inst: entity work.db_led_chaser_0_0_debounce_0
     port map (
      D(1) => debounce_mode_inst_n_1,
      D(0) => debounce_mode_inst_n_2,
      E(0) => debounce_mode_inst_n_3,
      Q(1 downto 0) => \^q\(1 downto 0),
      btn_mode => btn_mode,
      btn_mode_n => btn_mode_n,
      btn_mode_n_d => btn_mode_n_d,
      clk => clk,
      vio_ctrl_enable => vio_ctrl_enable,
      vio_mode(1 downto 0) => vio_mode(1 downto 0)
    );
\led[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FB0"
    )
        port map (
      I0 => mode4(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => pattern_reg(0),
      O => \led[0]_i_1_n_0\
    );
\led[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FD0"
    )
        port map (
      I0 => \^q\(1),
      I1 => mode4(3),
      I2 => \^q\(0),
      I3 => pattern_reg(1),
      O => \led[1]_i_1_n_0\
    );
\led[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FB0"
    )
        port map (
      I0 => mode4(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => pattern_reg(2),
      O => \led[2]_i_1_n_0\
    );
\led[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E626"
    )
        port map (
      I0 => pattern_reg(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => mode4(3),
      O => \led[3]_i_2_n_0\
    );
\led_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[0]_i_1_n_0\,
      Q => led(0),
      R => rst_sync
    );
\led_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[1]_i_1_n_0\,
      Q => led(1),
      R => rst_sync
    );
\led_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[2]_i_1_n_0\,
      Q => led(2),
      R => rst_sync
    );
\led_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led[3]_i_2_n_0\,
      Q => led(3),
      R => rst_sync
    );
\mode4[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \mode4[3]_i_3_n_0\,
      I1 => \mode4[3]_i_4_n_0\,
      I2 => \mode4[3]_i_5_n_0\,
      I3 => \mode4[3]_i_6_n_0\,
      I4 => \mode4[3]_i_7_n_0\,
      I5 => \mode4[3]_i_8_n_0\,
      O => \mode4[3]_i_1_n_0\
    );
\mode4[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mode4_cnt,
      O => \mode4[3]_i_2_n_0\
    );
\mode4[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(5),
      I3 => counter(7),
      O => \mode4[3]_i_3_n_0\
    );
\mode4[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter(0),
      I1 => counter(21),
      I2 => counter(22),
      I3 => counter(2),
      I4 => counter(1),
      O => \mode4[3]_i_4_n_0\
    );
\mode4[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(14),
      I1 => counter(13),
      I2 => counter(20),
      I3 => counter(19),
      O => \mode4[3]_i_5_n_0\
    );
\mode4[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter(9),
      I1 => counter(8),
      I2 => counter(12),
      I3 => counter(10),
      O => \mode4[3]_i_6_n_0\
    );
\mode4[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => counter(6),
      I3 => counter(15),
      I4 => counter(11),
      O => \mode4[3]_i_7_n_0\
    );
\mode4[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => counter(18),
      I1 => counter(23),
      I2 => counter(16),
      I3 => counter(17),
      I4 => counter(25),
      I5 => counter(24),
      O => \mode4[3]_i_8_n_0\
    );
mode4_cnt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mode4[3]_i_1_n_0\,
      I1 => mode4_cnt,
      O => mode4_cnt_i_1_n_0
    );
mode4_cnt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mode4_cnt_i_1_n_0,
      Q => mode4_cnt,
      R => rst_sync
    );
\mode4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mode4[3]_i_1_n_0\,
      D => mode4_cnt,
      Q => mode4(2),
      R => rst_sync
    );
\mode4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mode4[3]_i_1_n_0\,
      D => \mode4[3]_i_2_n_0\,
      Q => mode4(3),
      R => rst_sync
    );
\mode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_mode_inst_n_3,
      D => debounce_mode_inst_n_2,
      Q => \^q\(0),
      R => rst_sync
    );
\mode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => debounce_mode_inst_n_3,
      D => debounce_mode_inst_n_1,
      Q => \^q\(1),
      R => rst_sync
    );
\pattern[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pattern_reg(0),
      O => led0(0)
    );
\pattern[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pattern_reg(0),
      I1 => pattern_reg(1),
      O => \p_0_in__0\(1)
    );
\pattern[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pattern_reg(1),
      I1 => pattern_reg(0),
      I2 => pattern_reg(2),
      O => \p_0_in__0\(2)
    );
\pattern[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => \pattern[3]_i_3_n_0\,
      I1 => \pattern[3]_i_4_n_0\,
      I2 => \pattern[3]_i_5_n_0\,
      I3 => \pattern[3]_i_6_n_0\,
      O => \pattern[3]_i_1_n_0\
    );
\pattern[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pattern_reg(2),
      I1 => pattern_reg(0),
      I2 => pattern_reg(1),
      I3 => pattern_reg(3),
      O => \p_0_in__0\(3)
    );
\pattern[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => counter(18),
      I1 => counter(23),
      I2 => \^q\(0),
      I3 => counter(17),
      I4 => counter(25),
      I5 => counter(24),
      O => \pattern[3]_i_3_n_0\
    );
\pattern[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^q\(1),
      I1 => counter(11),
      I2 => counter(6),
      I3 => counter(15),
      I4 => counter(16),
      O => \pattern[3]_i_4_n_0\
    );
\pattern[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mode4[3]_i_3_n_0\,
      I1 => \mode4[3]_i_4_n_0\,
      I2 => \mode4[3]_i_5_n_0\,
      I3 => \mode4[3]_i_6_n_0\,
      O => \pattern[3]_i_5_n_0\
    );
\pattern[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(11),
      I2 => counter(6),
      I3 => \^q\(1),
      I4 => \pattern[3]_i_7_n_0\,
      O => \pattern[3]_i_6_n_0\
    );
\pattern[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => counter(23),
      I1 => counter(18),
      I2 => counter(17),
      I3 => counter(16),
      I4 => counter(24),
      I5 => counter(25),
      O => \pattern[3]_i_7_n_0\
    );
\pattern_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pattern[3]_i_1_n_0\,
      D => led0(0),
      Q => pattern_reg(0),
      R => rst_sync
    );
\pattern_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pattern[3]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => pattern_reg(1),
      R => rst_sync
    );
\pattern_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pattern[3]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => pattern_reg(2),
      R => rst_sync
    );
\pattern_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pattern[3]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => pattern_reg(3),
      R => rst_sync
    );
vio_rst_d0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vio_rst,
      Q => vio_rst_d0,
      R => '0'
    );
vio_rst_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vio_rst_d0,
      Q => vio_rst_d1,
      R => '0'
    );
vio_rst_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => vio_rst_d1,
      Q => vio_rst_sync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity db_led_chaser_0_0 is
  port (
    clk : in STD_LOGIC;
    btn_rst : in STD_LOGIC;
    vio_rst : in STD_LOGIC;
    vio_ctrl_enable : in STD_LOGIC;
    vio_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_mode : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mode : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of db_led_chaser_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of db_led_chaser_0_0 : entity is "db_led_chaser_0_0,led_chaser,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of db_led_chaser_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of db_led_chaser_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of db_led_chaser_0_0 : entity is "led_chaser,Vivado 2024.2_AR37126";
end db_led_chaser_0_0;

architecture STRUCTURE of db_led_chaser_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btn_rst : signal is "xilinx.com:signal:reset:1.0 btn_rst RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of btn_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btn_rst : signal is "XIL_INTERFACENAME btn_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN db_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of vio_rst : signal is "xilinx.com:signal:reset:1.0 vio_rst RST";
  attribute X_INTERFACE_MODE of vio_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of vio_rst : signal is "XIL_INTERFACENAME vio_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.db_led_chaser_0_0_led_chaser
     port map (
      Q(1 downto 0) => mode(1 downto 0),
      btn_mode => btn_mode,
      btn_rst => btn_rst,
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      vio_ctrl_enable => vio_ctrl_enable,
      vio_mode(1 downto 0) => vio_mode(1 downto 0),
      vio_rst => vio_rst
    );
end STRUCTURE;
