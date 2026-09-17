-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Sep 16 16:43:28 2026
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
    debug_drdy : out STD_LOGIC;
    \read_index_reg[0]_0\ : out STD_LOGIC;
    \read_index_reg[1]_0\ : out STD_LOGIC;
    debug_eoc : out STD_LOGIC;
    debug_xadc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_daddr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    k_p : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_i : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_d : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    VAUXN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    VAUXP : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pot_to_const_0_0_pot_to_const : entity is "pot_to_const";
end design_1_pot_to_const_0_0_pot_to_const;

architecture STRUCTURE of design_1_pot_to_const_0_0_pot_to_const is
  signal \^debug_daddr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^debug_drdy\ : STD_LOGIC;
  signal \^debug_eoc\ : STD_LOGIC;
  signal \^debug_xadc_data\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal den : STD_LOGIC;
  signal den_i_1_n_0 : STD_LOGIC;
  signal \k_d[11]_i_1_n_0\ : STD_LOGIC;
  signal \k_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \k_p[11]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \^read_index_reg[0]_0\ : STD_LOGIC;
  signal \^read_index_reg[1]_0\ : STD_LOGIC;
  signal waiting_for_drdy : STD_LOGIC;
  signal waiting_for_drdy_i_1_n_0 : STD_LOGIC;
  signal NLW_u_xadc_BUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_EOS_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_u_xadc_CHANNEL_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_u_xadc_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \debug_daddr[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \debug_daddr[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of den_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_xadc : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of waiting_for_drdy_i_1 : label is "soft_lutpair1";
begin
  debug_daddr(1 downto 0) <= \^debug_daddr\(1 downto 0);
  debug_drdy <= \^debug_drdy\;
  debug_eoc <= \^debug_eoc\;
  debug_xadc_data(15 downto 0) <= \^debug_xadc_data\(15 downto 0);
  \read_index_reg[0]_0\ <= \^read_index_reg[0]_0\;
  \read_index_reg[1]_0\ <= \^read_index_reg[1]_0\;
\debug_daddr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^read_index_reg[0]_0\,
      I1 => \^read_index_reg[1]_0\,
      O => \^debug_daddr\(0)
    );
\debug_daddr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^read_index_reg[1]_0\,
      I1 => \^read_index_reg[0]_0\,
      O => \^debug_daddr\(1)
    );
den_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => waiting_for_drdy,
      I1 => \^debug_eoc\,
      I2 => reset,
      O => den_i_1_n_0
    );
den_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => den_i_1_n_0,
      Q => den,
      R => '0'
    );
\k_d[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => waiting_for_drdy,
      I1 => \^debug_drdy\,
      I2 => \^read_index_reg[0]_0\,
      I3 => \^read_index_reg[1]_0\,
      O => \k_d[11]_i_1_n_0\
    );
\k_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(4),
      Q => k_d(0),
      R => reset
    );
\k_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(14),
      Q => k_d(10),
      R => reset
    );
\k_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(15),
      Q => k_d(11),
      R => reset
    );
\k_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(5),
      Q => k_d(1),
      R => reset
    );
\k_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(6),
      Q => k_d(2),
      R => reset
    );
\k_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(7),
      Q => k_d(3),
      R => reset
    );
\k_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(8),
      Q => k_d(4),
      R => reset
    );
\k_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(9),
      Q => k_d(5),
      R => reset
    );
\k_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(10),
      Q => k_d(6),
      R => reset
    );
\k_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(11),
      Q => k_d(7),
      R => reset
    );
\k_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(12),
      Q => k_d(8),
      R => reset
    );
\k_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => \^debug_xadc_data\(13),
      Q => k_d(9),
      R => reset
    );
\k_i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => waiting_for_drdy,
      I1 => \^debug_drdy\,
      I2 => \^read_index_reg[0]_0\,
      I3 => \^read_index_reg[1]_0\,
      O => \k_i[11]_i_1_n_0\
    );
\k_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(4),
      Q => k_i(0),
      R => reset
    );
\k_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(14),
      Q => k_i(10),
      R => reset
    );
\k_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(15),
      Q => k_i(11),
      R => reset
    );
\k_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(5),
      Q => k_i(1),
      R => reset
    );
\k_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(6),
      Q => k_i(2),
      R => reset
    );
\k_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(7),
      Q => k_i(3),
      R => reset
    );
\k_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(8),
      Q => k_i(4),
      R => reset
    );
\k_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(9),
      Q => k_i(5),
      R => reset
    );
\k_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(10),
      Q => k_i(6),
      R => reset
    );
\k_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(11),
      Q => k_i(7),
      R => reset
    );
\k_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(12),
      Q => k_i(8),
      R => reset
    );
\k_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => \^debug_xadc_data\(13),
      Q => k_i(9),
      R => reset
    );
