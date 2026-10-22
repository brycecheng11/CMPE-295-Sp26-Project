//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Mon Sep 14 17:09:23 2026
//Host        : Dell-XPS running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (angle_0,
    k_d_0,
    k_i_0,
    k_p_0,
    new_angle_available_0,
    new_target_angle_available_0,
    new_velocity_available_0,
    output_velocity_0,
    reset_rtl,
    sys_clock,
    target_angle_0,
    time_curr_0);
  input [31:0]angle_0;
  input [11:0]k_d_0;
  input [11:0]k_i_0;
  input [11:0]k_p_0;
  input [0:0]new_angle_available_0;
  input [0:0]new_target_angle_available_0;
  output [0:0]new_velocity_available_0;
  output [31:0]output_velocity_0;
  input reset_rtl;
  input sys_clock;
  input [31:0]target_angle_0;
  input [63:0]time_curr_0;

  wire [31:0]angle_0;
  wire [11:0]k_d_0;
  wire [11:0]k_i_0;
  wire [11:0]k_p_0;
  wire [0:0]new_angle_available_0;
  wire [0:0]new_target_angle_available_0;
  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire reset_rtl;
  wire sys_clock;
  wire [31:0]target_angle_0;
  wire [63:0]time_curr_0;

  design_1 design_1_i
       (.angle_0(angle_0),
        .k_d_0(k_d_0),
        .k_i_0(k_i_0),
        .k_p_0(k_p_0),
        .new_angle_available_0(new_angle_available_0),
        .new_target_angle_available_0(new_target_angle_available_0),
        .new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(output_velocity_0),
        .reset_rtl(reset_rtl),
        .sys_clock(sys_clock),
        .target_angle_0(target_angle_0),
        .time_curr_0(time_curr_0));
endmodule
