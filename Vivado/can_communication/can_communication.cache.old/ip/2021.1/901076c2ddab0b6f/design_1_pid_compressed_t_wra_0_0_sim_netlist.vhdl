-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Oct 13 14:21:17 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pid_compressed_t_wra_0_0_sim_netlist.vhdl
-- Design      : design_1_pid_compressed_t_wra_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    angle_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    kd_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ki_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    kp_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    new_target_angle_available_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    new_velocity_available_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    output_velocity_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sys_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    target_angle_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pid_compressed_t_wra_0_0,pid_compressed_t_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pid_compressed_t_wrapper,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  new_velocity_available_0(0) <= \<const0>\;
  output_velocity_0(31) <= \<const0>\;
  output_velocity_0(30) <= \<const0>\;
  output_velocity_0(29) <= \<const0>\;
  output_velocity_0(28) <= \<const0>\;
  output_velocity_0(27) <= \<const0>\;
  output_velocity_0(26) <= \<const0>\;
  output_velocity_0(25) <= \<const0>\;
  output_velocity_0(24) <= \<const0>\;
  output_velocity_0(23) <= \<const0>\;
  output_velocity_0(22) <= \<const0>\;
  output_velocity_0(21) <= \<const0>\;
  output_velocity_0(20) <= \<const0>\;
  output_velocity_0(19) <= \<const0>\;
  output_velocity_0(18) <= \<const0>\;
  output_velocity_0(17) <= \<const0>\;
  output_velocity_0(16) <= \<const0>\;
  output_velocity_0(15) <= \<const0>\;
  output_velocity_0(14) <= \<const0>\;
  output_velocity_0(13) <= \<const0>\;
  output_velocity_0(12) <= \<const0>\;
  output_velocity_0(11) <= \<const0>\;
  output_velocity_0(10) <= \<const0>\;
  output_velocity_0(9) <= \<const0>\;
  output_velocity_0(8) <= \<const0>\;
  output_velocity_0(7) <= \<const0>\;
  output_velocity_0(6) <= \<const0>\;
  output_velocity_0(5) <= \<const0>\;
  output_velocity_0(4) <= \<const0>\;
  output_velocity_0(3) <= \<const0>\;
  output_velocity_0(2) <= \<const0>\;
  output_velocity_0(1) <= \<const0>\;
  output_velocity_0(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