\k_p[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => waiting_for_drdy,
      I1 => \^debug_drdy\,
      I2 => \^read_index_reg[0]_0\,
      I3 => \^read_index_reg[1]_0\,
      O => \k_p[11]_i_1_n_0\
    );
\k_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(4),
      Q => k_p(0),
      R => reset
    );
\k_p_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(14),
      Q => k_p(10),
      R => reset
    );
\k_p_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(15),
      Q => k_p(11),
      R => reset
    );
\k_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(5),
      Q => k_p(1),
      R => reset
    );
\k_p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(6),
      Q => k_p(2),
      R => reset
    );
\k_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(7),
      Q => k_p(3),
      R => reset
    );
\k_p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(8),
      Q => k_p(4),
      R => reset
    );
\k_p_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(9),
      Q => k_p(5),
      R => reset
    );
\k_p_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(10),
      Q => k_p(6),
      R => reset
    );
\k_p_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(11),
      Q => k_p(7),
      R => reset
    );
\k_p_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(12),
      Q => k_p(8),
      R => reset
    );
\k_p_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => \^debug_xadc_data\(13),
      Q => k_p(9),
      R => reset
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A6A"
    )
        port map (
      I0 => \^read_index_reg[0]_0\,
      I1 => waiting_for_drdy,
      I2 => \^debug_drdy\,
      I3 => \^read_index_reg[1]_0\,
      I4 => reset,
      O => \read_index[0]_i_1_n_0\
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A2A"
    )
        port map (
      I0 => \^read_index_reg[1]_0\,
      I1 => waiting_for_drdy,
      I2 => \^debug_drdy\,
      I3 => \^read_index_reg[0]_0\,
      I4 => reset,
      O => \read_index[1]_i_1_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \read_index[0]_i_1_n_0\,
      Q => \^read_index_reg[0]_0\,
      R => '0'
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \read_index[1]_i_1_n_0\,
      Q => \^read_index_reg[1]_0\,
      R => '0'
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
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0000",
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
      CHANNEL(4 downto 0) => NLW_u_xadc_CHANNEL_UNCONNECTED(4 downto 0),
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(6 downto 4) => B"001",
      DADDR(3) => \^debug_daddr\(1),
      DADDR(2 downto 1) => B"11",
      DADDR(0) => \^debug_daddr\(0),
      DCLK => clk,
      DEN => den,
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => \^debug_xadc_data\(15 downto 0),
      DRDY => \^debug_drdy\,
      DWE => '0',
      EOC => \^debug_eoc\,
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
waiting_for_drdy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"003A"
    )
        port map (
      I0 => \^debug_eoc\,
      I1 => \^debug_drdy\,
      I2 => waiting_for_drdy,
      I3 => reset,
      O => waiting_for_drdy_i_1_n_0
    );
waiting_for_drdy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waiting_for_drdy_i_1_n_0,
      Q => waiting_for_drdy,
      R => '0'
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
    debug_reset : out STD_LOGIC;
    debug_xadc_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_eoc : out STD_LOGIC;
    debug_drdy : out STD_LOGIC;
    debug_daddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    debug_read_index : out STD_LOGIC_VECTOR ( 1 downto 0 )
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
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^debug_daddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^reset\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of debug_reset : signal is "xilinx.com:signal:reset:1.0 debug_reset RST";
  attribute X_INTERFACE_PARAMETER of debug_reset : signal is "XIL_INTERFACENAME debug_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^reset\ <= reset;
  debug_daddr(6) <= \<const0>\;
  debug_daddr(5) <= \<const0>\;
  debug_daddr(4) <= \<const1>\;
  debug_daddr(3) <= \^debug_daddr\(3);
  debug_daddr(2) <= \<const1>\;
  debug_daddr(1) <= \<const1>\;
  debug_daddr(0) <= \^debug_daddr\(0);
  debug_reset <= \^reset\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_pot_to_const_0_0_pot_to_const
     port map (
      VAUXN(2) => kd_vaux_n,
      VAUXN(1) => kp_vaux_n,
      VAUXN(0) => ki_vaux_n,
      VAUXP(2) => kd_vaux_p,
      VAUXP(1) => kp_vaux_p,
      VAUXP(0) => ki_vaux_p,
      clk => clk,
      debug_daddr(1) => \^debug_daddr\(3),
      debug_daddr(0) => \^debug_daddr\(0),
      debug_drdy => debug_drdy,
      debug_eoc => debug_eoc,
      debug_xadc_data(15 downto 0) => debug_xadc_data(15 downto 0),
      k_d(11 downto 0) => k_d(11 downto 0),
      k_i(11 downto 0) => k_i(11 downto 0),
      k_p(11 downto 0) => k_p(11 downto 0),
      \read_index_reg[0]_0\ => debug_read_index(0),
      \read_index_reg[1]_0\ => debug_read_index(1),
      reset => \^reset\
    );
end STRUCTURE;
