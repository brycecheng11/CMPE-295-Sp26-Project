-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Mon Sep 21 11:41:38 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode funcsim
--               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_pot_to_const_0_0/design_1_pot_to_const_0_0_sim_netlist.vhdl
-- Design      : design_1_pot_to_const_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pot_to_const_0_0_pot_to_const is
  port (
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    k_p : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_i : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_d : out STD_LOGIC_VECTOR ( 11 downto 0 );
    check_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    VAUXN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    VAUXP : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pot_to_const_0_0_pot_to_const : entity is "pot_to_const";
end design_1_pot_to_const_0_0_pot_to_const;

architecture STRUCTURE of design_1_pot_to_const_0_0_pot_to_const is
  signal \FSM_onehot_port_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_port_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_port_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_port_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_port_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_port_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal daddr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal do_out : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal drdy : STD_LOGIC;
  signal eoc : STD_LOGIC;
  signal \kd[0]_i_1_n_0\ : STD_LOGIC;
  signal \kd[10]_i_1_n_0\ : STD_LOGIC;
  signal \kd[11]_i_1_n_0\ : STD_LOGIC;
  signal \kd[11]_i_2_n_0\ : STD_LOGIC;
  signal \kd[11]_i_3_n_0\ : STD_LOGIC;
  signal \kd[1]_i_1_n_0\ : STD_LOGIC;
  signal \kd[2]_i_1_n_0\ : STD_LOGIC;
  signal \kd[3]_i_1_n_0\ : STD_LOGIC;
  signal \kd[4]_i_1_n_0\ : STD_LOGIC;
  signal \kd[5]_i_1_n_0\ : STD_LOGIC;
  signal \kd[6]_i_1_n_0\ : STD_LOGIC;
  signal \kd[7]_i_1_n_0\ : STD_LOGIC;
  signal \kd[8]_i_1_n_0\ : STD_LOGIC;
  signal \kd[9]_i_1_n_0\ : STD_LOGIC;
  signal \ki[0]_i_1_n_0\ : STD_LOGIC;
  signal \ki[10]_i_1_n_0\ : STD_LOGIC;
  signal \ki[11]_i_1_n_0\ : STD_LOGIC;
  signal \ki[11]_i_2_n_0\ : STD_LOGIC;
  signal \ki[11]_i_3_n_0\ : STD_LOGIC;
  signal \ki[1]_i_1_n_0\ : STD_LOGIC;
  signal \ki[2]_i_1_n_0\ : STD_LOGIC;
  signal \ki[3]_i_1_n_0\ : STD_LOGIC;
  signal \ki[4]_i_1_n_0\ : STD_LOGIC;
  signal \ki[5]_i_1_n_0\ : STD_LOGIC;
  signal \ki[6]_i_1_n_0\ : STD_LOGIC;
  signal \ki[7]_i_1_n_0\ : STD_LOGIC;
  signal \ki[8]_i_1_n_0\ : STD_LOGIC;
  signal \ki[9]_i_1_n_0\ : STD_LOGIC;
  signal \kp[0]_i_1_n_0\ : STD_LOGIC;
  signal \kp[10]_i_1_n_0\ : STD_LOGIC;
  signal \kp[11]_i_1_n_0\ : STD_LOGIC;
  signal \kp[11]_i_2_n_0\ : STD_LOGIC;
  signal \kp[11]_i_3_n_0\ : STD_LOGIC;
  signal \kp[1]_i_1_n_0\ : STD_LOGIC;
  signal \kp[2]_i_1_n_0\ : STD_LOGIC;
  signal \kp[3]_i_1_n_0\ : STD_LOGIC;
  signal \kp[4]_i_1_n_0\ : STD_LOGIC;
  signal \kp[5]_i_1_n_0\ : STD_LOGIC;
  signal \kp[6]_i_1_n_0\ : STD_LOGIC;
  signal \kp[7]_i_1_n_0\ : STD_LOGIC;
  signal \kp[8]_i_1_n_0\ : STD_LOGIC;
  signal \kp[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_u_xadc_BUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_EOS_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_u_xadc_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_u_xadc_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_port_idx[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_port_idx[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_port_idx[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_port_idx_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_port_idx_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_port_idx_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:100,";
  attribute SOFT_HLUTNM of \kd[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kd[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \kd[11]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \kd[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \kd[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kd[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \kd[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kd[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kd[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kd[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kd[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \kd[9]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ki[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ki[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ki[11]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ki[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ki[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ki[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ki[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ki[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ki[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ki[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ki[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ki[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \kp[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \kp[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kp[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kp[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kp[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kp[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kp[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \kp[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \kp[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kp[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kp[9]_i_1\ : label is "soft_lutpair7";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_xadc : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of u_xadc_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of u_xadc_i_2 : label is "soft_lutpair1";
begin
\FSM_onehot_port_idx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => drdy,
      I1 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      O => \FSM_onehot_port_idx[0]_i_1_n_0\
    );
\FSM_onehot_port_idx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => drdy,
      I1 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      O => \FSM_onehot_port_idx[1]_i_1_n_0\
    );
\FSM_onehot_port_idx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => drdy,
      I1 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      O => \FSM_onehot_port_idx[2]_i_1_n_0\
    );
\FSM_onehot_port_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_port_idx[0]_i_1_n_0\,
      Q => \FSM_onehot_port_idx_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_port_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_port_idx[1]_i_1_n_0\,
      Q => \FSM_onehot_port_idx_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_port_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_port_idx[2]_i_1_n_0\,
      Q => \FSM_onehot_port_idx_reg_n_0_[2]\,
      R => '0'
    );
\check_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => reset,
      Q => check_rst(0),
      R => '0'
    );
\kd[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(4),
      O => \kd[0]_i_1_n_0\
    );
\kd[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(14),
      O => \kd[10]_i_1_n_0\
    );
\kd[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => drdy,
      O => \kd[11]_i_1_n_0\
    );
\kd[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAA00"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I3 => drdy,
      I4 => reset,
      O => \kd[11]_i_2_n_0\
    );
\kd[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(15),
      O => \kd[11]_i_3_n_0\
    );
\kd[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(5),
      O => \kd[1]_i_1_n_0\
    );
\kd[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(6),
      O => \kd[2]_i_1_n_0\
    );
\kd[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(7),
      O => \kd[3]_i_1_n_0\
    );
\kd[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(8),
      O => \kd[4]_i_1_n_0\
    );
\kd[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(9),
      O => \kd[5]_i_1_n_0\
    );
\kd[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(10),
      O => \kd[6]_i_1_n_0\
    );
\kd[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(11),
      O => \kd[7]_i_1_n_0\
    );
\kd[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(12),
      O => \kd[8]_i_1_n_0\
    );
\kd[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => do_out(13),
      O => \kd[9]_i_1_n_0\
    );
\kd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[0]_i_1_n_0\,
      Q => k_d(0),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[10]_i_1_n_0\,
      Q => k_d(10),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[11]_i_3_n_0\,
      Q => k_d(11),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[1]_i_1_n_0\,
      Q => k_d(1),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[2]_i_1_n_0\,
      Q => k_d(2),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[3]_i_1_n_0\,
      Q => k_d(3),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[4]_i_1_n_0\,
      Q => k_d(4),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[5]_i_1_n_0\,
      Q => k_d(5),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[6]_i_1_n_0\,
      Q => k_d(6),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[7]_i_1_n_0\,
      Q => k_d(7),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[8]_i_1_n_0\,
      Q => k_d(8),
      R => \kd[11]_i_1_n_0\
    );
\kd_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kd[11]_i_2_n_0\,
      D => \kd[9]_i_1_n_0\,
      Q => k_d(9),
      R => \kd[11]_i_1_n_0\
    );
\ki[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(4),
      O => \ki[0]_i_1_n_0\
    );
\ki[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(14),
      O => \ki[10]_i_1_n_0\
    );
\ki[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => drdy,
      O => \ki[11]_i_1_n_0\
    );
\ki[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFF000"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I1 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I3 => drdy,
      I4 => reset,
      O => \ki[11]_i_2_n_0\
    );
\ki[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(15),
      O => \ki[11]_i_3_n_0\
    );
\ki[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(5),
      O => \ki[1]_i_1_n_0\
    );
\ki[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(6),
      O => \ki[2]_i_1_n_0\
    );
\ki[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(7),
      O => \ki[3]_i_1_n_0\
    );
\ki[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(8),
      O => \ki[4]_i_1_n_0\
    );
\ki[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(9),
      O => \ki[5]_i_1_n_0\
    );
\ki[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(10),
      O => \ki[6]_i_1_n_0\
    );
\ki[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(11),
      O => \ki[7]_i_1_n_0\
    );
\ki[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(12),
      O => \ki[8]_i_1_n_0\
    );
\ki[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => do_out(13),
      O => \ki[9]_i_1_n_0\
    );
\ki_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[0]_i_1_n_0\,
      Q => k_i(0),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[10]_i_1_n_0\,
      Q => k_i(10),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[11]_i_3_n_0\,
      Q => k_i(11),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[1]_i_1_n_0\,
      Q => k_i(1),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[2]_i_1_n_0\,
      Q => k_i(2),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[3]_i_1_n_0\,
      Q => k_i(3),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[4]_i_1_n_0\,
      Q => k_i(4),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[5]_i_1_n_0\,
      Q => k_i(5),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[6]_i_1_n_0\,
      Q => k_i(6),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[7]_i_1_n_0\,
      Q => k_i(7),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[8]_i_1_n_0\,
      Q => k_i(8),
      R => \ki[11]_i_1_n_0\
    );
\ki_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ki[11]_i_2_n_0\,
      D => \ki[9]_i_1_n_0\,
      Q => k_i(9),
      R => \ki[11]_i_1_n_0\
    );
\kp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(4),
      O => \kp[0]_i_1_n_0\
    );
\kp[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(14),
      O => \kp[10]_i_1_n_0\
    );
\kp[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reset,
      I1 => drdy,
      O => \kp[11]_i_1_n_0\
    );
\kp[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAA00"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      I3 => drdy,
      I4 => reset,
      O => \kp[11]_i_2_n_0\
    );
\kp[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(15),
      O => \kp[11]_i_3_n_0\
    );
\kp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(5),
      O => \kp[1]_i_1_n_0\
    );
\kp[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(6),
      O => \kp[2]_i_1_n_0\
    );
\kp[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(7),
      O => \kp[3]_i_1_n_0\
    );
\kp[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(8),
      O => \kp[4]_i_1_n_0\
    );
\kp[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(9),
      O => \kp[5]_i_1_n_0\
    );
\kp[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(10),
      O => \kp[6]_i_1_n_0\
    );
\kp[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(11),
      O => \kp[7]_i_1_n_0\
    );
\kp[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(12),
      O => \kp[8]_i_1_n_0\
    );
\kp[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => do_out(13),
      O => \kp[9]_i_1_n_0\
    );
\kp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[0]_i_1_n_0\,
      Q => k_p(0),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[10]_i_1_n_0\,
      Q => k_p(10),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[11]_i_3_n_0\,
      Q => k_p(11),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[1]_i_1_n_0\,
      Q => k_p(1),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[2]_i_1_n_0\,
      Q => k_p(2),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[3]_i_1_n_0\,
      Q => k_p(3),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[4]_i_1_n_0\,
      Q => k_p(4),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[5]_i_1_n_0\,
      Q => k_p(5),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[6]_i_1_n_0\,
      Q => k_p(6),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[7]_i_1_n_0\,
      Q => k_p(7),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[8]_i_1_n_0\,
      Q => k_p(8),
      R => \kp[11]_i_1_n_0\
    );
\kp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \kp[11]_i_2_n_0\,
      D => \kp[9]_i_1_n_0\,
      Q => k_p(9),
      R => \kp[11]_i_1_n_0\
    );
u_xadc: unisim.vcomponents.XADC
    generic map(
      INIT_40 => X"9000",
      INIT_41 => X"2EF0",
      INIT_42 => X"0800",
      INIT_43 => X"0000",
      INIT_44 => X"0000",
      INIT_45 => X"0000",
      INIT_46 => X"0000",
      INIT_47 => X"0000",
      INIT_48 => X"4701",
      INIT_49 => X"C080",
      INIT_4A => X"0000",
      INIT_4B => X"C080",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"C080",
      INIT_50 => X"0000",
      INIT_51 => X"0000",
      INIT_52 => X"0000",
      INIT_53 => X"0000",
      INIT_54 => X"0000",
      INIT_55 => X"0000",
      INIT_56 => X"0000",
      INIT_57 => X"0000",
      INIT_58 => X"0000",
      INIT_59 => X"0000",
      INIT_5A => X"0000",
      INIT_5B => X"0000",
      INIT_5C => X"0000",
      INIT_5D => X"0000",
      INIT_5E => X"0000",
      INIT_5F => X"0000",
      IS_CONVSTCLK_INVERTED => '0',
      IS_DCLK_INVERTED => '0',
      SIM_DEVICE => "ZYNQ",
      SIM_MONITOR_FILE => "design.txt"
    )
        port map (
      ALM(7 downto 0) => NLW_u_xadc_ALM_UNCONNECTED(7 downto 0),
      BUSY => NLW_u_xadc_BUSY_UNCONNECTED,
      CHANNEL(4 downto 0) => channel_out(4 downto 0),
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(6 downto 4) => B"001",
      DADDR(3) => daddr(3),
      DADDR(2 downto 1) => B"11",
      DADDR(0) => daddr(0),
      DCLK => clk,
      DEN => eoc,
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 4) => do_out(15 downto 4),
      DO(3 downto 0) => NLW_u_xadc_DO_UNCONNECTED(3 downto 0),
      DRDY => drdy,
      DWE => '0',
      EOC => eoc,
      EOS => NLW_u_xadc_EOS_UNCONNECTED,
      JTAGBUSY => NLW_u_xadc_JTAGBUSY_UNCONNECTED,
      JTAGLOCKED => NLW_u_xadc_JTAGLOCKED_UNCONNECTED,
      JTAGMODIFIED => NLW_u_xadc_JTAGMODIFIED_UNCONNECTED,
      MUXADDR(4 downto 0) => NLW_u_xadc_MUXADDR_UNCONNECTED(4 downto 0),
      OT => NLW_u_xadc_OT_UNCONNECTED,
      RESET => reset,
      VAUXN(15 downto 14) => VAUXN(2 downto 1),
      VAUXN(13 downto 8) => B"000000",
      VAUXN(7) => VAUXN(0),
      VAUXN(6 downto 0) => B"0000000",
      VAUXP(15 downto 14) => VAUXP(2 downto 1),
      VAUXP(13 downto 8) => B"000000",
      VAUXP(7) => VAUXP(0),
      VAUXP(6 downto 0) => B"0000000",
      VN => '0',
      VP => '0'
    );
u_xadc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I1 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      O => daddr(3)
    );
u_xadc_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_port_idx_reg_n_0_[1]\,
      I1 => \FSM_onehot_port_idx_reg_n_0_[0]\,
      I2 => \FSM_onehot_port_idx_reg_n_0_[2]\,
      O => daddr(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pot_to_const_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    kp_vaux_p : in STD_LOGIC;
    kp_vaux_n : in STD_LOGIC;
    ki_vaux_p : in STD_LOGIC;
    ki_vaux_n : in STD_LOGIC;
    kd_vaux_p : in STD_LOGIC;
    kd_vaux_n : in STD_LOGIC;
    k_p : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_i : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_d : out STD_LOGIC_VECTOR ( 11 downto 0 );
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    check_rst : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pot_to_const_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pot_to_const_0_0 : entity is "design_1_pot_to_const_0_0,pot_to_const,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pot_to_const_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pot_to_const_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pot_to_const_0_0 : entity is "pot_to_const,Vivado 2021.1";
end design_1_pot_to_const_0_0;

architecture STRUCTURE of design_1_pot_to_const_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of check_rst : signal is "xilinx.com:signal:reset:1.0 check_rst RST";
  attribute X_INTERFACE_PARAMETER of check_rst : signal is "XIL_INTERFACENAME check_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_pot_to_const_0_0_pot_to_const
     port map (
      VAUXN(2) => kd_vaux_n,
      VAUXN(1) => kp_vaux_n,
      VAUXN(0) => ki_vaux_n,
      VAUXP(2) => kd_vaux_p,
      VAUXP(1) => kp_vaux_p,
      VAUXP(0) => ki_vaux_p,
      channel_out(4 downto 0) => channel_out(4 downto 0),
      check_rst(0) => check_rst(0),
      clk => clk,
      k_d(11 downto 0) => k_d(11 downto 0),
      k_i(11 downto 0) => k_i(11 downto 0),
      k_p(11 downto 0) => k_p(11 downto 0),
      reset => reset
    );
end STRUCTURE;
