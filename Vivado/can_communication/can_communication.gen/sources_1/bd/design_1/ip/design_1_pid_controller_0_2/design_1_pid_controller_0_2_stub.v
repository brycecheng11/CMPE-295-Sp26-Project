// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Sep 17 15:39:51 2026
// Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode synth_stub
//               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_pid_controller_0_2/design_1_pid_controller_0_2_stub.v
// Design      : design_1_pid_controller_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1_wrapper,Vivado 2021.1" *)
module design_1_pid_controller_0_2(angle_0, k_d_0, k_i_0, k_p_0, 
  new_target_angle_available_0, new_velocity_available_0, output_velocity_0, sys_clock, 
  target_angle_0, time_curr_0)
/* synthesis syn_black_box black_box_pad_pin="angle_0[31:0],k_d_0[11:0],k_i_0[11:0],k_p_0[11:0],new_target_angle_available_0[0:0],new_velocity_available_0[0:0],output_velocity_0[31:0],sys_clock,target_angle_0[31:0],time_curr_0[63:0]" */;
  input [31:0]angle_0;
  input [11:0]k_d_0;
  input [11:0]k_i_0;
  input [11:0]k_p_0;
  input [0:0]new_target_angle_available_0;
  output [0:0]new_velocity_available_0;
  output [31:0]output_velocity_0;
  input sys_clock;
  input [31:0]target_angle_0;
  input [63:0]time_curr_0;
endmodule
