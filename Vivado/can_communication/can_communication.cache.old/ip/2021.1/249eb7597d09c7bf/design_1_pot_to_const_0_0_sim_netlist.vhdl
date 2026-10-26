-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Mon Sep 14 23:16:27 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pot_to_const_0_0_sim_netlist.vhdl
-- Design      : design_1_pot_to_const_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pot_to_const is
  port (
    k_p : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_i : out STD_LOGIC_VECTOR ( 11 downto 0 );
    k_d : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    VAUXN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    VAUXP : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pot_to_const;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pot_to_const is
  signal daddr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal drdy : STD_LOGIC;
  signal eoc : STD_LOGIC;
  signal \k_d[11]_i_1_n_0\ : STD_LOGIC;
  signal \k_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \k_p[11]_i_1_n_0\ : STD_LOGIC;
  signal read_index : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \read_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[1]_i_1_n_0\ : STD_LOGIC;
  signal xadc_data : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal NLW_u_xadc_BUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_EOS_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xadc_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_u_xadc_CHANNEL_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_u_xadc_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_u_xadc_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_xadc : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of u_xadc_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of u_xadc_i_2 : label is "soft_lutpair1";
begin
\k_d[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => drdy,
      I1 => read_index(0),
      I2 => read_index(1),
      O => \k_d[11]_i_1_n_0\
    );
\k_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(4),
      Q => k_d(0),
      R => reset
    );
\k_d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(14),
      Q => k_d(10),
      R => reset
    );
\k_d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(15),
      Q => k_d(11),
      R => reset
    );
\k_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(5),
      Q => k_d(1),
      R => reset
    );
\k_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(6),
      Q => k_d(2),
      R => reset
    );
\k_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(7),
      Q => k_d(3),
      R => reset
    );
\k_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(8),
      Q => k_d(4),
      R => reset
    );
\k_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(9),
      Q => k_d(5),
      R => reset
    );
\k_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(10),
      Q => k_d(6),
      R => reset
    );
\k_d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(11),
      Q => k_d(7),
      R => reset
    );
\k_d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(12),
      Q => k_d(8),
      R => reset
    );
\k_d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_d[11]_i_1_n_0\,
      D => xadc_data(13),
      Q => k_d(9),
      R => reset
    );
\k_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => drdy,
      I1 => read_index(1),
      I2 => read_index(0),
      O => \k_i[11]_i_1_n_0\
    );
\k_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(4),
      Q => k_i(0),
      R => reset
    );
\k_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(14),
      Q => k_i(10),
      R => reset
    );
\k_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(15),
      Q => k_i(11),
      R => reset
    );
\k_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(5),
      Q => k_i(1),
      R => reset
    );
\k_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(6),
      Q => k_i(2),
      R => reset
    );
\k_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(7),
      Q => k_i(3),
      R => reset
    );
\k_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(8),
      Q => k_i(4),
      R => reset
    );
\k_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(9),
      Q => k_i(5),
      R => reset
    );
\k_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(10),
      Q => k_i(6),
      R => reset
    );
\k_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(11),
      Q => k_i(7),
      R => reset
    );
\k_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(12),
      Q => k_i(8),
      R => reset
    );
\k_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_i[11]_i_1_n_0\,
      D => xadc_data(13),
      Q => k_i(9),
      R => reset
    );
\k_p[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => drdy,
      I1 => read_index(0),
      I2 => read_index(1),
      O => \k_p[11]_i_1_n_0\
    );
\k_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(4),
      Q => k_p(0),
      R => reset
    );
\k_p_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(14),
      Q => k_p(10),
      R => reset
    );
\k_p_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(15),
      Q => k_p(11),
      R => reset
    );
\k_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(5),
      Q => k_p(1),
      R => reset
    );
\k_p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(6),
      Q => k_p(2),
      R => reset
    );
\k_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(7),
      Q => k_p(3),
      R => reset
    );
\k_p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(8),
      Q => k_p(4),
      R => reset
    );
\k_p_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(9),
      Q => k_p(5),
      R => reset
    );
\k_p_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(10),
      Q => k_p(6),
      R => reset
    );
\k_p_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(11),
      Q => k_p(7),
      R => reset
    );
\k_p_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(12),
      Q => k_p(8),
      R => reset
    );
\k_p_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \k_p[11]_i_1_n_0\,
      D => xadc_data(13),
      Q => k_p(9),
      R => reset
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0026"
    )
        port map (
      I0 => read_index(0),
      I1 => drdy,
      I2 => read_index(1),
      I3 => reset,
      O => \read_index[0]_i_1_n_0\
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0062"
    )
        port map (
      I0 => read_index(1),
      I1 => drdy,
      I2 => read_index(0),
      I3 => reset,
      O => \read_index[1]_i_1_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \read_index[0]_i_1_n_0\,
      Q => read_index(0),
      R => '0'
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \read_index[1]_i_1_n_0\,
      Q => read_index(1),
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
      INIT_49 => X"0007",
      INIT_4A => X"0000",
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0007",
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
      DADDR(3) => daddr(3),
      DADDR(2 downto 1) => B"11",
      DADDR(0) => daddr(0),
      DCLK => clk,
      DEN => eoc,
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 4) => xadc_data(15 downto 4),
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
      I0 => read_index(1),
      I1 => read_index(0),
      O => daddr(3)
    );
u_xadc_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_index(0),
      I1 => read_index(1),
      O => daddr(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
    k_d : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pot_to_const_0_0,pot_to_const,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pot_to_const,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pot_to_const
     port map (
      VAUXN(2) => kd_vaux_n,
      VAUXN(1) => kp_vaux_n,
      VAUXN(0) => ki_vaux_n,
      VAUXP(2) => kd_vaux_p,
      VAUXP(1) => kp_vaux_p,
      VAUXP(0) => ki_vaux_p,
      clk => clk,
      k_d(11 downto 0) => k_d(11 downto 0),
      k_i(11 downto 0) => k_i(11 downto 0),
      k_p(11 downto 0) => k_p(11 downto 0),
      reset => reset
    );
end STRUCTURE;
