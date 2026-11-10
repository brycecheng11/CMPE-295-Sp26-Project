-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Nov  8 15:45:38 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode funcsim
--               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_full_to_four_0_0/design_1_full_to_four_0_0_sim_netlist.vhdl
-- Design      : design_1_full_to_four_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_full_to_four_0_0_full_to_four is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ready : in STD_LOGIC;
    pterm : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iterm : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ps_ready : in STD_LOGIC;
    velocity : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dterm : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_full_to_four_0_0_full_to_four : entity is "full_to_four";
end design_1_full_to_four_0_0_full_to_four;

architecture STRUCTURE of design_1_full_to_four_0_0_full_to_four is
  signal \value[0]_i_1_n_0\ : STD_LOGIC;
  signal \value[0]_i_2_n_0\ : STD_LOGIC;
  signal \value[12]_i_1_n_0\ : STD_LOGIC;
  signal \value[12]_i_2_n_0\ : STD_LOGIC;
  signal \value[4]_i_1_n_0\ : STD_LOGIC;
  signal \value[4]_i_2_n_0\ : STD_LOGIC;
  signal \value[8]_i_1_n_0\ : STD_LOGIC;
  signal \value[8]_i_2_n_0\ : STD_LOGIC;
begin
\value[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8ABABABA8A8A8A"
    )
        port map (
      I0 => \value[0]_i_2_n_0\,
      I1 => sw(1),
      I2 => sw(2),
      I3 => velocity(0),
      I4 => sw(0),
      I5 => dterm(0),
      O => \value[0]_i_1_n_0\
    );
\value[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFFFF0AACC00"
    )
        port map (
      I0 => pl_ready,
      I1 => pterm(0),
      I2 => iterm(0),
      I3 => sw(1),
      I4 => sw(0),
      I5 => sw(2),
      O => \value[0]_i_2_n_0\
    );
\value[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAC00FF00AC00"
    )
        port map (
      I0 => iterm(3),
      I1 => pterm(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => sw(2),
      I5 => \value[12]_i_2_n_0\,
      O => \value[12]_i_1_n_0\
    );
\value[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAE22A2"
    )
        port map (
      I0 => velocity(3),
      I1 => sw(2),
      I2 => sw(0),
      I3 => sw(1),
      I4 => dterm(3),
      O => \value[12]_i_2_n_0\
    );
\value[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8ABABABA8A8A8A"
    )
        port map (
      I0 => \value[4]_i_2_n_0\,
      I1 => sw(1),
      I2 => sw(2),
      I3 => velocity(1),
      I4 => sw(0),
      I5 => dterm(1),
      O => \value[4]_i_1_n_0\
    );
\value[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFFFF0AACC00"
    )
        port map (
      I0 => ps_ready,
      I1 => pterm(1),
      I2 => iterm(1),
      I3 => sw(1),
      I4 => sw(0),
      I5 => sw(2),
      O => \value[4]_i_2_n_0\
    );
\value[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAC00FF00AC00"
    )
        port map (
      I0 => iterm(2),
      I1 => pterm(2),
      I2 => sw(0),
      I3 => sw(1),
      I4 => sw(2),
      I5 => \value[8]_i_2_n_0\,
      O => \value[8]_i_1_n_0\
    );
\value[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAE22A2"
    )
        port map (
      I0 => velocity(2),
      I1 => sw(2),
      I2 => sw(0),
      I3 => sw(1),
      I4 => dterm(2),
      O => \value[8]_i_2_n_0\
    );
\value_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => '1',
      D => \value[0]_i_1_n_0\,
      Q => led(0),
      S => sw(3)
    );
\value_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => '1',
      D => \value[12]_i_1_n_0\,
      Q => led(3),
      S => sw(3)
    );
\value_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => '1',
      D => \value[4]_i_1_n_0\,
      Q => led(1),
      S => sw(3)
    );
\value_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => '1',
      D => \value[8]_i_1_n_0\,
      Q => led(2),
      S => sw(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_full_to_four_0_0 is
  port (
    clock : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ps_ready : in STD_LOGIC;
    pl_ready : in STD_LOGIC;
    pterm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    iterm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dterm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    velocity : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_full_to_four_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_full_to_four_0_0 : entity is "design_1_full_to_four_0_0,full_to_four,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_full_to_four_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_full_to_four_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_full_to_four_0_0 : entity is "full_to_four,Vivado 2021.1";
end design_1_full_to_four_0_0;

architecture STRUCTURE of design_1_full_to_four_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_full_to_four_0_0_full_to_four
     port map (
      clock => clock,
      dterm(3) => dterm(12),
      dterm(2) => dterm(8),
      dterm(1) => dterm(4),
      dterm(0) => dterm(0),
      iterm(3) => iterm(12),
      iterm(2) => iterm(8),
      iterm(1) => iterm(4),
      iterm(0) => iterm(0),
      led(3 downto 0) => led(3 downto 0),
      pl_ready => pl_ready,
      ps_ready => ps_ready,
      pterm(3) => pterm(12),
      pterm(2) => pterm(8),
      pterm(1) => pterm(4),
      pterm(0) => pterm(0),
      sw(3 downto 0) => sw(3 downto 0),
      velocity(3) => velocity(12),
      velocity(2) => velocity(8),
      velocity(1) => velocity(4),
      velocity(0) => velocity(0)
    );
end STRUCTURE;
