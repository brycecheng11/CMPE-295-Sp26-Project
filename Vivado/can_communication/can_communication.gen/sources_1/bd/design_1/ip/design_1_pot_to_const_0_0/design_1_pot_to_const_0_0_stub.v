// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Sep 16 16:43:28 2026
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
  ki_vaux_n, kd_vaux_p, kd_vaux_n, k_p, k_i, k_d, debug_reset, debug_xadc_data, debug_eoc, 
  debug_drdy, debug_daddr, debug_read_index)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,kp_vaux_p,kp_vaux_n,ki_vaux_p,ki_vaux_n,kd_vaux_p,kd_vaux_n,k_p[11:0],k_i[11:0],k_d[11:0],debug_reset,debug_xadc_data[15:0],debug_eoc,debug_drdy,debug_daddr[6:0],debug_read_index[1:0]" */;
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
  output debug_reset;
  output [15:0]debug_xadc_data;
  output debug_eoc;
  output debug_drdy;
  output [6:0]debug_daddr;
  output [1:0]debug_read_index;
endmodule
