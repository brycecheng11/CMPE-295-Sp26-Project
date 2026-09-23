// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Sep 21 11:41:38 2026
// Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode synth_stub
//               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_pot_to_const_0_0/design_1_pot_to_const_0_0_stub.v
// Design      : design_1_pot_to_const_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pot_to_const,Vivado 2021.1" *)
module design_1_pot_to_const_0_0(clk, reset, kp_vaux_p, kp_vaux_n, ki_vaux_p, 
  ki_vaux_n, kd_vaux_p, kd_vaux_n, k_p, k_i, k_d, channel_out, check_rst)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,kp_vaux_p,kp_vaux_n,ki_vaux_p,ki_vaux_n,kd_vaux_p,kd_vaux_n,k_p[11:0],k_i[11:0],k_d[11:0],channel_out[4:0],check_rst[0:0]" */;
  input clk;
  input reset;
  input kp_vaux_p;
  input kp_vaux_n;
  input ki_vaux_p;
  input ki_vaux_n;
  input kd_vaux_p;
  input kd_vaux_n;
  output [11:0]k_p;
  output [11:0]k_i;
  output [11:0]k_d;
  output [4:0]channel_out;
  output [0:0]check_rst;
endmodule
