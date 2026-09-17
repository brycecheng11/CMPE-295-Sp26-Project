-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Sep 16 16:43:28 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_pot_to_const_0_0/design_1_pot_to_const_0_0_stub.vhdl
-- Design      : design_1_pot_to_const_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pot_to_const_0_0 is
  Port ( 
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

end design_1_pot_to_const_0_0;

architecture stub of design_1_pot_to_const_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,kp_vaux_p,kp_vaux_n,ki_vaux_p,ki_vaux_n,kd_vaux_p,kd_vaux_n,k_p[11:0],k_i[11:0],k_d[11:0],debug_reset,debug_xadc_data[15:0],debug_eoc,debug_drdy,debug_daddr[6:0],debug_read_index[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pot_to_const,Vivado 2021.1";
begin
end;
