-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Mon Sep 14 17:36:37 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_pid_controller_0_2/design_1_pid_controller_0_2_stub.vhdl
-- Design      : design_1_pid_controller_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pid_controller_0_2 is
  Port ( 
    angle_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k_d_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    k_i_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    k_p_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    new_angle_available_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    new_target_angle_available_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    new_velocity_available_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    output_velocity_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    target_angle_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    time_curr_0 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end design_1_pid_controller_0_2;

architecture stub of design_1_pid_controller_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "angle_0[31:0],k_d_0[11:0],k_i_0[11:0],k_p_0[11:0],new_angle_available_0[0:0],new_target_angle_available_0[0:0],new_velocity_available_0[0:0],output_velocity_0[31:0],reset_rtl,sys_clock,target_angle_0[31:0],time_curr_0[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "design_1_wrapper,Vivado 2021.1";
begin
end;
