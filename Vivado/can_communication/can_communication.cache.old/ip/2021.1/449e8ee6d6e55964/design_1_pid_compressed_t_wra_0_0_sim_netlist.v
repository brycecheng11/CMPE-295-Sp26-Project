// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct 13 15:02:42 2026
// Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pid_compressed_t_wra_0_0_sim_netlist.v
// Design      : design_1_pid_compressed_t_wra_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pid_compressed_t_wra_0_0,pid_compressed_t_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "pid_compressed_t_wrapper,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (angle_0,
    kd_0,
    ki_0,
    kp_0,
    new_target_angle_available_0,
    new_velocity_available_0,
    output_velocity_0,
    sys_clk,
    target_angle_0);
  input [31:0]angle_0;
  input [11:0]kd_0;
  input [11:0]ki_0;
  input [11:0]kp_0;
  input [0:0]new_target_angle_available_0;
  output [0:0]new_velocity_available_0;
  output [31:0]output_velocity_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]sys_clk;
  input [31:0]target_angle_0;

  wire [31:0]angle_0;
  wire [11:0]kd_0;
  wire [11:0]ki_0;
  wire [11:0]kp_0;
  wire [0:0]new_target_angle_available_0;
  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire [0:0]sys_clk;
  wire [31:0]target_angle_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_wrapper inst
       (.angle_0(angle_0),
        .kd_0(kd_0[11:4]),
        .ki_0(ki_0[11:4]),
        .kp_0(kp_0[11:4]),
        .new_target_angle_available_0(new_target_angle_available_0),
        .new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(output_velocity_0),
        .sys_clk(sys_clk),
        .target_angle_0(target_angle_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_calc
   (output_velocity_0,
    new_velocity_available_0,
    angle_0,
    new_target_angle_available_0,
    target_angle_0,
    sys_clk,
    ki_0,
    kd_0,
    kp_0);
  output [31:0]output_velocity_0;
  output [0:0]new_velocity_available_0;
  input [31:0]angle_0;
  input [0:0]new_target_angle_available_0;
  input [31:0]target_angle_0;
  input [0:0]sys_clk;
  input [7:0]ki_0;
  input [7:0]kd_0;
  input [7:0]kp_0;

  wire [31:0]angle_0;
  wire d_term0_n_10;
  wire d_term0_n_100;
  wire d_term0_n_101;
  wire d_term0_n_102;
  wire d_term0_n_103;
  wire d_term0_n_104;
  wire d_term0_n_105;
  wire d_term0_n_106;
  wire d_term0_n_107;
  wire d_term0_n_108;
  wire d_term0_n_109;
  wire d_term0_n_11;
  wire d_term0_n_110;
  wire d_term0_n_111;
  wire d_term0_n_112;
  wire d_term0_n_113;
  wire d_term0_n_114;
  wire d_term0_n_115;
  wire d_term0_n_116;
  wire d_term0_n_117;
  wire d_term0_n_118;
  wire d_term0_n_119;
  wire d_term0_n_12;
  wire d_term0_n_120;
  wire d_term0_n_121;
  wire d_term0_n_122;
  wire d_term0_n_123;
  wire d_term0_n_124;
  wire d_term0_n_125;
  wire d_term0_n_126;
  wire d_term0_n_127;
  wire d_term0_n_128;
  wire d_term0_n_129;
  wire d_term0_n_13;
  wire d_term0_n_130;
  wire d_term0_n_131;
  wire d_term0_n_132;
  wire d_term0_n_133;
  wire d_term0_n_134;
  wire d_term0_n_135;
  wire d_term0_n_136;
  wire d_term0_n_137;
  wire d_term0_n_138;
  wire d_term0_n_139;
  wire d_term0_n_14;
  wire d_term0_n_140;
  wire d_term0_n_141;
  wire d_term0_n_142;
  wire d_term0_n_143;
  wire d_term0_n_144;
  wire d_term0_n_145;
  wire d_term0_n_146;
  wire d_term0_n_147;
  wire d_term0_n_148;
  wire d_term0_n_149;
  wire d_term0_n_15;
  wire d_term0_n_150;
  wire d_term0_n_151;
  wire d_term0_n_152;
  wire d_term0_n_153;
  wire d_term0_n_16;
  wire d_term0_n_17;
  wire d_term0_n_18;
  wire d_term0_n_19;
  wire d_term0_n_20;
  wire d_term0_n_21;
  wire d_term0_n_22;
  wire d_term0_n_23;
  wire d_term0_n_58;
  wire d_term0_n_59;
  wire d_term0_n_6;
  wire d_term0_n_60;
  wire d_term0_n_61;
  wire d_term0_n_62;
  wire d_term0_n_63;
  wire d_term0_n_64;
  wire d_term0_n_65;
  wire d_term0_n_66;
  wire d_term0_n_67;
  wire d_term0_n_68;
  wire d_term0_n_69;
  wire d_term0_n_7;
  wire d_term0_n_70;
  wire d_term0_n_71;
  wire d_term0_n_72;
  wire d_term0_n_73;
  wire d_term0_n_74;
  wire d_term0_n_75;
  wire d_term0_n_76;
  wire d_term0_n_77;
  wire d_term0_n_78;
  wire d_term0_n_79;
  wire d_term0_n_8;
  wire d_term0_n_80;
  wire d_term0_n_81;
  wire d_term0_n_82;
  wire d_term0_n_83;
  wire d_term0_n_84;
  wire d_term0_n_85;
  wire d_term0_n_86;
  wire d_term0_n_87;
  wire d_term0_n_88;
  wire d_term0_n_89;
  wire d_term0_n_9;
  wire d_term0_n_90;
  wire d_term0_n_91;
  wire d_term0_n_92;
  wire d_term0_n_93;
  wire d_term0_n_94;
  wire d_term0_n_95;
  wire d_term0_n_96;
  wire d_term0_n_97;
  wire d_term0_n_98;
  wire d_term0_n_99;
  wire [40:0]\^d_term_reg ;
  wire d_term_reg_n_58;
  wire d_term_reg_n_59;
  wire d_term_reg_n_60;
  wire d_term_reg_n_61;
  wire d_term_reg_n_62;
  wire d_term_reg_n_63;
  wire d_term_reg_n_64;
  wire d_term_reg_n_65;
  wire d_term_reg_n_66;
  wire d_term_reg_n_67;
  wire d_term_reg_n_68;
  wire d_term_reg_n_69;
  wire d_term_reg_n_70;
  wire d_term_reg_n_71;
  wire d_term_reg_n_72;
  wire d_term_reg_n_73;
  wire d_term_reg_n_74;
  wire d_term_reg_n_75;
  wire d_term_reg_n_76;
  wire d_term_reg_n_77;
  wire d_term_reg_n_78;
  wire d_term_reg_n_79;
  wire d_term_reg_n_80;
  wire d_term_reg_n_81;
  wire derivative0__0_carry__0_i_1_n_0;
  wire derivative0__0_carry__0_i_2_n_0;
  wire derivative0__0_carry__0_i_3_n_0;
  wire derivative0__0_carry__0_i_4_n_0;
  wire derivative0__0_carry__0_i_5_n_0;
  wire derivative0__0_carry__0_i_6_n_0;
  wire derivative0__0_carry__0_i_7_n_0;
  wire derivative0__0_carry__0_i_8_n_0;
  wire derivative0__0_carry__0_n_0;
  wire derivative0__0_carry__0_n_1;
  wire derivative0__0_carry__0_n_2;
  wire derivative0__0_carry__0_n_3;
  wire derivative0__0_carry__0_n_4;
  wire derivative0__0_carry__0_n_5;
  wire derivative0__0_carry__0_n_6;
  wire derivative0__0_carry__0_n_7;
  wire derivative0__0_carry__1_i_1_n_0;
  wire derivative0__0_carry__1_i_2_n_0;
  wire derivative0__0_carry__1_i_3_n_0;
  wire derivative0__0_carry__1_i_4_n_0;
  wire derivative0__0_carry__1_i_5_n_0;
  wire derivative0__0_carry__1_i_6_n_0;
  wire derivative0__0_carry__1_i_7_n_0;
  wire derivative0__0_carry__1_i_8_n_0;
  wire derivative0__0_carry__1_n_0;
  wire derivative0__0_carry__1_n_1;
  wire derivative0__0_carry__1_n_2;
  wire derivative0__0_carry__1_n_3;
  wire derivative0__0_carry__1_n_4;
  wire derivative0__0_carry__1_n_5;
  wire derivative0__0_carry__1_n_6;
  wire derivative0__0_carry__1_n_7;
  wire derivative0__0_carry__2_i_1_n_0;
  wire derivative0__0_carry__2_i_2_n_0;
  wire derivative0__0_carry__2_i_3_n_0;
  wire derivative0__0_carry__2_i_4_n_0;
  wire derivative0__0_carry__2_i_5_n_0;
  wire derivative0__0_carry__2_i_6_n_0;
  wire derivative0__0_carry__2_i_7_n_0;
  wire derivative0__0_carry__2_i_8_n_0;
  wire derivative0__0_carry__2_n_0;
  wire derivative0__0_carry__2_n_1;
  wire derivative0__0_carry__2_n_2;
  wire derivative0__0_carry__2_n_3;
  wire derivative0__0_carry__2_n_4;
  wire derivative0__0_carry__2_n_5;
  wire derivative0__0_carry__2_n_6;
  wire derivative0__0_carry__2_n_7;
  wire derivative0__0_carry__3_i_1_n_0;
  wire derivative0__0_carry__3_i_2_n_0;
  wire derivative0__0_carry__3_i_3_n_0;
  wire derivative0__0_carry__3_i_4_n_0;
  wire derivative0__0_carry__3_i_5_n_0;
  wire derivative0__0_carry__3_i_6_n_0;
  wire derivative0__0_carry__3_i_7_n_0;
  wire derivative0__0_carry__3_i_8_n_0;
  wire derivative0__0_carry__3_n_0;
  wire derivative0__0_carry__3_n_1;
  wire derivative0__0_carry__3_n_2;
  wire derivative0__0_carry__3_n_3;
  wire derivative0__0_carry__3_n_4;
  wire derivative0__0_carry__3_n_5;
  wire derivative0__0_carry__3_n_6;
  wire derivative0__0_carry__3_n_7;
  wire derivative0__0_carry__4_i_1_n_0;
  wire derivative0__0_carry__4_i_2_n_0;
  wire derivative0__0_carry__4_i_3_n_0;
  wire derivative0__0_carry__4_i_4_n_0;
  wire derivative0__0_carry__4_i_5_n_0;
  wire derivative0__0_carry__4_i_6_n_0;
  wire derivative0__0_carry__4_i_7_n_0;
  wire derivative0__0_carry__4_i_8_n_0;
  wire derivative0__0_carry__4_n_0;
  wire derivative0__0_carry__4_n_1;
  wire derivative0__0_carry__4_n_2;
  wire derivative0__0_carry__4_n_3;
  wire derivative0__0_carry__4_n_4;
  wire derivative0__0_carry__4_n_5;
  wire derivative0__0_carry__4_n_6;
  wire derivative0__0_carry__4_n_7;
  wire derivative0__0_carry__5_i_1_n_0;
  wire derivative0__0_carry__5_i_2_n_0;
  wire derivative0__0_carry__5_i_3_n_0;
  wire derivative0__0_carry__5_i_4_n_0;
  wire derivative0__0_carry__5_i_5_n_0;
  wire derivative0__0_carry__5_i_6_n_0;
  wire derivative0__0_carry__5_i_7_n_0;
  wire derivative0__0_carry__5_n_1;
  wire derivative0__0_carry__5_n_2;
  wire derivative0__0_carry__5_n_3;
  wire derivative0__0_carry__5_n_4;
  wire derivative0__0_carry__5_n_5;
  wire derivative0__0_carry__5_n_6;
  wire derivative0__0_carry__5_n_7;
  wire derivative0__0_carry_i_1_n_0;
  wire derivative0__0_carry_i_2_n_0;
  wire derivative0__0_carry_i_3_n_0;
  wire derivative0__0_carry_i_4_n_0;
  wire derivative0__0_carry_i_5_n_0;
  wire derivative0__0_carry_i_6_n_0;
  wire derivative0__0_carry_i_7_n_0;
  wire derivative0__0_carry_n_0;
  wire derivative0__0_carry_n_1;
  wire derivative0__0_carry_n_2;
  wire derivative0__0_carry_n_3;
  wire derivative0__0_carry_n_4;
  wire derivative0__0_carry_n_5;
  wire derivative0__0_carry_n_6;
  wire derivative0__0_carry_n_7;
  wire [2:0]derivative1;
  wire [30:3]derivative1__0;
  wire derivative1_carry__0_i_1_n_0;
  wire derivative1_carry__0_i_2_n_0;
  wire derivative1_carry__0_i_3_n_0;
  wire derivative1_carry__0_i_4_n_0;
  wire derivative1_carry__0_n_0;
  wire derivative1_carry__0_n_1;
  wire derivative1_carry__0_n_2;
  wire derivative1_carry__0_n_3;
  wire derivative1_carry__1_i_1_n_0;
  wire derivative1_carry__1_i_2_n_0;
  wire derivative1_carry__1_i_3_n_0;
  wire derivative1_carry__1_i_4_n_0;
  wire derivative1_carry__1_n_0;
  wire derivative1_carry__1_n_1;
  wire derivative1_carry__1_n_2;
  wire derivative1_carry__1_n_3;
  wire derivative1_carry__2_i_1_n_0;
  wire derivative1_carry__2_i_2_n_0;
  wire derivative1_carry__2_i_3_n_0;
  wire derivative1_carry__2_i_4_n_0;
  wire derivative1_carry__2_n_0;
  wire derivative1_carry__2_n_1;
  wire derivative1_carry__2_n_2;
  wire derivative1_carry__2_n_3;
  wire derivative1_carry__3_i_1_n_0;
  wire derivative1_carry__3_i_2_n_0;
  wire derivative1_carry__3_i_3_n_0;
  wire derivative1_carry__3_i_4_n_0;
  wire derivative1_carry__3_n_0;
  wire derivative1_carry__3_n_1;
  wire derivative1_carry__3_n_2;
  wire derivative1_carry__3_n_3;
  wire derivative1_carry__4_i_1_n_0;
  wire derivative1_carry__4_i_2_n_0;
  wire derivative1_carry__4_i_3_n_0;
  wire derivative1_carry__4_i_4_n_0;
  wire derivative1_carry__4_n_0;
  wire derivative1_carry__4_n_1;
  wire derivative1_carry__4_n_2;
  wire derivative1_carry__4_n_3;
  wire derivative1_carry__5_i_1_n_0;
  wire derivative1_carry__5_i_2_n_0;
  wire derivative1_carry__5_i_3_n_0;
  wire derivative1_carry__5_i_4_n_0;
  wire derivative1_carry__5_n_0;
  wire derivative1_carry__5_n_1;
  wire derivative1_carry__5_n_2;
  wire derivative1_carry__5_n_3;
  wire derivative1_carry__6_i_1_n_0;
  wire derivative1_carry__6_i_2_n_0;
  wire derivative1_carry__6_i_3_n_0;
  wire derivative1_carry__6_n_2;
  wire derivative1_carry__6_n_3;
  wire derivative1_carry_i_1_n_0;
  wire derivative1_carry_i_2_n_0;
  wire derivative1_carry_i_3_n_0;
  wire derivative1_carry_i_4_n_0;
  wire derivative1_carry_n_0;
  wire derivative1_carry_n_1;
  wire derivative1_carry_n_2;
  wire derivative1_carry_n_3;
  wire [31:0]error;
  wire [31:0]error0;
  wire error0_carry__0_i_1_n_0;
  wire error0_carry__0_i_2_n_0;
  wire error0_carry__0_i_3_n_0;
  wire error0_carry__0_i_4_n_0;
  wire error0_carry__0_n_0;
  wire error0_carry__0_n_1;
  wire error0_carry__0_n_2;
  wire error0_carry__0_n_3;
  wire error0_carry__1_i_1_n_0;
  wire error0_carry__1_i_2_n_0;
  wire error0_carry__1_i_3_n_0;
  wire error0_carry__1_i_4_n_0;
  wire error0_carry__1_n_0;
  wire error0_carry__1_n_1;
  wire error0_carry__1_n_2;
  wire error0_carry__1_n_3;
  wire error0_carry__2_i_1_n_0;
  wire error0_carry__2_i_2_n_0;
  wire error0_carry__2_i_3_n_0;
  wire error0_carry__2_i_4_n_0;
  wire error0_carry__2_n_0;
  wire error0_carry__2_n_1;
  wire error0_carry__2_n_2;
  wire error0_carry__2_n_3;
  wire error0_carry__3_i_1_n_0;
  wire error0_carry__3_i_2_n_0;
  wire error0_carry__3_i_3_n_0;
  wire error0_carry__3_i_4_n_0;
  wire error0_carry__3_n_0;
  wire error0_carry__3_n_1;
  wire error0_carry__3_n_2;
  wire error0_carry__3_n_3;
  wire error0_carry__4_i_1_n_0;
  wire error0_carry__4_i_2_n_0;
  wire error0_carry__4_i_3_n_0;
  wire error0_carry__4_i_4_n_0;
  wire error0_carry__4_n_0;
  wire error0_carry__4_n_1;
  wire error0_carry__4_n_2;
  wire error0_carry__4_n_3;
  wire error0_carry__5_i_1_n_0;
  wire error0_carry__5_i_2_n_0;
  wire error0_carry__5_i_3_n_0;
  wire error0_carry__5_i_4_n_0;
  wire error0_carry__5_n_0;
  wire error0_carry__5_n_1;
  wire error0_carry__5_n_2;
  wire error0_carry__5_n_3;
  wire error0_carry__6_i_1_n_0;
  wire error0_carry__6_i_2_n_0;
  wire error0_carry__6_i_3_n_0;
  wire error0_carry__6_i_4_n_0;
  wire error0_carry__6_n_1;
  wire error0_carry__6_n_2;
  wire error0_carry__6_n_3;
  wire error0_carry_i_1_n_0;
  wire error0_carry_i_2_n_0;
  wire error0_carry_i_3_n_0;
  wire error0_carry_i_4_n_0;
  wire error0_carry_n_0;
  wire error0_carry_n_1;
  wire error0_carry_n_2;
  wire error0_carry_n_3;
  wire [30:0]error_prev;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_10_n_1;
  wire i__carry__0_i_10_n_2;
  wire i__carry__0_i_10_n_3;
  wire i__carry__0_i_10_n_4;
  wire i__carry__0_i_10_n_5;
  wire i__carry__0_i_10_n_6;
  wire i__carry__0_i_10_n_7;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_17_n_0;
  wire i__carry__0_i_18_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__0_i_9_n_1;
  wire i__carry__0_i_9_n_2;
  wire i__carry__0_i_9_n_3;
  wire i__carry__0_i_9_n_4;
  wire i__carry__0_i_9_n_5;
  wire i__carry__0_i_9_n_6;
  wire i__carry__0_i_9_n_7;
  wire i__carry__1_i_10_n_0;
  wire i__carry__1_i_10_n_1;
  wire i__carry__1_i_10_n_2;
  wire i__carry__1_i_10_n_3;
  wire i__carry__1_i_10_n_4;
  wire i__carry__1_i_10_n_5;
  wire i__carry__1_i_10_n_6;
  wire i__carry__1_i_10_n_7;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_12_n_0;
  wire i__carry__1_i_13_n_0;
  wire i__carry__1_i_14_n_0;
  wire i__carry__1_i_15_n_0;
  wire i__carry__1_i_16_n_0;
  wire i__carry__1_i_17_n_0;
  wire i__carry__1_i_18_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__1_i_9_n_1;
  wire i__carry__1_i_9_n_2;
  wire i__carry__1_i_9_n_3;
  wire i__carry__1_i_9_n_4;
  wire i__carry__1_i_9_n_5;
  wire i__carry__1_i_9_n_6;
  wire i__carry__1_i_9_n_7;
  wire i__carry__2_i_10_n_0;
  wire i__carry__2_i_10_n_1;
  wire i__carry__2_i_10_n_2;
  wire i__carry__2_i_10_n_3;
  wire i__carry__2_i_10_n_4;
  wire i__carry__2_i_10_n_5;
  wire i__carry__2_i_10_n_6;
  wire i__carry__2_i_10_n_7;
  wire i__carry__2_i_11_n_0;
  wire i__carry__2_i_12_n_0;
  wire i__carry__2_i_13_n_0;
  wire i__carry__2_i_14_n_0;
  wire i__carry__2_i_15_n_0;
  wire i__carry__2_i_16_n_0;
  wire i__carry__2_i_17_n_0;
  wire i__carry__2_i_18_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__2_i_9_n_0;
  wire i__carry__2_i_9_n_1;
  wire i__carry__2_i_9_n_2;
  wire i__carry__2_i_9_n_3;
  wire i__carry__2_i_9_n_4;
  wire i__carry__2_i_9_n_5;
  wire i__carry__2_i_9_n_6;
  wire i__carry__2_i_9_n_7;
  wire i__carry__3_i_10_n_0;
  wire i__carry__3_i_10_n_1;
  wire i__carry__3_i_10_n_2;
  wire i__carry__3_i_10_n_3;
  wire i__carry__3_i_10_n_4;
  wire i__carry__3_i_10_n_5;
  wire i__carry__3_i_10_n_6;
  wire i__carry__3_i_10_n_7;
  wire i__carry__3_i_11_n_0;
  wire i__carry__3_i_12_n_0;
  wire i__carry__3_i_13_n_0;
  wire i__carry__3_i_14_n_0;
  wire i__carry__3_i_15_n_0;
  wire i__carry__3_i_16_n_0;
  wire i__carry__3_i_17_n_0;
  wire i__carry__3_i_18_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_6_n_0;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_8_n_0;
  wire i__carry__3_i_9_n_0;
  wire i__carry__3_i_9_n_1;
  wire i__carry__3_i_9_n_2;
  wire i__carry__3_i_9_n_3;
  wire i__carry__3_i_9_n_4;
  wire i__carry__3_i_9_n_5;
  wire i__carry__3_i_9_n_6;
  wire i__carry__3_i_9_n_7;
  wire i__carry__4_i_10_n_0;
  wire i__carry__4_i_10_n_1;
  wire i__carry__4_i_10_n_2;
  wire i__carry__4_i_10_n_3;
  wire i__carry__4_i_10_n_4;
  wire i__carry__4_i_10_n_5;
  wire i__carry__4_i_10_n_6;
  wire i__carry__4_i_10_n_7;
  wire i__carry__4_i_11_n_0;
  wire i__carry__4_i_12_n_0;
  wire i__carry__4_i_13_n_0;
  wire i__carry__4_i_14_n_0;
  wire i__carry__4_i_15_n_0;
  wire i__carry__4_i_16_n_0;
  wire i__carry__4_i_17_n_0;
  wire i__carry__4_i_18_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__4_i_5_n_0;
  wire i__carry__4_i_6_n_0;
  wire i__carry__4_i_7_n_0;
  wire i__carry__4_i_8_n_0;
  wire i__carry__4_i_9_n_0;
  wire i__carry__4_i_9_n_1;
  wire i__carry__4_i_9_n_2;
  wire i__carry__4_i_9_n_3;
  wire i__carry__4_i_9_n_4;
  wire i__carry__4_i_9_n_5;
  wire i__carry__4_i_9_n_6;
  wire i__carry__4_i_9_n_7;
  wire i__carry__5_i_10_n_0;
  wire i__carry__5_i_10_n_1;
  wire i__carry__5_i_10_n_2;
  wire i__carry__5_i_10_n_3;
  wire i__carry__5_i_10_n_4;
  wire i__carry__5_i_10_n_5;
  wire i__carry__5_i_10_n_6;
  wire i__carry__5_i_10_n_7;
  wire i__carry__5_i_11_n_0;
  wire i__carry__5_i_12_n_0;
  wire i__carry__5_i_13_n_0;
  wire i__carry__5_i_14_n_0;
  wire i__carry__5_i_15_n_0;
  wire i__carry__5_i_16_n_0;
  wire i__carry__5_i_17_n_0;
  wire i__carry__5_i_18_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__5_i_5_n_0;
  wire i__carry__5_i_6_n_0;
  wire i__carry__5_i_7_n_0;
  wire i__carry__5_i_8_n_0;
  wire i__carry__5_i_9_n_0;
  wire i__carry__5_i_9_n_1;
  wire i__carry__5_i_9_n_2;
  wire i__carry__5_i_9_n_3;
  wire i__carry__5_i_9_n_4;
  wire i__carry__5_i_9_n_5;
  wire i__carry__5_i_9_n_6;
  wire i__carry__5_i_9_n_7;
  wire i__carry__6_i_10_n_0;
  wire i__carry__6_i_10_n_1;
  wire i__carry__6_i_10_n_2;
  wire i__carry__6_i_10_n_3;
  wire i__carry__6_i_10_n_4;
  wire i__carry__6_i_10_n_5;
  wire i__carry__6_i_10_n_6;
  wire i__carry__6_i_10_n_7;
  wire i__carry__6_i_11_n_0;
  wire i__carry__6_i_12_n_0;
  wire i__carry__6_i_13_n_0;
  wire i__carry__6_i_14_n_0;
  wire i__carry__6_i_15_n_0;
  wire i__carry__6_i_16_n_0;
  wire i__carry__6_i_17_n_0;
  wire i__carry__6_i_18_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__6_i_5_n_0;
  wire i__carry__6_i_6_n_0;
  wire i__carry__6_i_7_n_0;
  wire i__carry__6_i_8_n_0;
  wire i__carry__6_i_9_n_0;
  wire i__carry__6_i_9_n_1;
  wire i__carry__6_i_9_n_2;
  wire i__carry__6_i_9_n_3;
  wire i__carry__6_i_9_n_4;
  wire i__carry__6_i_9_n_5;
  wire i__carry__6_i_9_n_6;
  wire i__carry__6_i_9_n_7;
  wire i__carry__7_i_10_n_0;
  wire i__carry__7_i_10_n_1;
  wire i__carry__7_i_10_n_2;
  wire i__carry__7_i_10_n_3;
  wire i__carry__7_i_10_n_4;
  wire i__carry__7_i_10_n_5;
  wire i__carry__7_i_10_n_6;
  wire i__carry__7_i_10_n_7;
  wire i__carry__7_i_11_n_0;
  wire i__carry__7_i_12_n_0;
  wire i__carry__7_i_13_n_0;
  wire i__carry__7_i_14_n_0;
  wire i__carry__7_i_15_n_0;
  wire i__carry__7_i_16_n_0;
  wire i__carry__7_i_17_n_0;
  wire i__carry__7_i_18_n_0;
  wire i__carry__7_i_1_n_0;
  wire i__carry__7_i_2_n_0;
  wire i__carry__7_i_3_n_0;
  wire i__carry__7_i_4_n_0;
  wire i__carry__7_i_5_n_0;
  wire i__carry__7_i_6_n_0;
  wire i__carry__7_i_7_n_0;
  wire i__carry__7_i_8_n_0;
  wire i__carry__7_i_9_n_0;
  wire i__carry__7_i_9_n_1;
  wire i__carry__7_i_9_n_2;
  wire i__carry__7_i_9_n_3;
  wire i__carry__7_i_9_n_4;
  wire i__carry__7_i_9_n_5;
  wire i__carry__7_i_9_n_6;
  wire i__carry__7_i_9_n_7;
  wire i__carry__8_i_1_n_0;
  wire i__carry__8_i_2_n_0;
  wire i__carry__8_i_3_n_3;
  wire i__carry__8_i_3_n_6;
  wire i__carry__8_i_3_n_7;
  wire i__carry__8_i_4_n_0;
  wire i__carry__8_i_5_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_2_n_1;
  wire i__carry_i_2_n_2;
  wire i__carry_i_2_n_3;
  wire i__carry_i_2_n_4;
  wire i__carry_i_2_n_5;
  wire i__carry_i_2_n_6;
  wire i__carry_i_2_n_7;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire i__carry_i_9_n_1;
  wire i__carry_i_9_n_2;
  wire i__carry_i_9_n_3;
  wire i__carry_i_9_n_4;
  wire i__carry_i_9_n_5;
  wire i__carry_i_9_n_6;
  wire i__carry_i_9_n_7;
  wire i_term0_n_10;
  wire i_term0_n_100;
  wire i_term0_n_101;
  wire i_term0_n_102;
  wire i_term0_n_103;
  wire i_term0_n_104;
  wire i_term0_n_105;
  wire i_term0_n_106;
  wire i_term0_n_107;
  wire i_term0_n_108;
  wire i_term0_n_109;
  wire i_term0_n_11;
  wire i_term0_n_110;
  wire i_term0_n_111;
  wire i_term0_n_112;
  wire i_term0_n_113;
  wire i_term0_n_114;
  wire i_term0_n_115;
  wire i_term0_n_116;
  wire i_term0_n_117;
  wire i_term0_n_118;
  wire i_term0_n_119;
  wire i_term0_n_12;
  wire i_term0_n_120;
  wire i_term0_n_121;
  wire i_term0_n_122;
  wire i_term0_n_123;
  wire i_term0_n_124;
  wire i_term0_n_125;
  wire i_term0_n_126;
  wire i_term0_n_127;
  wire i_term0_n_128;
  wire i_term0_n_129;
  wire i_term0_n_13;
  wire i_term0_n_130;
  wire i_term0_n_131;
  wire i_term0_n_132;
  wire i_term0_n_133;
  wire i_term0_n_134;
  wire i_term0_n_135;
  wire i_term0_n_136;
  wire i_term0_n_137;
  wire i_term0_n_138;
  wire i_term0_n_139;
  wire i_term0_n_14;
  wire i_term0_n_140;
  wire i_term0_n_141;
  wire i_term0_n_142;
  wire i_term0_n_143;
  wire i_term0_n_144;
  wire i_term0_n_145;
  wire i_term0_n_146;
  wire i_term0_n_147;
  wire i_term0_n_148;
  wire i_term0_n_149;
  wire i_term0_n_15;
  wire i_term0_n_150;
  wire i_term0_n_151;
  wire i_term0_n_152;
  wire i_term0_n_153;
  wire i_term0_n_16;
  wire i_term0_n_17;
  wire i_term0_n_18;
  wire i_term0_n_19;
  wire i_term0_n_20;
  wire i_term0_n_21;
  wire i_term0_n_22;
  wire i_term0_n_23;
  wire i_term0_n_58;
  wire i_term0_n_59;
  wire i_term0_n_6;
  wire i_term0_n_60;
  wire i_term0_n_61;
  wire i_term0_n_62;
  wire i_term0_n_63;
  wire i_term0_n_64;
  wire i_term0_n_65;
  wire i_term0_n_66;
  wire i_term0_n_67;
  wire i_term0_n_68;
  wire i_term0_n_69;
  wire i_term0_n_7;
  wire i_term0_n_70;
  wire i_term0_n_71;
  wire i_term0_n_72;
  wire i_term0_n_73;
  wire i_term0_n_74;
  wire i_term0_n_75;
  wire i_term0_n_76;
  wire i_term0_n_77;
  wire i_term0_n_78;
  wire i_term0_n_79;
  wire i_term0_n_8;
  wire i_term0_n_80;
  wire i_term0_n_81;
  wire i_term0_n_82;
  wire i_term0_n_83;
  wire i_term0_n_84;
  wire i_term0_n_85;
  wire i_term0_n_86;
  wire i_term0_n_87;
  wire i_term0_n_88;
  wire i_term0_n_89;
  wire i_term0_n_9;
  wire i_term0_n_90;
  wire i_term0_n_91;
  wire i_term0_n_92;
  wire i_term0_n_93;
  wire i_term0_n_94;
  wire i_term0_n_95;
  wire i_term0_n_96;
  wire i_term0_n_97;
  wire i_term0_n_98;
  wire i_term0_n_99;
  wire [40:0]\^i_term_reg ;
  wire i_term_reg_n_58;
  wire i_term_reg_n_59;
  wire i_term_reg_n_60;
  wire i_term_reg_n_61;
  wire i_term_reg_n_62;
  wire i_term_reg_n_63;
  wire i_term_reg_n_64;
  wire i_term_reg_n_65;
  wire i_term_reg_n_66;
  wire i_term_reg_n_67;
  wire i_term_reg_n_68;
  wire i_term_reg_n_69;
  wire i_term_reg_n_70;
  wire i_term_reg_n_71;
  wire i_term_reg_n_72;
  wire i_term_reg_n_73;
  wire i_term_reg_n_74;
  wire i_term_reg_n_75;
  wire i_term_reg_n_76;
  wire i_term_reg_n_77;
  wire i_term_reg_n_78;
  wire i_term_reg_n_79;
  wire i_term_reg_n_80;
  wire i_term_reg_n_81;
  wire [31:0]integral;
  wire integral1__0_n_0;
  wire integral1__0_n_1;
  wire integral1__0_n_2;
  wire integral1__0_n_3;
  wire integral1__10_n_0;
  wire integral1__10_n_1;
  wire integral1__10_n_2;
  wire integral1__10_n_3;
  wire integral1__10_n_4;
  wire integral1__10_n_5;
  wire integral1__10_n_6;
  wire integral1__10_n_7;
  wire integral1__11_n_0;
  wire integral1__11_n_1;
  wire integral1__11_n_2;
  wire integral1__11_n_3;
  wire integral1__11_n_4;
  wire integral1__11_n_5;
  wire integral1__11_n_6;
  wire integral1__11_n_7;
  wire integral1__12_n_0;
  wire integral1__12_n_1;
  wire integral1__12_n_2;
  wire integral1__12_n_3;
  wire integral1__12_n_4;
  wire integral1__12_n_5;
  wire integral1__12_n_6;
  wire integral1__12_n_7;
  wire integral1__13_n_0;
  wire integral1__13_n_1;
  wire integral1__13_n_2;
  wire integral1__13_n_3;
  wire integral1__13_n_4;
  wire integral1__13_n_5;
  wire integral1__13_n_6;
  wire integral1__13_n_7;
  wire integral1__14_n_0;
  wire integral1__14_n_1;
  wire integral1__14_n_2;
  wire integral1__14_n_3;
  wire integral1__14_n_4;
  wire integral1__14_n_5;
  wire integral1__14_n_6;
  wire integral1__14_n_7;
  wire integral1__15_n_0;
  wire integral1__15_n_1;
  wire integral1__15_n_2;
  wire integral1__15_n_3;
  wire integral1__15_n_4;
  wire integral1__15_n_5;
  wire integral1__15_n_6;
  wire integral1__15_n_7;
  wire integral1__16_n_0;
  wire integral1__16_n_2;
  wire integral1__16_n_3;
  wire integral1__16_n_5;
  wire integral1__16_n_6;
  wire integral1__16_n_7;
  wire integral1__17_n_0;
  wire integral1__17_n_1;
  wire integral1__17_n_2;
  wire integral1__17_n_3;
  wire integral1__17_n_4;
  wire integral1__17_n_5;
  wire integral1__17_n_6;
  wire integral1__17_n_7;
  wire integral1__18_n_0;
  wire integral1__18_n_1;
  wire integral1__18_n_2;
  wire integral1__18_n_3;
  wire integral1__18_n_4;
  wire integral1__18_n_5;
  wire integral1__18_n_6;
  wire integral1__18_n_7;
  wire integral1__19_n_0;
  wire integral1__19_n_1;
  wire integral1__19_n_2;
  wire integral1__19_n_3;
  wire integral1__19_n_4;
  wire integral1__19_n_5;
  wire integral1__19_n_6;
  wire integral1__19_n_7;
  wire integral1__1_n_0;
  wire integral1__1_n_1;
  wire integral1__1_n_2;
  wire integral1__1_n_3;
  wire integral1__1_n_4;
  wire integral1__1_n_5;
  wire integral1__1_n_6;
  wire integral1__1_n_7;
  wire integral1__20_n_0;
  wire integral1__20_n_1;
  wire integral1__20_n_2;
  wire integral1__20_n_3;
  wire integral1__20_n_4;
  wire integral1__20_n_5;
  wire integral1__20_n_6;
  wire integral1__20_n_7;
  wire integral1__21_n_0;
  wire integral1__21_n_1;
  wire integral1__21_n_2;
  wire integral1__21_n_3;
  wire integral1__21_n_4;
  wire integral1__21_n_5;
  wire integral1__21_n_6;
  wire integral1__21_n_7;
  wire integral1__22_n_0;
  wire integral1__22_n_1;
  wire integral1__22_n_2;
  wire integral1__22_n_3;
  wire integral1__22_n_4;
  wire integral1__22_n_5;
  wire integral1__22_n_6;
  wire integral1__22_n_7;
  wire integral1__23_n_0;
  wire integral1__23_n_1;
  wire integral1__23_n_2;
  wire integral1__23_n_3;
  wire integral1__23_n_4;
  wire integral1__23_n_5;
  wire integral1__23_n_6;
  wire integral1__23_n_7;
  wire integral1__24_n_0;
  wire integral1__24_n_1;
  wire integral1__24_n_2;
  wire integral1__24_n_3;
  wire integral1__24_n_4;
  wire integral1__24_n_5;
  wire integral1__24_n_6;
  wire integral1__24_n_7;
  wire integral1__25_n_0;
  wire integral1__25_n_2;
  wire integral1__25_n_3;
  wire integral1__25_n_5;
  wire integral1__25_n_6;
  wire integral1__25_n_7;
  wire integral1__26_n_0;
  wire integral1__26_n_1;
  wire integral1__26_n_2;
  wire integral1__26_n_3;
  wire integral1__26_n_4;
  wire integral1__26_n_5;
  wire integral1__26_n_6;
  wire integral1__27_n_0;
  wire integral1__27_n_1;
  wire integral1__27_n_2;
  wire integral1__27_n_3;
  wire integral1__27_n_4;
  wire integral1__27_n_5;
  wire integral1__27_n_6;
  wire integral1__27_n_7;
  wire integral1__28_n_0;
  wire integral1__28_n_1;
  wire integral1__28_n_2;
  wire integral1__28_n_3;
  wire integral1__28_n_4;
  wire integral1__28_n_5;
  wire integral1__28_n_6;
  wire integral1__28_n_7;
  wire integral1__29_n_0;
  wire integral1__29_n_1;
  wire integral1__29_n_2;
  wire integral1__29_n_3;
  wire integral1__29_n_4;
  wire integral1__29_n_5;
  wire integral1__29_n_6;
  wire integral1__29_n_7;
  wire integral1__2_n_0;
  wire integral1__2_n_1;
  wire integral1__2_n_2;
  wire integral1__2_n_3;
  wire integral1__2_n_4;
  wire integral1__2_n_5;
  wire integral1__2_n_6;
  wire integral1__2_n_7;
  wire integral1__30_n_0;
  wire integral1__30_n_1;
  wire integral1__30_n_2;
  wire integral1__30_n_3;
  wire integral1__30_n_4;
  wire integral1__30_n_5;
  wire integral1__30_n_6;
  wire integral1__30_n_7;
  wire integral1__31_n_0;
  wire integral1__31_n_1;
  wire integral1__31_n_2;
  wire integral1__31_n_3;
  wire integral1__31_n_4;
  wire integral1__31_n_5;
  wire integral1__31_n_6;
  wire integral1__31_n_7;
  wire integral1__32_n_0;
  wire integral1__32_n_1;
  wire integral1__32_n_2;
  wire integral1__32_n_3;
  wire integral1__32_n_4;
  wire integral1__32_n_5;
  wire integral1__32_n_6;
  wire integral1__32_n_7;
  wire integral1__33_n_0;
  wire integral1__33_n_1;
  wire integral1__33_n_2;
  wire integral1__33_n_3;
  wire integral1__33_n_4;
  wire integral1__33_n_5;
  wire integral1__33_n_6;
  wire integral1__33_n_7;
  wire integral1__34_n_0;
  wire integral1__34_n_1;
  wire integral1__34_n_2;
  wire integral1__34_n_3;
  wire integral1__34_n_4;
  wire integral1__34_n_5;
  wire integral1__34_n_6;
  wire integral1__34_n_7;
  wire integral1__35_n_1;
  wire integral1__35_n_3;
  wire integral1__35_n_6;
  wire integral1__35_n_7;
  wire integral1__36_n_0;
  wire integral1__36_n_1;
  wire integral1__36_n_2;
  wire integral1__36_n_3;
  wire integral1__37_n_0;
  wire integral1__37_n_1;
  wire integral1__37_n_2;
  wire integral1__37_n_3;
  wire integral1__37_n_4;
  wire integral1__37_n_5;
  wire integral1__37_n_6;
  wire integral1__37_n_7;
  wire integral1__38_n_0;
  wire integral1__38_n_1;
  wire integral1__38_n_2;
  wire integral1__38_n_3;
  wire integral1__38_n_4;
  wire integral1__38_n_5;
  wire integral1__38_n_6;
  wire integral1__38_n_7;
  wire integral1__39_n_0;
  wire integral1__39_n_1;
  wire integral1__39_n_2;
  wire integral1__39_n_3;
  wire integral1__39_n_4;
  wire integral1__39_n_5;
  wire integral1__39_n_6;
  wire integral1__39_n_7;
  wire integral1__3_n_0;
  wire integral1__3_n_1;
  wire integral1__3_n_2;
  wire integral1__3_n_3;
  wire integral1__3_n_4;
  wire integral1__3_n_5;
  wire integral1__3_n_6;
  wire integral1__3_n_7;
  wire integral1__40_n_0;
  wire integral1__40_n_1;
  wire integral1__40_n_2;
  wire integral1__40_n_3;
  wire integral1__40_n_4;
  wire integral1__40_n_5;
  wire integral1__40_n_6;
  wire integral1__40_n_7;
  wire integral1__41_n_0;
  wire integral1__41_n_1;
  wire integral1__41_n_2;
  wire integral1__41_n_3;
  wire integral1__41_n_4;
  wire integral1__41_n_5;
  wire integral1__41_n_6;
  wire integral1__41_n_7;
  wire integral1__42_n_0;
  wire integral1__42_n_1;
  wire integral1__42_n_2;
  wire integral1__42_n_3;
  wire integral1__42_n_4;
  wire integral1__42_n_5;
  wire integral1__42_n_6;
  wire integral1__42_n_7;
  wire integral1__43_n_0;
  wire integral1__43_n_1;
  wire integral1__43_n_2;
  wire integral1__43_n_3;
  wire integral1__43_n_4;
  wire integral1__43_n_5;
  wire integral1__43_n_6;
  wire integral1__43_n_7;
  wire integral1__44_n_0;
  wire integral1__44_n_1;
  wire integral1__44_n_2;
  wire integral1__44_n_3;
  wire integral1__44_n_4;
  wire integral1__44_n_5;
  wire integral1__44_n_6;
  wire integral1__44_n_7;
  wire integral1__45_n_0;
  wire integral1__45_n_1;
  wire integral1__45_n_2;
  wire integral1__45_n_3;
  wire integral1__45_n_4;
  wire integral1__45_n_5;
  wire integral1__45_n_6;
  wire integral1__45_n_7;
  wire integral1__46_n_0;
  wire integral1__46_n_1;
  wire integral1__46_n_2;
  wire integral1__46_n_3;
  wire integral1__46_n_4;
  wire integral1__46_n_5;
  wire integral1__46_n_6;
  wire integral1__46_n_7;
  wire integral1__47_n_1;
  wire integral1__47_n_2;
  wire integral1__47_n_3;
  wire integral1__47_n_4;
  wire integral1__47_n_5;
  wire integral1__47_n_6;
  wire integral1__47_n_7;
  wire integral1__48_n_0;
  wire integral1__48_n_1;
  wire integral1__48_n_2;
  wire integral1__48_n_3;
  wire integral1__49_n_0;
  wire integral1__49_n_1;
  wire integral1__49_n_2;
  wire integral1__49_n_3;
  wire integral1__4_n_0;
  wire integral1__4_n_1;
  wire integral1__4_n_2;
  wire integral1__4_n_3;
  wire integral1__4_n_4;
  wire integral1__4_n_5;
  wire integral1__4_n_6;
  wire integral1__4_n_7;
  wire integral1__50_n_0;
  wire integral1__50_n_1;
  wire integral1__50_n_2;
  wire integral1__50_n_3;
  wire integral1__51_n_0;
  wire integral1__51_n_1;
  wire integral1__51_n_2;
  wire integral1__51_n_3;
  wire integral1__52_n_0;
  wire integral1__52_n_1;
  wire integral1__52_n_2;
  wire integral1__52_n_3;
  wire integral1__52_n_4;
  wire integral1__52_n_5;
  wire integral1__52_n_6;
  wire integral1__52_n_7;
  wire integral1__53_n_0;
  wire integral1__53_n_1;
  wire integral1__53_n_2;
  wire integral1__53_n_3;
  wire integral1__53_n_4;
  wire integral1__53_n_5;
  wire integral1__53_n_6;
  wire integral1__53_n_7;
  wire integral1__54_n_0;
  wire integral1__54_n_1;
  wire integral1__54_n_2;
  wire integral1__54_n_3;
  wire integral1__54_n_4;
  wire integral1__54_n_5;
  wire integral1__54_n_6;
  wire integral1__54_n_7;
  wire integral1__55_n_0;
  wire integral1__55_n_1;
  wire integral1__55_n_2;
  wire integral1__55_n_3;
  wire integral1__55_n_4;
  wire integral1__55_n_5;
  wire integral1__55_n_6;
  wire integral1__55_n_7;
  wire integral1__56_n_0;
  wire integral1__56_n_1;
  wire integral1__56_n_2;
  wire integral1__56_n_3;
  wire integral1__56_n_4;
  wire integral1__56_n_5;
  wire integral1__56_n_6;
  wire integral1__56_n_7;
  wire integral1__57_n_0;
  wire integral1__57_n_1;
  wire integral1__57_n_2;
  wire integral1__57_n_3;
  wire integral1__57_n_4;
  wire integral1__57_n_5;
  wire integral1__57_n_6;
  wire integral1__57_n_7;
  wire integral1__58_n_2;
  wire integral1__58_n_3;
  wire integral1__58_n_5;
  wire integral1__58_n_6;
  wire integral1__58_n_7;
  wire integral1__59_n_0;
  wire integral1__59_n_1;
  wire integral1__59_n_2;
  wire integral1__59_n_3;
  wire integral1__59_n_4;
  wire integral1__59_n_5;
  wire integral1__59_n_6;
  wire integral1__59_n_7;
  wire integral1__5_n_0;
  wire integral1__5_n_1;
  wire integral1__5_n_2;
  wire integral1__5_n_3;
  wire integral1__5_n_4;
  wire integral1__5_n_5;
  wire integral1__5_n_6;
  wire integral1__5_n_7;
  wire integral1__60_n_0;
  wire integral1__60_n_1;
  wire integral1__60_n_2;
  wire integral1__60_n_3;
  wire integral1__60_n_4;
  wire integral1__60_n_5;
  wire integral1__60_n_6;
  wire integral1__60_n_7;
  wire integral1__61_n_0;
  wire integral1__61_n_1;
  wire integral1__61_n_2;
  wire integral1__61_n_3;
  wire integral1__61_n_4;
  wire integral1__61_n_5;
  wire integral1__61_n_6;
  wire integral1__61_n_7;
  wire integral1__62_n_0;
  wire integral1__62_n_1;
  wire integral1__62_n_2;
  wire integral1__62_n_3;
  wire integral1__62_n_4;
  wire integral1__62_n_5;
  wire integral1__62_n_6;
  wire integral1__62_n_7;
  wire integral1__63_n_0;
  wire integral1__63_n_1;
  wire integral1__63_n_2;
  wire integral1__63_n_3;
  wire integral1__63_n_4;
  wire integral1__63_n_5;
  wire integral1__63_n_6;
  wire integral1__63_n_7;
  wire integral1__64_n_0;
  wire integral1__64_n_1;
  wire integral1__64_n_2;
  wire integral1__64_n_3;
  wire integral1__64_n_4;
  wire integral1__64_n_5;
  wire integral1__64_n_6;
  wire integral1__64_n_7;
  wire integral1__65_n_1;
  wire integral1__65_n_2;
  wire integral1__65_n_3;
  wire integral1__65_n_4;
  wire integral1__65_n_5;
  wire integral1__65_n_6;
  wire integral1__65_n_7;
  wire integral1__66_n_0;
  wire integral1__66_n_1;
  wire integral1__66_n_2;
  wire integral1__66_n_3;
  wire integral1__67_n_0;
  wire integral1__67_n_1;
  wire integral1__67_n_2;
  wire integral1__67_n_3;
  wire integral1__68_n_0;
  wire integral1__68_n_1;
  wire integral1__68_n_2;
  wire integral1__68_n_3;
  wire integral1__69_n_0;
  wire integral1__69_n_1;
  wire integral1__69_n_2;
  wire integral1__69_n_3;
  wire integral1__6_n_0;
  wire integral1__6_n_1;
  wire integral1__6_n_2;
  wire integral1__6_n_3;
  wire integral1__6_n_4;
  wire integral1__6_n_5;
  wire integral1__6_n_6;
  wire integral1__6_n_7;
  wire integral1__70_n_0;
  wire integral1__70_n_1;
  wire integral1__70_n_2;
  wire integral1__70_n_3;
  wire integral1__71_n_0;
  wire integral1__71_n_1;
  wire integral1__71_n_2;
  wire integral1__71_n_3;
  wire integral1__72_n_0;
  wire integral1__72_n_1;
  wire integral1__72_n_2;
  wire integral1__72_n_3;
  wire integral1__73_n_2;
  wire integral1__73_n_3;
  wire integral1__74_n_0;
  wire integral1__74_n_1;
  wire integral1__74_n_2;
  wire integral1__74_n_3;
  wire integral1__74_n_4;
  wire integral1__74_n_5;
  wire integral1__74_n_6;
  wire integral1__74_n_7;
  wire integral1__75_n_0;
  wire integral1__75_n_1;
  wire integral1__75_n_2;
  wire integral1__75_n_3;
  wire integral1__75_n_4;
  wire integral1__75_n_5;
  wire integral1__75_n_6;
  wire integral1__75_n_7;
  wire integral1__76_n_0;
  wire integral1__76_n_1;
  wire integral1__76_n_2;
  wire integral1__76_n_3;
  wire integral1__76_n_4;
  wire integral1__76_n_5;
  wire integral1__76_n_6;
  wire integral1__76_n_7;
  wire integral1__77_n_0;
  wire integral1__77_n_1;
  wire integral1__77_n_2;
  wire integral1__77_n_3;
  wire integral1__77_n_4;
  wire integral1__77_n_5;
  wire integral1__77_n_6;
  wire integral1__77_n_7;
  wire integral1__78_n_0;
  wire integral1__78_n_1;
  wire integral1__78_n_2;
  wire integral1__78_n_3;
  wire integral1__78_n_4;
  wire integral1__78_n_5;
  wire integral1__78_n_6;
  wire integral1__78_n_7;
  wire integral1__79_n_0;
  wire integral1__79_n_1;
  wire integral1__79_n_2;
  wire integral1__79_n_3;
  wire integral1__79_n_4;
  wire integral1__79_n_5;
  wire integral1__79_n_6;
  wire integral1__79_n_7;
  wire integral1__7_n_0;
  wire integral1__7_n_2;
  wire integral1__7_n_3;
  wire integral1__7_n_5;
  wire integral1__7_n_6;
  wire integral1__7_n_7;
  wire integral1__80_n_2;
  wire integral1__80_n_3;
  wire integral1__80_n_5;
  wire integral1__80_n_6;
  wire integral1__80_n_7;
  wire integral1__8_n_0;
  wire integral1__8_n_1;
  wire integral1__8_n_2;
  wire integral1__8_n_3;
  wire integral1__8_n_4;
  wire integral1__8_n_5;
  wire integral1__8_n_6;
  wire integral1__8_n_7;
  wire integral1__9_n_0;
  wire integral1__9_n_1;
  wire integral1__9_n_2;
  wire integral1__9_n_3;
  wire integral1__9_n_4;
  wire integral1__9_n_5;
  wire integral1__9_n_6;
  wire integral1__9_n_7;
  wire integral1_i_1__0_n_0;
  wire integral1_i_1__10_n_0;
  wire integral1_i_1__11_n_0;
  wire integral1_i_1__12_n_0;
  wire integral1_i_1__13_n_0;
  wire integral1_i_1__14_n_0;
  wire integral1_i_1__15_n_0;
  wire integral1_i_1__16_n_0;
  wire integral1_i_1__17_n_0;
  wire integral1_i_1__18_n_0;
  wire integral1_i_1__19_n_0;
  wire integral1_i_1__1_n_0;
  wire integral1_i_1__20_n_0;
  wire integral1_i_1__21_n_0;
  wire integral1_i_1__22_n_0;
  wire integral1_i_1__23_n_0;
  wire integral1_i_1__24_n_0;
  wire integral1_i_1__25_n_0;
  wire integral1_i_1__26_n_0;
  wire integral1_i_1__27_n_0;
  wire integral1_i_1__28_n_0;
  wire integral1_i_1__29_n_0;
  wire integral1_i_1__2_n_0;
  wire integral1_i_1__30_n_0;
  wire integral1_i_1__31_n_0;
  wire integral1_i_1__32_n_0;
  wire integral1_i_1__33_n_0;
  wire integral1_i_1__34_n_0;
  wire integral1_i_1__35_n_0;
  wire integral1_i_1__36_n_0;
  wire integral1_i_1__37_n_0;
  wire integral1_i_1__38_n_0;
  wire integral1_i_1__39_n_0;
  wire integral1_i_1__3_n_0;
  wire integral1_i_1__40_n_0;
  wire integral1_i_1__41_n_0;
  wire integral1_i_1__42_n_0;
  wire integral1_i_1__43_n_0;
  wire integral1_i_1__44_n_0;
  wire integral1_i_1__45_n_0;
  wire integral1_i_1__46_n_0;
  wire integral1_i_1__47_n_0;
  wire integral1_i_1__48_n_0;
  wire integral1_i_1__49_n_0;
  wire integral1_i_1__4_n_0;
  wire integral1_i_1__50_n_0;
  wire integral1_i_1__51_n_0;
  wire integral1_i_1__52_n_0;
  wire integral1_i_1__53_n_0;
  wire integral1_i_1__54_n_0;
  wire integral1_i_1__55_n_0;
  wire integral1_i_1__56_n_0;
  wire integral1_i_1__57_n_0;
  wire integral1_i_1__58_n_0;
  wire integral1_i_1__59_n_0;
  wire integral1_i_1__5_n_0;
  wire integral1_i_1__60_n_0;
  wire integral1_i_1__61_n_0;
  wire integral1_i_1__62_n_0;
  wire integral1_i_1__63_n_0;
  wire integral1_i_1__64_n_0;
  wire integral1_i_1__65_n_0;
  wire integral1_i_1__66_n_0;
  wire integral1_i_1__67_n_0;
  wire integral1_i_1__68_n_0;
  wire integral1_i_1__69_n_0;
  wire integral1_i_1__6_n_0;
  wire integral1_i_1__70_n_0;
  wire integral1_i_1__71_n_0;
  wire integral1_i_1__72_n_0;
  wire integral1_i_1__73_n_0;
  wire integral1_i_1__74_n_0;
  wire integral1_i_1__7_n_0;
  wire integral1_i_1__8_n_0;
  wire integral1_i_1__9_n_0;
  wire integral1_i_1_n_0;
  wire integral1_i_2__0_n_0;
  wire integral1_i_2__10_n_0;
  wire integral1_i_2__11_n_0;
  wire integral1_i_2__12_n_0;
  wire integral1_i_2__13_n_0;
  wire integral1_i_2__14_n_0;
  wire integral1_i_2__15_n_0;
  wire integral1_i_2__16_n_0;
  wire integral1_i_2__17_n_0;
  wire integral1_i_2__18_n_0;
  wire integral1_i_2__19_n_0;
  wire integral1_i_2__1_n_0;
  wire integral1_i_2__20_n_0;
  wire integral1_i_2__21_n_0;
  wire integral1_i_2__22_n_0;
  wire integral1_i_2__23_n_0;
  wire integral1_i_2__24_n_0;
  wire integral1_i_2__25_n_0;
  wire integral1_i_2__26_n_0;
  wire integral1_i_2__27_n_0;
  wire integral1_i_2__28_n_0;
  wire integral1_i_2__29_n_0;
  wire integral1_i_2__2_n_0;
  wire integral1_i_2__30_n_0;
  wire integral1_i_2__31_n_0;
  wire integral1_i_2__32_n_0;
  wire integral1_i_2__33_n_0;
  wire integral1_i_2__34_n_0;
  wire integral1_i_2__35_n_0;
  wire integral1_i_2__36_n_0;
  wire integral1_i_2__37_n_0;
  wire integral1_i_2__38_n_0;
  wire integral1_i_2__39_n_0;
  wire integral1_i_2__3_n_0;
  wire integral1_i_2__40_n_0;
  wire integral1_i_2__41_n_0;
  wire integral1_i_2__42_n_0;
  wire integral1_i_2__43_n_0;
  wire integral1_i_2__44_n_0;
  wire integral1_i_2__45_n_0;
  wire integral1_i_2__46_n_0;
  wire integral1_i_2__47_n_0;
  wire integral1_i_2__48_n_0;
  wire integral1_i_2__49_n_0;
  wire integral1_i_2__4_n_0;
  wire integral1_i_2__50_n_0;
  wire integral1_i_2__51_n_0;
  wire integral1_i_2__52_n_0;
  wire integral1_i_2__53_n_0;
  wire integral1_i_2__54_n_0;
  wire integral1_i_2__55_n_0;
  wire integral1_i_2__56_n_0;
  wire integral1_i_2__57_n_0;
  wire integral1_i_2__58_n_0;
  wire integral1_i_2__59_n_0;
  wire integral1_i_2__5_n_0;
  wire integral1_i_2__60_n_0;
  wire integral1_i_2__61_n_0;
  wire integral1_i_2__62_n_0;
  wire integral1_i_2__63_n_0;
  wire integral1_i_2__64_n_0;
  wire integral1_i_2__65_n_0;
  wire integral1_i_2__66_n_0;
  wire integral1_i_2__67_n_0;
  wire integral1_i_2__68_n_0;
  wire integral1_i_2__69_n_0;
  wire integral1_i_2__6_n_0;
  wire integral1_i_2__70_n_0;
  wire integral1_i_2__71_n_0;
  wire integral1_i_2__72_n_0;
  wire integral1_i_2__73_n_0;
  wire integral1_i_2__7_n_0;
  wire integral1_i_2__8_n_0;
  wire integral1_i_2__9_n_0;
  wire integral1_i_2_n_0;
  wire integral1_i_3__0_n_0;
  wire integral1_i_3__10_n_0;
  wire integral1_i_3__11_n_0;
  wire integral1_i_3__12_n_0;
  wire integral1_i_3__13_n_0;
  wire integral1_i_3__14_n_0;
  wire integral1_i_3__15_n_0;
  wire integral1_i_3__16_n_0;
  wire integral1_i_3__17_n_0;
  wire integral1_i_3__18_n_0;
  wire integral1_i_3__19_n_0;
  wire integral1_i_3__1_n_0;
  wire integral1_i_3__20_n_0;
  wire integral1_i_3__21_n_0;
  wire integral1_i_3__22_n_0;
  wire integral1_i_3__23_n_0;
  wire integral1_i_3__24_n_0;
  wire integral1_i_3__25_n_0;
  wire integral1_i_3__26_n_0;
  wire integral1_i_3__27_n_0;
  wire integral1_i_3__28_n_0;
  wire integral1_i_3__29_n_0;
  wire integral1_i_3__2_n_0;
  wire integral1_i_3__30_n_0;
  wire integral1_i_3__31_n_0;
  wire integral1_i_3__32_n_0;
  wire integral1_i_3__33_n_0;
  wire integral1_i_3__34_n_0;
  wire integral1_i_3__35_n_0;
  wire integral1_i_3__36_n_0;
  wire integral1_i_3__37_n_0;
  wire integral1_i_3__38_n_0;
  wire integral1_i_3__39_n_0;
  wire integral1_i_3__3_n_0;
  wire integral1_i_3__40_n_0;
  wire integral1_i_3__41_n_0;
  wire integral1_i_3__42_n_0;
  wire integral1_i_3__43_n_0;
  wire integral1_i_3__44_n_0;
  wire integral1_i_3__45_n_0;
  wire integral1_i_3__46_n_0;
  wire integral1_i_3__47_n_0;
  wire integral1_i_3__48_n_0;
  wire integral1_i_3__49_n_0;
  wire integral1_i_3__4_n_0;
  wire integral1_i_3__50_n_0;
  wire integral1_i_3__51_n_0;
  wire integral1_i_3__52_n_0;
  wire integral1_i_3__53_n_0;
  wire integral1_i_3__54_n_0;
  wire integral1_i_3__55_n_0;
  wire integral1_i_3__56_n_0;
  wire integral1_i_3__57_n_0;
  wire integral1_i_3__58_n_0;
  wire integral1_i_3__59_n_0;
  wire integral1_i_3__5_n_0;
  wire integral1_i_3__60_n_0;
  wire integral1_i_3__61_n_0;
  wire integral1_i_3__62_n_0;
  wire integral1_i_3__63_n_0;
  wire integral1_i_3__64_n_0;
  wire integral1_i_3__65_n_0;
  wire integral1_i_3__66_n_0;
  wire integral1_i_3__67_n_0;
  wire integral1_i_3__68_n_0;
  wire integral1_i_3__69_n_0;
  wire integral1_i_3__6_n_0;
  wire integral1_i_3__70_n_0;
  wire integral1_i_3__71_n_0;
  wire integral1_i_3__72_n_0;
  wire integral1_i_3__7_n_0;
  wire integral1_i_3__8_n_0;
  wire integral1_i_3__9_n_0;
  wire integral1_i_3_n_0;
  wire integral1_i_4__0_n_0;
  wire integral1_i_4__10_n_0;
  wire integral1_i_4__11_n_0;
  wire integral1_i_4__12_n_0;
  wire integral1_i_4__13_n_0;
  wire integral1_i_4__14_n_0;
  wire integral1_i_4__15_n_0;
  wire integral1_i_4__16_n_0;
  wire integral1_i_4__17_n_0;
  wire integral1_i_4__18_n_0;
  wire integral1_i_4__19_n_0;
  wire integral1_i_4__1_n_0;
  wire integral1_i_4__20_n_0;
  wire integral1_i_4__21_n_0;
  wire integral1_i_4__22_n_0;
  wire integral1_i_4__23_n_0;
  wire integral1_i_4__24_n_0;
  wire integral1_i_4__25_n_0;
  wire integral1_i_4__26_n_0;
  wire integral1_i_4__27_n_0;
  wire integral1_i_4__28_n_0;
  wire integral1_i_4__29_n_0;
  wire integral1_i_4__2_n_0;
  wire integral1_i_4__30_n_0;
  wire integral1_i_4__31_n_0;
  wire integral1_i_4__32_n_0;
  wire integral1_i_4__33_n_0;
  wire integral1_i_4__34_n_0;
  wire integral1_i_4__35_n_0;
  wire integral1_i_4__36_n_0;
  wire integral1_i_4__37_n_0;
  wire integral1_i_4__38_n_0;
  wire integral1_i_4__39_n_0;
  wire integral1_i_4__3_n_0;
  wire integral1_i_4__40_n_0;
  wire integral1_i_4__41_n_0;
  wire integral1_i_4__42_n_0;
  wire integral1_i_4__43_n_0;
  wire integral1_i_4__44_n_0;
  wire integral1_i_4__45_n_0;
  wire integral1_i_4__46_n_0;
  wire integral1_i_4__47_n_0;
  wire integral1_i_4__48_n_0;
  wire integral1_i_4__49_n_0;
  wire integral1_i_4__4_n_0;
  wire integral1_i_4__50_n_0;
  wire integral1_i_4__51_n_0;
  wire integral1_i_4__52_n_0;
  wire integral1_i_4__53_n_0;
  wire integral1_i_4__54_n_0;
  wire integral1_i_4__55_n_0;
  wire integral1_i_4__56_n_0;
  wire integral1_i_4__57_n_0;
  wire integral1_i_4__58_n_0;
  wire integral1_i_4__59_n_0;
  wire integral1_i_4__5_n_0;
  wire integral1_i_4__60_n_0;
  wire integral1_i_4__61_n_0;
  wire integral1_i_4__62_n_0;
  wire integral1_i_4__63_n_0;
  wire integral1_i_4__64_n_0;
  wire integral1_i_4__65_n_0;
  wire integral1_i_4__66_n_0;
  wire integral1_i_4__67_n_0;
  wire integral1_i_4__6_n_0;
  wire integral1_i_4__7_n_0;
  wire integral1_i_4__8_n_0;
  wire integral1_i_4__9_n_0;
  wire integral1_i_4_n_0;
  wire integral1_i_5__0_n_0;
  wire integral1_i_5__10_n_0;
  wire integral1_i_5__11_n_0;
  wire integral1_i_5__12_n_0;
  wire integral1_i_5__13_n_0;
  wire integral1_i_5__14_n_0;
  wire integral1_i_5__15_n_0;
  wire integral1_i_5__16_n_0;
  wire integral1_i_5__17_n_0;
  wire integral1_i_5__18_n_0;
  wire integral1_i_5__19_n_0;
  wire integral1_i_5__1_n_0;
  wire integral1_i_5__20_n_0;
  wire integral1_i_5__21_n_0;
  wire integral1_i_5__22_n_0;
  wire integral1_i_5__23_n_0;
  wire integral1_i_5__24_n_0;
  wire integral1_i_5__25_n_0;
  wire integral1_i_5__26_n_0;
  wire integral1_i_5__27_n_0;
  wire integral1_i_5__28_n_0;
  wire integral1_i_5__29_n_0;
  wire integral1_i_5__2_n_0;
  wire integral1_i_5__30_n_0;
  wire integral1_i_5__31_n_0;
  wire integral1_i_5__32_n_0;
  wire integral1_i_5__33_n_0;
  wire integral1_i_5__34_n_0;
  wire integral1_i_5__35_n_0;
  wire integral1_i_5__36_n_0;
  wire integral1_i_5__37_n_0;
  wire integral1_i_5__38_n_0;
  wire integral1_i_5__39_n_0;
  wire integral1_i_5__3_n_0;
  wire integral1_i_5__40_n_0;
  wire integral1_i_5__41_n_0;
  wire integral1_i_5__42_n_0;
  wire integral1_i_5__43_n_0;
  wire integral1_i_5__44_n_0;
  wire integral1_i_5__45_n_0;
  wire integral1_i_5__46_n_0;
  wire integral1_i_5__47_n_0;
  wire integral1_i_5__48_n_0;
  wire integral1_i_5__49_n_0;
  wire integral1_i_5__4_n_0;
  wire integral1_i_5__50_n_0;
  wire integral1_i_5__51_n_0;
  wire integral1_i_5__52_n_0;
  wire integral1_i_5__53_n_0;
  wire integral1_i_5__54_n_0;
  wire integral1_i_5__5_n_0;
  wire integral1_i_5__6_n_0;
  wire integral1_i_5__7_n_0;
  wire integral1_i_5__8_n_0;
  wire integral1_i_5__9_n_0;
  wire integral1_i_5_n_0;
  wire integral1_i_6__0_n_0;
  wire integral1_i_6__10_n_0;
  wire integral1_i_6__11_n_0;
  wire integral1_i_6__12_n_0;
  wire integral1_i_6__13_n_0;
  wire integral1_i_6__14_n_0;
  wire integral1_i_6__15_n_0;
  wire integral1_i_6__16_n_0;
  wire integral1_i_6__17_n_0;
  wire integral1_i_6__18_n_0;
  wire integral1_i_6__19_n_0;
  wire integral1_i_6__1_n_0;
  wire integral1_i_6__20_n_0;
  wire integral1_i_6__21_n_0;
  wire integral1_i_6__22_n_0;
  wire integral1_i_6__23_n_0;
  wire integral1_i_6__24_n_0;
  wire integral1_i_6__25_n_0;
  wire integral1_i_6__26_n_0;
  wire integral1_i_6__27_n_0;
  wire integral1_i_6__28_n_0;
  wire integral1_i_6__29_n_0;
  wire integral1_i_6__2_n_0;
  wire integral1_i_6__30_n_0;
  wire integral1_i_6__31_n_0;
  wire integral1_i_6__32_n_0;
  wire integral1_i_6__33_n_0;
  wire integral1_i_6__34_n_0;
  wire integral1_i_6__35_n_0;
  wire integral1_i_6__36_n_0;
  wire integral1_i_6__37_n_0;
  wire integral1_i_6__38_n_0;
  wire integral1_i_6__39_n_0;
  wire integral1_i_6__3_n_0;
  wire integral1_i_6__40_n_0;
  wire integral1_i_6__41_n_0;
  wire integral1_i_6__42_n_0;
  wire integral1_i_6__43_n_0;
  wire integral1_i_6__44_n_0;
  wire integral1_i_6__45_n_0;
  wire integral1_i_6__46_n_0;
  wire integral1_i_6__47_n_0;
  wire integral1_i_6__48_n_0;
  wire integral1_i_6__49_n_0;
  wire integral1_i_6__4_n_0;
  wire integral1_i_6__50_n_0;
  wire integral1_i_6__51_n_0;
  wire integral1_i_6__52_n_0;
  wire integral1_i_6__53_n_0;
  wire integral1_i_6__5_n_0;
  wire integral1_i_6__6_n_0;
  wire integral1_i_6__7_n_0;
  wire integral1_i_6__8_n_0;
  wire integral1_i_6__9_n_0;
  wire integral1_i_6_n_0;
  wire integral1_i_7__0_n_0;
  wire integral1_i_7__10_n_0;
  wire integral1_i_7__11_n_0;
  wire integral1_i_7__12_n_0;
  wire integral1_i_7__13_n_0;
  wire integral1_i_7__14_n_0;
  wire integral1_i_7__15_n_0;
  wire integral1_i_7__16_n_0;
  wire integral1_i_7__17_n_0;
  wire integral1_i_7__18_n_0;
  wire integral1_i_7__19_n_0;
  wire integral1_i_7__1_n_0;
  wire integral1_i_7__20_n_0;
  wire integral1_i_7__21_n_0;
  wire integral1_i_7__22_n_0;
  wire integral1_i_7__23_n_0;
  wire integral1_i_7__24_n_0;
  wire integral1_i_7__25_n_0;
  wire integral1_i_7__26_n_0;
  wire integral1_i_7__27_n_0;
  wire integral1_i_7__28_n_0;
  wire integral1_i_7__29_n_0;
  wire integral1_i_7__2_n_0;
  wire integral1_i_7__30_n_0;
  wire integral1_i_7__31_n_0;
  wire integral1_i_7__32_n_0;
  wire integral1_i_7__33_n_0;
  wire integral1_i_7__34_n_0;
  wire integral1_i_7__35_n_0;
  wire integral1_i_7__36_n_0;
  wire integral1_i_7__37_n_0;
  wire integral1_i_7__38_n_0;
  wire integral1_i_7__39_n_0;
  wire integral1_i_7__3_n_0;
  wire integral1_i_7__40_n_0;
  wire integral1_i_7__41_n_0;
  wire integral1_i_7__42_n_0;
  wire integral1_i_7__43_n_0;
  wire integral1_i_7__44_n_0;
  wire integral1_i_7__45_n_0;
  wire integral1_i_7__46_n_0;
  wire integral1_i_7__47_n_0;
  wire integral1_i_7__48_n_0;
  wire integral1_i_7__49_n_0;
  wire integral1_i_7__4_n_0;
  wire integral1_i_7__50_n_0;
  wire integral1_i_7__51_n_0;
  wire integral1_i_7__52_n_0;
  wire integral1_i_7__5_n_0;
  wire integral1_i_7__6_n_0;
  wire integral1_i_7__7_n_0;
  wire integral1_i_7__8_n_0;
  wire integral1_i_7__9_n_0;
  wire integral1_i_7_n_0;
  wire integral1_i_8__0_n_0;
  wire integral1_i_8__10_n_0;
  wire integral1_i_8__11_n_0;
  wire integral1_i_8__12_n_0;
  wire integral1_i_8__13_n_0;
  wire integral1_i_8__14_n_0;
  wire integral1_i_8__15_n_0;
  wire integral1_i_8__16_n_0;
  wire integral1_i_8__17_n_0;
  wire integral1_i_8__18_n_0;
  wire integral1_i_8__19_n_0;
  wire integral1_i_8__1_n_0;
  wire integral1_i_8__20_n_0;
  wire integral1_i_8__21_n_0;
  wire integral1_i_8__22_n_0;
  wire integral1_i_8__23_n_0;
  wire integral1_i_8__24_n_0;
  wire integral1_i_8__25_n_0;
  wire integral1_i_8__26_n_0;
  wire integral1_i_8__27_n_0;
  wire integral1_i_8__28_n_0;
  wire integral1_i_8__29_n_0;
  wire integral1_i_8__2_n_0;
  wire integral1_i_8__30_n_0;
  wire integral1_i_8__31_n_0;
  wire integral1_i_8__32_n_0;
  wire integral1_i_8__33_n_0;
  wire integral1_i_8__34_n_0;
  wire integral1_i_8__35_n_0;
  wire integral1_i_8__36_n_0;
  wire integral1_i_8__37_n_0;
  wire integral1_i_8__38_n_0;
  wire integral1_i_8__39_n_0;
  wire integral1_i_8__3_n_0;
  wire integral1_i_8__40_n_0;
  wire integral1_i_8__41_n_0;
  wire integral1_i_8__42_n_0;
  wire integral1_i_8__43_n_0;
  wire integral1_i_8__44_n_0;
  wire integral1_i_8__45_n_0;
  wire integral1_i_8__46_n_0;
  wire integral1_i_8__47_n_0;
  wire integral1_i_8__4_n_0;
  wire integral1_i_8__5_n_0;
  wire integral1_i_8__6_n_0;
  wire integral1_i_8__7_n_0;
  wire integral1_i_8__8_n_0;
  wire integral1_i_8__9_n_0;
  wire integral1_i_8_n_0;
  wire integral1_n_0;
  wire integral1_n_1;
  wire integral1_n_2;
  wire integral1_n_3;
  wire \integral[11]_i_2_n_0 ;
  wire \integral[11]_i_3_n_0 ;
  wire \integral[11]_i_4_n_0 ;
  wire \integral[11]_i_5_n_0 ;
  wire \integral[15]_i_2_n_0 ;
  wire \integral[15]_i_3_n_0 ;
  wire \integral[15]_i_4_n_0 ;
  wire \integral[15]_i_5_n_0 ;
  wire \integral[19]_i_2_n_0 ;
  wire \integral[19]_i_3_n_0 ;
  wire \integral[19]_i_4_n_0 ;
  wire \integral[19]_i_5_n_0 ;
  wire \integral[23]_i_2_n_0 ;
  wire \integral[23]_i_3_n_0 ;
  wire \integral[23]_i_4_n_0 ;
  wire \integral[23]_i_5_n_0 ;
  wire \integral[27]_i_2_n_0 ;
  wire \integral[27]_i_3_n_0 ;
  wire \integral[27]_i_4_n_0 ;
  wire \integral[3]_i_2_n_0 ;
  wire \integral[3]_i_3_n_0 ;
  wire \integral[3]_i_4_n_0 ;
  wire \integral[3]_i_5_n_0 ;
  wire \integral[7]_i_2_n_0 ;
  wire \integral[7]_i_3_n_0 ;
  wire \integral[7]_i_4_n_0 ;
  wire \integral[7]_i_5_n_0 ;
  wire [31:0]integral_prev;
  wire \integral_reg[11]_i_1_n_0 ;
  wire \integral_reg[11]_i_1_n_1 ;
  wire \integral_reg[11]_i_1_n_2 ;
  wire \integral_reg[11]_i_1_n_3 ;
  wire \integral_reg[11]_i_1_n_4 ;
  wire \integral_reg[11]_i_1_n_5 ;
  wire \integral_reg[11]_i_1_n_6 ;
  wire \integral_reg[11]_i_1_n_7 ;
  wire \integral_reg[15]_i_1_n_0 ;
  wire \integral_reg[15]_i_1_n_1 ;
  wire \integral_reg[15]_i_1_n_2 ;
  wire \integral_reg[15]_i_1_n_3 ;
  wire \integral_reg[15]_i_1_n_4 ;
  wire \integral_reg[15]_i_1_n_5 ;
  wire \integral_reg[15]_i_1_n_6 ;
  wire \integral_reg[15]_i_1_n_7 ;
  wire \integral_reg[19]_i_1_n_0 ;
  wire \integral_reg[19]_i_1_n_1 ;
  wire \integral_reg[19]_i_1_n_2 ;
  wire \integral_reg[19]_i_1_n_3 ;
  wire \integral_reg[19]_i_1_n_4 ;
  wire \integral_reg[19]_i_1_n_5 ;
  wire \integral_reg[19]_i_1_n_6 ;
  wire \integral_reg[19]_i_1_n_7 ;
  wire \integral_reg[23]_i_1_n_0 ;
  wire \integral_reg[23]_i_1_n_1 ;
  wire \integral_reg[23]_i_1_n_2 ;
  wire \integral_reg[23]_i_1_n_3 ;
  wire \integral_reg[23]_i_1_n_4 ;
  wire \integral_reg[23]_i_1_n_5 ;
  wire \integral_reg[23]_i_1_n_6 ;
  wire \integral_reg[23]_i_1_n_7 ;
  wire \integral_reg[27]_i_1_n_0 ;
  wire \integral_reg[27]_i_1_n_1 ;
  wire \integral_reg[27]_i_1_n_2 ;
  wire \integral_reg[27]_i_1_n_3 ;
  wire \integral_reg[27]_i_1_n_4 ;
  wire \integral_reg[27]_i_1_n_5 ;
  wire \integral_reg[27]_i_1_n_6 ;
  wire \integral_reg[27]_i_1_n_7 ;
  wire \integral_reg[31]_i_1_n_1 ;
  wire \integral_reg[31]_i_1_n_2 ;
  wire \integral_reg[31]_i_1_n_3 ;
  wire \integral_reg[31]_i_1_n_4 ;
  wire \integral_reg[31]_i_1_n_5 ;
  wire \integral_reg[31]_i_1_n_6 ;
  wire \integral_reg[31]_i_1_n_7 ;
  wire \integral_reg[3]_i_1_n_0 ;
  wire \integral_reg[3]_i_1_n_1 ;
  wire \integral_reg[3]_i_1_n_2 ;
  wire \integral_reg[3]_i_1_n_3 ;
  wire \integral_reg[3]_i_1_n_4 ;
  wire \integral_reg[3]_i_1_n_5 ;
  wire \integral_reg[3]_i_1_n_6 ;
  wire \integral_reg[3]_i_1_n_7 ;
  wire \integral_reg[7]_i_1_n_0 ;
  wire \integral_reg[7]_i_1_n_1 ;
  wire \integral_reg[7]_i_1_n_2 ;
  wire \integral_reg[7]_i_1_n_3 ;
  wire \integral_reg[7]_i_1_n_4 ;
  wire \integral_reg[7]_i_1_n_5 ;
  wire \integral_reg[7]_i_1_n_6 ;
  wire \integral_reg[7]_i_1_n_7 ;
  wire \interim_velocity[0]_i_10_n_0 ;
  wire \interim_velocity[0]_i_12_n_0 ;
  wire \interim_velocity[0]_i_13_n_0 ;
  wire \interim_velocity[0]_i_14_n_0 ;
  wire \interim_velocity[0]_i_15_n_0 ;
  wire \interim_velocity[0]_i_16_n_0 ;
  wire \interim_velocity[0]_i_17_n_0 ;
  wire \interim_velocity[0]_i_18_n_0 ;
  wire \interim_velocity[0]_i_19_n_0 ;
  wire \interim_velocity[0]_i_20_n_0 ;
  wire \interim_velocity[0]_i_21_n_0 ;
  wire \interim_velocity[0]_i_22_n_0 ;
  wire \interim_velocity[0]_i_23_n_0 ;
  wire \interim_velocity[0]_i_24_n_0 ;
  wire \interim_velocity[0]_i_25_n_0 ;
  wire \interim_velocity[0]_i_26_n_0 ;
  wire \interim_velocity[0]_i_3_n_0 ;
  wire \interim_velocity[0]_i_4_n_0 ;
  wire \interim_velocity[0]_i_5_n_0 ;
  wire \interim_velocity[0]_i_6_n_0 ;
  wire \interim_velocity[0]_i_7_n_0 ;
  wire \interim_velocity[0]_i_8_n_0 ;
  wire \interim_velocity[0]_i_9_n_0 ;
  wire \interim_velocity[12]_i_2_n_0 ;
  wire \interim_velocity[12]_i_3_n_0 ;
  wire \interim_velocity[12]_i_4_n_0 ;
  wire \interim_velocity[12]_i_5_n_0 ;
  wire \interim_velocity[12]_i_6_n_0 ;
  wire \interim_velocity[12]_i_7_n_0 ;
  wire \interim_velocity[12]_i_8_n_0 ;
  wire \interim_velocity[12]_i_9_n_0 ;
  wire \interim_velocity[16]_i_2_n_0 ;
  wire \interim_velocity[16]_i_3_n_0 ;
  wire \interim_velocity[16]_i_4_n_0 ;
  wire \interim_velocity[16]_i_5_n_0 ;
  wire \interim_velocity[16]_i_6_n_0 ;
  wire \interim_velocity[16]_i_7_n_0 ;
  wire \interim_velocity[16]_i_8_n_0 ;
  wire \interim_velocity[16]_i_9_n_0 ;
  wire \interim_velocity[20]_i_2_n_0 ;
  wire \interim_velocity[20]_i_3_n_0 ;
  wire \interim_velocity[20]_i_4_n_0 ;
  wire \interim_velocity[20]_i_5_n_0 ;
  wire \interim_velocity[20]_i_6_n_0 ;
  wire \interim_velocity[20]_i_7_n_0 ;
  wire \interim_velocity[20]_i_8_n_0 ;
  wire \interim_velocity[20]_i_9_n_0 ;
  wire \interim_velocity[24]_i_2_n_0 ;
  wire \interim_velocity[24]_i_3_n_0 ;
  wire \interim_velocity[24]_i_4_n_0 ;
  wire \interim_velocity[24]_i_5_n_0 ;
  wire \interim_velocity[24]_i_6_n_0 ;
  wire \interim_velocity[24]_i_7_n_0 ;
  wire \interim_velocity[24]_i_8_n_0 ;
  wire \interim_velocity[24]_i_9_n_0 ;
  wire \interim_velocity[28]_i_2_n_0 ;
  wire \interim_velocity[28]_i_3_n_0 ;
  wire \interim_velocity[28]_i_4_n_0 ;
  wire \interim_velocity[28]_i_5_n_0 ;
  wire \interim_velocity[28]_i_6_n_0 ;
  wire \interim_velocity[28]_i_7_n_0 ;
  wire \interim_velocity[28]_i_8_n_0 ;
  wire \interim_velocity[28]_i_9_n_0 ;
  wire \interim_velocity[4]_i_2_n_0 ;
  wire \interim_velocity[4]_i_3_n_0 ;
  wire \interim_velocity[4]_i_4_n_0 ;
  wire \interim_velocity[4]_i_5_n_0 ;
  wire \interim_velocity[4]_i_6_n_0 ;
  wire \interim_velocity[4]_i_7_n_0 ;
  wire \interim_velocity[4]_i_8_n_0 ;
  wire \interim_velocity[4]_i_9_n_0 ;
  wire \interim_velocity[72]_i_2_n_0 ;
  wire \interim_velocity[72]_i_3_n_0 ;
  wire \interim_velocity[72]_i_4_n_0 ;
  wire \interim_velocity[72]_i_5_n_0 ;
  wire \interim_velocity[8]_i_2_n_0 ;
  wire \interim_velocity[8]_i_3_n_0 ;
  wire \interim_velocity[8]_i_4_n_0 ;
  wire \interim_velocity[8]_i_5_n_0 ;
  wire \interim_velocity[8]_i_6_n_0 ;
  wire \interim_velocity[8]_i_7_n_0 ;
  wire \interim_velocity[8]_i_8_n_0 ;
  wire \interim_velocity[8]_i_9_n_0 ;
  wire \interim_velocity_reg[0]_i_11_n_0 ;
  wire \interim_velocity_reg[0]_i_11_n_1 ;
  wire \interim_velocity_reg[0]_i_11_n_2 ;
  wire \interim_velocity_reg[0]_i_11_n_3 ;
  wire \interim_velocity_reg[0]_i_1_n_0 ;
  wire \interim_velocity_reg[0]_i_1_n_1 ;
  wire \interim_velocity_reg[0]_i_1_n_2 ;
  wire \interim_velocity_reg[0]_i_1_n_3 ;
  wire \interim_velocity_reg[0]_i_1_n_4 ;
  wire \interim_velocity_reg[0]_i_2_n_0 ;
  wire \interim_velocity_reg[0]_i_2_n_1 ;
  wire \interim_velocity_reg[0]_i_2_n_2 ;
  wire \interim_velocity_reg[0]_i_2_n_3 ;
  wire \interim_velocity_reg[12]_i_1_n_0 ;
  wire \interim_velocity_reg[12]_i_1_n_1 ;
  wire \interim_velocity_reg[12]_i_1_n_2 ;
  wire \interim_velocity_reg[12]_i_1_n_3 ;
  wire \interim_velocity_reg[12]_i_1_n_4 ;
  wire \interim_velocity_reg[12]_i_1_n_5 ;
  wire \interim_velocity_reg[12]_i_1_n_6 ;
  wire \interim_velocity_reg[12]_i_1_n_7 ;
  wire \interim_velocity_reg[16]_i_1_n_0 ;
  wire \interim_velocity_reg[16]_i_1_n_1 ;
  wire \interim_velocity_reg[16]_i_1_n_2 ;
  wire \interim_velocity_reg[16]_i_1_n_3 ;
  wire \interim_velocity_reg[16]_i_1_n_4 ;
  wire \interim_velocity_reg[16]_i_1_n_5 ;
  wire \interim_velocity_reg[16]_i_1_n_6 ;
  wire \interim_velocity_reg[16]_i_1_n_7 ;
  wire \interim_velocity_reg[20]_i_1_n_0 ;
  wire \interim_velocity_reg[20]_i_1_n_1 ;
  wire \interim_velocity_reg[20]_i_1_n_2 ;
  wire \interim_velocity_reg[20]_i_1_n_3 ;
  wire \interim_velocity_reg[20]_i_1_n_4 ;
  wire \interim_velocity_reg[20]_i_1_n_5 ;
  wire \interim_velocity_reg[20]_i_1_n_6 ;
  wire \interim_velocity_reg[20]_i_1_n_7 ;
  wire \interim_velocity_reg[24]_i_1_n_0 ;
  wire \interim_velocity_reg[24]_i_1_n_1 ;
  wire \interim_velocity_reg[24]_i_1_n_2 ;
  wire \interim_velocity_reg[24]_i_1_n_3 ;
  wire \interim_velocity_reg[24]_i_1_n_4 ;
  wire \interim_velocity_reg[24]_i_1_n_5 ;
  wire \interim_velocity_reg[24]_i_1_n_6 ;
  wire \interim_velocity_reg[24]_i_1_n_7 ;
  wire \interim_velocity_reg[28]_i_1_n_0 ;
  wire \interim_velocity_reg[28]_i_1_n_1 ;
  wire \interim_velocity_reg[28]_i_1_n_2 ;
  wire \interim_velocity_reg[28]_i_1_n_3 ;
  wire \interim_velocity_reg[28]_i_1_n_4 ;
  wire \interim_velocity_reg[28]_i_1_n_5 ;
  wire \interim_velocity_reg[28]_i_1_n_6 ;
  wire \interim_velocity_reg[28]_i_1_n_7 ;
  wire \interim_velocity_reg[4]_i_1_n_0 ;
  wire \interim_velocity_reg[4]_i_1_n_1 ;
  wire \interim_velocity_reg[4]_i_1_n_2 ;
  wire \interim_velocity_reg[4]_i_1_n_3 ;
  wire \interim_velocity_reg[4]_i_1_n_4 ;
  wire \interim_velocity_reg[4]_i_1_n_5 ;
  wire \interim_velocity_reg[4]_i_1_n_6 ;
  wire \interim_velocity_reg[4]_i_1_n_7 ;
  wire \interim_velocity_reg[72]_i_1_n_2 ;
  wire \interim_velocity_reg[72]_i_1_n_3 ;
  wire \interim_velocity_reg[72]_i_1_n_6 ;
  wire \interim_velocity_reg[72]_i_1_n_7 ;
  wire \interim_velocity_reg[8]_i_1_n_0 ;
  wire \interim_velocity_reg[8]_i_1_n_1 ;
  wire \interim_velocity_reg[8]_i_1_n_2 ;
  wire \interim_velocity_reg[8]_i_1_n_3 ;
  wire \interim_velocity_reg[8]_i_1_n_4 ;
  wire \interim_velocity_reg[8]_i_1_n_5 ;
  wire \interim_velocity_reg[8]_i_1_n_6 ;
  wire \interim_velocity_reg[8]_i_1_n_7 ;
  wire \interim_velocity_reg_n_0_[0] ;
  wire \interim_velocity_reg_n_0_[10] ;
  wire \interim_velocity_reg_n_0_[11] ;
  wire \interim_velocity_reg_n_0_[12] ;
  wire \interim_velocity_reg_n_0_[13] ;
  wire \interim_velocity_reg_n_0_[14] ;
  wire \interim_velocity_reg_n_0_[15] ;
  wire \interim_velocity_reg_n_0_[16] ;
  wire \interim_velocity_reg_n_0_[17] ;
  wire \interim_velocity_reg_n_0_[18] ;
  wire \interim_velocity_reg_n_0_[19] ;
  wire \interim_velocity_reg_n_0_[1] ;
  wire \interim_velocity_reg_n_0_[20] ;
  wire \interim_velocity_reg_n_0_[21] ;
  wire \interim_velocity_reg_n_0_[22] ;
  wire \interim_velocity_reg_n_0_[23] ;
  wire \interim_velocity_reg_n_0_[24] ;
  wire \interim_velocity_reg_n_0_[25] ;
  wire \interim_velocity_reg_n_0_[26] ;
  wire \interim_velocity_reg_n_0_[27] ;
  wire \interim_velocity_reg_n_0_[28] ;
  wire \interim_velocity_reg_n_0_[29] ;
  wire \interim_velocity_reg_n_0_[2] ;
  wire \interim_velocity_reg_n_0_[30] ;
  wire \interim_velocity_reg_n_0_[3] ;
  wire \interim_velocity_reg_n_0_[4] ;
  wire \interim_velocity_reg_n_0_[5] ;
  wire \interim_velocity_reg_n_0_[6] ;
  wire \interim_velocity_reg_n_0_[72] ;
  wire \interim_velocity_reg_n_0_[7] ;
  wire \interim_velocity_reg_n_0_[8] ;
  wire \interim_velocity_reg_n_0_[9] ;
  wire [7:0]kd_0;
  wire [7:0]ki_0;
  wire [7:0]kp_0;
  wire [0:0]new_target_angle_available_0;
  wire [0:0]new_velocity_available_0;
  wire \nv_flag[0]_i_1_n_0 ;
  wire [31:0]output_velocity_0;
  wire p_0_in0;
  wire p_term0_n_10;
  wire p_term0_n_100;
  wire p_term0_n_101;
  wire p_term0_n_102;
  wire p_term0_n_103;
  wire p_term0_n_104;
  wire p_term0_n_105;
  wire p_term0_n_106;
  wire p_term0_n_107;
  wire p_term0_n_108;
  wire p_term0_n_109;
  wire p_term0_n_11;
  wire p_term0_n_110;
  wire p_term0_n_111;
  wire p_term0_n_112;
  wire p_term0_n_113;
  wire p_term0_n_114;
  wire p_term0_n_115;
  wire p_term0_n_116;
  wire p_term0_n_117;
  wire p_term0_n_118;
  wire p_term0_n_119;
  wire p_term0_n_12;
  wire p_term0_n_120;
  wire p_term0_n_121;
  wire p_term0_n_122;
  wire p_term0_n_123;
  wire p_term0_n_124;
  wire p_term0_n_125;
  wire p_term0_n_126;
  wire p_term0_n_127;
  wire p_term0_n_128;
  wire p_term0_n_129;
  wire p_term0_n_13;
  wire p_term0_n_130;
  wire p_term0_n_131;
  wire p_term0_n_132;
  wire p_term0_n_133;
  wire p_term0_n_134;
  wire p_term0_n_135;
  wire p_term0_n_136;
  wire p_term0_n_137;
  wire p_term0_n_138;
  wire p_term0_n_139;
  wire p_term0_n_14;
  wire p_term0_n_140;
  wire p_term0_n_141;
  wire p_term0_n_142;
  wire p_term0_n_143;
  wire p_term0_n_144;
  wire p_term0_n_145;
  wire p_term0_n_146;
  wire p_term0_n_147;
  wire p_term0_n_148;
  wire p_term0_n_149;
  wire p_term0_n_15;
  wire p_term0_n_150;
  wire p_term0_n_151;
  wire p_term0_n_152;
  wire p_term0_n_153;
  wire p_term0_n_16;
  wire p_term0_n_17;
  wire p_term0_n_18;
  wire p_term0_n_19;
  wire p_term0_n_20;
  wire p_term0_n_21;
  wire p_term0_n_22;
  wire p_term0_n_23;
  wire p_term0_n_58;
  wire p_term0_n_59;
  wire p_term0_n_6;
  wire p_term0_n_60;
  wire p_term0_n_61;
  wire p_term0_n_62;
  wire p_term0_n_63;
  wire p_term0_n_64;
  wire p_term0_n_65;
  wire p_term0_n_66;
  wire p_term0_n_67;
  wire p_term0_n_68;
  wire p_term0_n_69;
  wire p_term0_n_7;
  wire p_term0_n_70;
  wire p_term0_n_71;
  wire p_term0_n_72;
  wire p_term0_n_73;
  wire p_term0_n_74;
  wire p_term0_n_75;
  wire p_term0_n_76;
  wire p_term0_n_77;
  wire p_term0_n_78;
  wire p_term0_n_79;
  wire p_term0_n_8;
  wire p_term0_n_80;
  wire p_term0_n_81;
  wire p_term0_n_82;
  wire p_term0_n_83;
  wire p_term0_n_84;
  wire p_term0_n_85;
  wire p_term0_n_86;
  wire p_term0_n_87;
  wire p_term0_n_88;
  wire p_term0_n_89;
  wire p_term0_n_9;
  wire p_term0_n_90;
  wire p_term0_n_91;
  wire p_term0_n_92;
  wire p_term0_n_93;
  wire p_term0_n_94;
  wire p_term0_n_95;
  wire p_term0_n_96;
  wire p_term0_n_97;
  wire p_term0_n_98;
  wire p_term0_n_99;
  wire [40:0]\^p_term_reg ;
  wire p_term_reg_n_58;
  wire p_term_reg_n_59;
  wire p_term_reg_n_60;
  wire p_term_reg_n_61;
  wire p_term_reg_n_62;
  wire p_term_reg_n_63;
  wire p_term_reg_n_64;
  wire p_term_reg_n_65;
  wire p_term_reg_n_66;
  wire p_term_reg_n_67;
  wire p_term_reg_n_68;
  wire p_term_reg_n_69;
  wire p_term_reg_n_70;
  wire p_term_reg_n_71;
  wire p_term_reg_n_72;
  wire p_term_reg_n_73;
  wire p_term_reg_n_74;
  wire p_term_reg_n_75;
  wire p_term_reg_n_76;
  wire p_term_reg_n_77;
  wire p_term_reg_n_78;
  wire p_term_reg_n_79;
  wire p_term_reg_n_80;
  wire p_term_reg_n_81;
  wire [31:0]saved_target_angle;
  wire [0:0]sys_clk;
  wire [31:0]target_angle_0;
  wire velocity1_carry__0_i_10_n_0;
  wire velocity1_carry__0_i_10_n_1;
  wire velocity1_carry__0_i_10_n_2;
  wire velocity1_carry__0_i_10_n_3;
  wire velocity1_carry__0_i_11_n_0;
  wire velocity1_carry__0_i_12_n_0;
  wire velocity1_carry__0_i_13_n_0;
  wire velocity1_carry__0_i_14_n_0;
  wire velocity1_carry__0_i_15_n_0;
  wire velocity1_carry__0_i_16_n_0;
  wire velocity1_carry__0_i_17_n_0;
  wire velocity1_carry__0_i_18_n_0;
  wire velocity1_carry__0_i_1_n_0;
  wire velocity1_carry__0_i_2_n_0;
  wire velocity1_carry__0_i_3_n_0;
  wire velocity1_carry__0_i_4_n_0;
  wire velocity1_carry__0_i_5_n_0;
  wire velocity1_carry__0_i_6_n_0;
  wire velocity1_carry__0_i_7_n_0;
  wire velocity1_carry__0_i_8_n_0;
  wire velocity1_carry__0_i_9_n_0;
  wire velocity1_carry__0_i_9_n_1;
  wire velocity1_carry__0_i_9_n_2;
  wire velocity1_carry__0_i_9_n_3;
  wire velocity1_carry__0_n_0;
  wire velocity1_carry__0_n_1;
  wire velocity1_carry__0_n_2;
  wire velocity1_carry__0_n_3;
  wire velocity1_carry__1_i_10_n_0;
  wire velocity1_carry__1_i_10_n_1;
  wire velocity1_carry__1_i_10_n_2;
  wire velocity1_carry__1_i_10_n_3;
  wire velocity1_carry__1_i_11_n_0;
  wire velocity1_carry__1_i_12_n_0;
  wire velocity1_carry__1_i_13_n_0;
  wire velocity1_carry__1_i_14_n_0;
  wire velocity1_carry__1_i_15_n_0;
  wire velocity1_carry__1_i_16_n_0;
  wire velocity1_carry__1_i_17_n_0;
  wire velocity1_carry__1_i_18_n_0;
  wire velocity1_carry__1_i_1_n_0;
  wire velocity1_carry__1_i_2_n_0;
  wire velocity1_carry__1_i_3_n_0;
  wire velocity1_carry__1_i_4_n_0;
  wire velocity1_carry__1_i_5_n_0;
  wire velocity1_carry__1_i_6_n_0;
  wire velocity1_carry__1_i_7_n_0;
  wire velocity1_carry__1_i_8_n_0;
  wire velocity1_carry__1_i_9_n_0;
  wire velocity1_carry__1_i_9_n_1;
  wire velocity1_carry__1_i_9_n_2;
  wire velocity1_carry__1_i_9_n_3;
  wire velocity1_carry__1_n_0;
  wire velocity1_carry__1_n_1;
  wire velocity1_carry__1_n_2;
  wire velocity1_carry__1_n_3;
  wire velocity1_carry__2_i_10_n_0;
  wire velocity1_carry__2_i_10_n_1;
  wire velocity1_carry__2_i_10_n_2;
  wire velocity1_carry__2_i_10_n_3;
  wire velocity1_carry__2_i_11_n_0;
  wire velocity1_carry__2_i_12_n_0;
  wire velocity1_carry__2_i_13_n_0;
  wire velocity1_carry__2_i_14_n_0;
  wire velocity1_carry__2_i_15_n_0;
  wire velocity1_carry__2_i_16_n_0;
  wire velocity1_carry__2_i_17_n_0;
  wire velocity1_carry__2_i_18_n_0;
  wire velocity1_carry__2_i_1_n_0;
  wire velocity1_carry__2_i_2_n_0;
  wire velocity1_carry__2_i_3_n_0;
  wire velocity1_carry__2_i_4_n_0;
  wire velocity1_carry__2_i_5_n_0;
  wire velocity1_carry__2_i_6_n_0;
  wire velocity1_carry__2_i_7_n_0;
  wire velocity1_carry__2_i_8_n_0;
  wire velocity1_carry__2_i_9_n_0;
  wire velocity1_carry__2_i_9_n_1;
  wire velocity1_carry__2_i_9_n_2;
  wire velocity1_carry__2_i_9_n_3;
  wire velocity1_carry__2_n_0;
  wire velocity1_carry__2_n_1;
  wire velocity1_carry__2_n_2;
  wire velocity1_carry__2_n_3;
  wire velocity1_carry__3_i_10_n_0;
  wire velocity1_carry__3_i_10_n_1;
  wire velocity1_carry__3_i_10_n_2;
  wire velocity1_carry__3_i_10_n_3;
  wire velocity1_carry__3_i_11_n_0;
  wire velocity1_carry__3_i_12_n_0;
  wire velocity1_carry__3_i_13_n_0;
  wire velocity1_carry__3_i_14_n_0;
  wire velocity1_carry__3_i_15_n_0;
  wire velocity1_carry__3_i_16_n_0;
  wire velocity1_carry__3_i_17_n_0;
  wire velocity1_carry__3_i_18_n_0;
  wire velocity1_carry__3_i_1_n_0;
  wire velocity1_carry__3_i_2_n_0;
  wire velocity1_carry__3_i_3_n_0;
  wire velocity1_carry__3_i_4_n_0;
  wire velocity1_carry__3_i_5_n_0;
  wire velocity1_carry__3_i_6_n_0;
  wire velocity1_carry__3_i_7_n_0;
  wire velocity1_carry__3_i_8_n_0;
  wire velocity1_carry__3_i_9_n_0;
  wire velocity1_carry__3_i_9_n_1;
  wire velocity1_carry__3_i_9_n_2;
  wire velocity1_carry__3_i_9_n_3;
  wire velocity1_carry__3_n_0;
  wire velocity1_carry__3_n_1;
  wire velocity1_carry__3_n_2;
  wire velocity1_carry__3_n_3;
  wire velocity1_carry__4_i_10_n_0;
  wire velocity1_carry__4_i_10_n_1;
  wire velocity1_carry__4_i_10_n_2;
  wire velocity1_carry__4_i_10_n_3;
  wire velocity1_carry__4_i_11_n_0;
  wire velocity1_carry__4_i_12_n_0;
  wire velocity1_carry__4_i_13_n_0;
  wire velocity1_carry__4_i_14_n_0;
  wire velocity1_carry__4_i_15_n_0;
  wire velocity1_carry__4_i_16_n_0;
  wire velocity1_carry__4_i_17_n_0;
  wire velocity1_carry__4_i_18_n_0;
  wire velocity1_carry__4_i_1_n_0;
  wire velocity1_carry__4_i_2_n_0;
  wire velocity1_carry__4_i_3_n_0;
  wire velocity1_carry__4_i_4_n_0;
  wire velocity1_carry__4_i_5_n_0;
  wire velocity1_carry__4_i_6_n_0;
  wire velocity1_carry__4_i_7_n_0;
  wire velocity1_carry__4_i_8_n_0;
  wire velocity1_carry__4_i_9_n_0;
  wire velocity1_carry__4_i_9_n_1;
  wire velocity1_carry__4_i_9_n_2;
  wire velocity1_carry__4_i_9_n_3;
  wire velocity1_carry__4_n_0;
  wire velocity1_carry__4_n_1;
  wire velocity1_carry__4_n_2;
  wire velocity1_carry__4_n_3;
  wire velocity1_carry__5_i_10_n_0;
  wire velocity1_carry__5_i_10_n_1;
  wire velocity1_carry__5_i_10_n_2;
  wire velocity1_carry__5_i_10_n_3;
  wire velocity1_carry__5_i_11_n_0;
  wire velocity1_carry__5_i_12_n_0;
  wire velocity1_carry__5_i_13_n_0;
  wire velocity1_carry__5_i_14_n_0;
  wire velocity1_carry__5_i_15_n_0;
  wire velocity1_carry__5_i_16_n_0;
  wire velocity1_carry__5_i_17_n_0;
  wire velocity1_carry__5_i_18_n_0;
  wire velocity1_carry__5_i_1_n_0;
  wire velocity1_carry__5_i_2_n_0;
  wire velocity1_carry__5_i_3_n_0;
  wire velocity1_carry__5_i_4_n_0;
  wire velocity1_carry__5_i_5_n_0;
  wire velocity1_carry__5_i_6_n_0;
  wire velocity1_carry__5_i_7_n_0;
  wire velocity1_carry__5_i_8_n_0;
  wire velocity1_carry__5_i_9_n_0;
  wire velocity1_carry__5_i_9_n_1;
  wire velocity1_carry__5_i_9_n_2;
  wire velocity1_carry__5_i_9_n_3;
  wire velocity1_carry__5_n_0;
  wire velocity1_carry__5_n_1;
  wire velocity1_carry__5_n_2;
  wire velocity1_carry__5_n_3;
  wire velocity1_carry__6_i_10_n_0;
  wire velocity1_carry__6_i_10_n_1;
  wire velocity1_carry__6_i_10_n_2;
  wire velocity1_carry__6_i_10_n_3;
  wire velocity1_carry__6_i_11_n_0;
  wire velocity1_carry__6_i_12_n_0;
  wire velocity1_carry__6_i_13_n_0;
  wire velocity1_carry__6_i_14_n_0;
  wire velocity1_carry__6_i_15_n_0;
  wire velocity1_carry__6_i_16_n_0;
  wire velocity1_carry__6_i_17_n_0;
  wire velocity1_carry__6_i_18_n_0;
  wire velocity1_carry__6_i_1_n_0;
  wire velocity1_carry__6_i_2_n_0;
  wire velocity1_carry__6_i_3_n_0;
  wire velocity1_carry__6_i_4_n_0;
  wire velocity1_carry__6_i_5_n_0;
  wire velocity1_carry__6_i_6_n_0;
  wire velocity1_carry__6_i_7_n_0;
  wire velocity1_carry__6_i_8_n_0;
  wire velocity1_carry__6_i_9_n_0;
  wire velocity1_carry__6_i_9_n_1;
  wire velocity1_carry__6_i_9_n_2;
  wire velocity1_carry__6_i_9_n_3;
  wire velocity1_carry__6_n_0;
  wire velocity1_carry__6_n_1;
  wire velocity1_carry__6_n_2;
  wire velocity1_carry__6_n_3;
  wire velocity1_carry__7_i_10_n_0;
  wire velocity1_carry__7_i_10_n_1;
  wire velocity1_carry__7_i_10_n_2;
  wire velocity1_carry__7_i_10_n_3;
  wire velocity1_carry__7_i_11_n_0;
  wire velocity1_carry__7_i_12_n_0;
  wire velocity1_carry__7_i_13_n_0;
  wire velocity1_carry__7_i_14_n_0;
  wire velocity1_carry__7_i_15_n_0;
  wire velocity1_carry__7_i_16_n_0;
  wire velocity1_carry__7_i_17_n_0;
  wire velocity1_carry__7_i_18_n_0;
  wire velocity1_carry__7_i_1_n_0;
  wire velocity1_carry__7_i_2_n_0;
  wire velocity1_carry__7_i_3_n_0;
  wire velocity1_carry__7_i_4_n_0;
  wire velocity1_carry__7_i_5_n_0;
  wire velocity1_carry__7_i_6_n_0;
  wire velocity1_carry__7_i_7_n_0;
  wire velocity1_carry__7_i_8_n_0;
  wire velocity1_carry__7_i_9_n_0;
  wire velocity1_carry__7_i_9_n_1;
  wire velocity1_carry__7_i_9_n_2;
  wire velocity1_carry__7_i_9_n_3;
  wire velocity1_carry__7_n_0;
  wire velocity1_carry__7_n_1;
  wire velocity1_carry__7_n_2;
  wire velocity1_carry__7_n_3;
  wire velocity1_carry__8_i_1_n_0;
  wire velocity1_carry__8_i_2_n_0;
  wire velocity1_carry__8_i_3_n_3;
  wire velocity1_carry__8_i_4_n_0;
  wire velocity1_carry__8_i_5_n_0;
  wire velocity1_carry__8_n_3;
  wire velocity1_carry_i_10_n_0;
  wire velocity1_carry_i_11_n_0;
  wire velocity1_carry_i_12_n_0;
  wire velocity1_carry_i_13_n_0;
  wire velocity1_carry_i_14_n_0;
  wire velocity1_carry_i_15_n_0;
  wire velocity1_carry_i_16_n_0;
  wire velocity1_carry_i_17_n_0;
  wire velocity1_carry_i_1_n_0;
  wire velocity1_carry_i_2_n_0;
  wire velocity1_carry_i_2_n_1;
  wire velocity1_carry_i_2_n_2;
  wire velocity1_carry_i_2_n_3;
  wire velocity1_carry_i_3_n_0;
  wire velocity1_carry_i_4_n_0;
  wire velocity1_carry_i_5_n_0;
  wire velocity1_carry_i_6_n_0;
  wire velocity1_carry_i_7_n_0;
  wire velocity1_carry_i_8_n_0;
  wire velocity1_carry_i_9_n_0;
  wire velocity1_carry_i_9_n_1;
  wire velocity1_carry_i_9_n_2;
  wire velocity1_carry_i_9_n_3;
  wire velocity1_carry_n_0;
  wire velocity1_carry_n_1;
  wire velocity1_carry_n_2;
  wire velocity1_carry_n_3;
  wire \velocity1_inferred__0/i__carry__0_n_0 ;
  wire \velocity1_inferred__0/i__carry__0_n_1 ;
  wire \velocity1_inferred__0/i__carry__0_n_2 ;
  wire \velocity1_inferred__0/i__carry__0_n_3 ;
  wire \velocity1_inferred__0/i__carry__1_n_0 ;
  wire \velocity1_inferred__0/i__carry__1_n_1 ;
  wire \velocity1_inferred__0/i__carry__1_n_2 ;
  wire \velocity1_inferred__0/i__carry__1_n_3 ;
  wire \velocity1_inferred__0/i__carry__2_n_0 ;
  wire \velocity1_inferred__0/i__carry__2_n_1 ;
  wire \velocity1_inferred__0/i__carry__2_n_2 ;
  wire \velocity1_inferred__0/i__carry__2_n_3 ;
  wire \velocity1_inferred__0/i__carry__3_n_0 ;
  wire \velocity1_inferred__0/i__carry__3_n_1 ;
  wire \velocity1_inferred__0/i__carry__3_n_2 ;
  wire \velocity1_inferred__0/i__carry__3_n_3 ;
  wire \velocity1_inferred__0/i__carry__4_n_0 ;
  wire \velocity1_inferred__0/i__carry__4_n_1 ;
  wire \velocity1_inferred__0/i__carry__4_n_2 ;
  wire \velocity1_inferred__0/i__carry__4_n_3 ;
  wire \velocity1_inferred__0/i__carry__5_n_0 ;
  wire \velocity1_inferred__0/i__carry__5_n_1 ;
  wire \velocity1_inferred__0/i__carry__5_n_2 ;
  wire \velocity1_inferred__0/i__carry__5_n_3 ;
  wire \velocity1_inferred__0/i__carry__6_n_0 ;
  wire \velocity1_inferred__0/i__carry__6_n_1 ;
  wire \velocity1_inferred__0/i__carry__6_n_2 ;
  wire \velocity1_inferred__0/i__carry__6_n_3 ;
  wire \velocity1_inferred__0/i__carry__7_n_0 ;
  wire \velocity1_inferred__0/i__carry__7_n_1 ;
  wire \velocity1_inferred__0/i__carry__7_n_2 ;
  wire \velocity1_inferred__0/i__carry__7_n_3 ;
  wire \velocity1_inferred__0/i__carry__8_n_3 ;
  wire \velocity1_inferred__0/i__carry_n_0 ;
  wire \velocity1_inferred__0/i__carry_n_1 ;
  wire \velocity1_inferred__0/i__carry_n_2 ;
  wire \velocity1_inferred__0/i__carry_n_3 ;
  wire [73:0]velocity2;
  wire NLW_d_term0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_d_term0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_d_term0_OVERFLOW_UNCONNECTED;
  wire NLW_d_term0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_d_term0_PATTERNDETECT_UNCONNECTED;
  wire NLW_d_term0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_d_term0_ACOUT_UNCONNECTED;
  wire [3:0]NLW_d_term0_CARRYOUT_UNCONNECTED;
  wire NLW_d_term_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_d_term_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_d_term_reg_OVERFLOW_UNCONNECTED;
  wire NLW_d_term_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_d_term_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_d_term_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_d_term_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_d_term_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_d_term_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_d_term_reg_PCOUT_UNCONNECTED;
  wire [3:3]NLW_derivative0__0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_derivative1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_derivative1_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_error0_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_i__carry__8_i_3_CO_UNCONNECTED;
  wire [3:2]NLW_i__carry__8_i_3_O_UNCONNECTED;
  wire NLW_i_term0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_i_term0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_i_term0_OVERFLOW_UNCONNECTED;
  wire NLW_i_term0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_i_term0_PATTERNDETECT_UNCONNECTED;
  wire NLW_i_term0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_i_term0_ACOUT_UNCONNECTED;
  wire [3:0]NLW_i_term0_CARRYOUT_UNCONNECTED;
  wire NLW_i_term_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_i_term_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_i_term_reg_OVERFLOW_UNCONNECTED;
  wire NLW_i_term_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_i_term_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_i_term_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_i_term_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_i_term_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_i_term_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_i_term_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_integral1_O_UNCONNECTED;
  wire [3:0]NLW_integral1__0_O_UNCONNECTED;
  wire [2:2]NLW_integral1__16_CO_UNCONNECTED;
  wire [3:3]NLW_integral1__16_O_UNCONNECTED;
  wire [2:2]NLW_integral1__25_CO_UNCONNECTED;
  wire [3:3]NLW_integral1__25_O_UNCONNECTED;
  wire [0:0]NLW_integral1__26_O_UNCONNECTED;
  wire [3:1]NLW_integral1__35_CO_UNCONNECTED;
  wire [3:2]NLW_integral1__35_O_UNCONNECTED;
  wire [3:0]NLW_integral1__36_O_UNCONNECTED;
  wire [3:3]NLW_integral1__47_CO_UNCONNECTED;
  wire [3:0]NLW_integral1__48_O_UNCONNECTED;
  wire [3:0]NLW_integral1__49_O_UNCONNECTED;
  wire [3:0]NLW_integral1__50_O_UNCONNECTED;
  wire [3:0]NLW_integral1__51_O_UNCONNECTED;
  wire [3:2]NLW_integral1__58_CO_UNCONNECTED;
  wire [3:3]NLW_integral1__58_O_UNCONNECTED;
  wire [3:3]NLW_integral1__65_CO_UNCONNECTED;
  wire [3:0]NLW_integral1__66_O_UNCONNECTED;
  wire [3:0]NLW_integral1__67_O_UNCONNECTED;
  wire [3:0]NLW_integral1__68_O_UNCONNECTED;
  wire [3:0]NLW_integral1__69_O_UNCONNECTED;
  wire [2:2]NLW_integral1__7_CO_UNCONNECTED;
  wire [3:3]NLW_integral1__7_O_UNCONNECTED;
  wire [3:0]NLW_integral1__70_O_UNCONNECTED;
  wire [3:0]NLW_integral1__71_O_UNCONNECTED;
  wire [3:0]NLW_integral1__72_O_UNCONNECTED;
  wire [3:2]NLW_integral1__73_CO_UNCONNECTED;
  wire [3:0]NLW_integral1__73_O_UNCONNECTED;
  wire [3:2]NLW_integral1__80_CO_UNCONNECTED;
  wire [3:3]NLW_integral1__80_O_UNCONNECTED;
  wire [3:3]\NLW_integral_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_interim_velocity_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_interim_velocity_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_interim_velocity_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_interim_velocity_reg[72]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_interim_velocity_reg[72]_i_1_O_UNCONNECTED ;
  wire NLW_p_term0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_term0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_term0_OVERFLOW_UNCONNECTED;
  wire NLW_p_term0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_term0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_term0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_term0_ACOUT_UNCONNECTED;
  wire [3:0]NLW_p_term0_CARRYOUT_UNCONNECTED;
  wire NLW_p_term_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_term_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_term_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_term_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_term_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_term_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_term_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_term_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_term_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p_term_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__7_O_UNCONNECTED;
  wire [3:1]NLW_velocity1_carry__8_CO_UNCONNECTED;
  wire [3:0]NLW_velocity1_carry__8_O_UNCONNECTED;
  wire [3:1]NLW_velocity1_carry__8_i_3_CO_UNCONNECTED;
  wire [3:2]NLW_velocity1_carry__8_i_3_O_UNCONNECTED;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__4_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__5_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__7_O_UNCONNECTED ;
  wire [3:1]\NLW_velocity1_inferred__0/i__carry__8_CO_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__8_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    d_term0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,derivative0__0_carry__2_n_7,derivative0__0_carry__1_n_4,derivative0__0_carry__1_n_5,derivative0__0_carry__1_n_6,derivative0__0_carry__1_n_7,derivative0__0_carry__0_n_4,derivative0__0_carry__0_n_5,derivative0__0_carry__0_n_6,derivative0__0_carry__0_n_7,derivative0__0_carry_n_4,derivative0__0_carry_n_5,derivative0__0_carry_n_6,derivative0__0_carry_n_7,derivative1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_d_term0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,kd_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({d_term0_n_6,d_term0_n_7,d_term0_n_8,d_term0_n_9,d_term0_n_10,d_term0_n_11,d_term0_n_12,d_term0_n_13,d_term0_n_14,d_term0_n_15,d_term0_n_16,d_term0_n_17,d_term0_n_18,d_term0_n_19,d_term0_n_20,d_term0_n_21,d_term0_n_22,d_term0_n_23}),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_d_term0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_d_term0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(sys_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_d_term0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_d_term0_OVERFLOW_UNCONNECTED),
        .P({d_term0_n_58,d_term0_n_59,d_term0_n_60,d_term0_n_61,d_term0_n_62,d_term0_n_63,d_term0_n_64,d_term0_n_65,d_term0_n_66,d_term0_n_67,d_term0_n_68,d_term0_n_69,d_term0_n_70,d_term0_n_71,d_term0_n_72,d_term0_n_73,d_term0_n_74,d_term0_n_75,d_term0_n_76,d_term0_n_77,d_term0_n_78,d_term0_n_79,d_term0_n_80,d_term0_n_81,d_term0_n_82,d_term0_n_83,d_term0_n_84,d_term0_n_85,d_term0_n_86,d_term0_n_87,d_term0_n_88,d_term0_n_89,d_term0_n_90,d_term0_n_91,d_term0_n_92,d_term0_n_93,d_term0_n_94,d_term0_n_95,d_term0_n_96,d_term0_n_97,d_term0_n_98,d_term0_n_99,d_term0_n_100,d_term0_n_101,d_term0_n_102,d_term0_n_103,d_term0_n_104,d_term0_n_105}),
        .PATTERNBDETECT(NLW_d_term0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_d_term0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({d_term0_n_106,d_term0_n_107,d_term0_n_108,d_term0_n_109,d_term0_n_110,d_term0_n_111,d_term0_n_112,d_term0_n_113,d_term0_n_114,d_term0_n_115,d_term0_n_116,d_term0_n_117,d_term0_n_118,d_term0_n_119,d_term0_n_120,d_term0_n_121,d_term0_n_122,d_term0_n_123,d_term0_n_124,d_term0_n_125,d_term0_n_126,d_term0_n_127,d_term0_n_128,d_term0_n_129,d_term0_n_130,d_term0_n_131,d_term0_n_132,d_term0_n_133,d_term0_n_134,d_term0_n_135,d_term0_n_136,d_term0_n_137,d_term0_n_138,d_term0_n_139,d_term0_n_140,d_term0_n_141,d_term0_n_142,d_term0_n_143,d_term0_n_144,d_term0_n_145,d_term0_n_146,d_term0_n_147,d_term0_n_148,d_term0_n_149,d_term0_n_150,d_term0_n_151,d_term0_n_152,d_term0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_d_term0_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    d_term_reg
       (.A({derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_5,derivative0__0_carry__5_n_6,derivative0__0_carry__5_n_7,derivative0__0_carry__4_n_4,derivative0__0_carry__4_n_5,derivative0__0_carry__4_n_6,derivative0__0_carry__4_n_7,derivative0__0_carry__3_n_4,derivative0__0_carry__3_n_5,derivative0__0_carry__3_n_6,derivative0__0_carry__3_n_7,derivative0__0_carry__2_n_4,derivative0__0_carry__2_n_5,derivative0__0_carry__2_n_6}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_d_term_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({d_term0_n_6,d_term0_n_7,d_term0_n_8,d_term0_n_9,d_term0_n_10,d_term0_n_11,d_term0_n_12,d_term0_n_13,d_term0_n_14,d_term0_n_15,d_term0_n_16,d_term0_n_17,d_term0_n_18,d_term0_n_19,d_term0_n_20,d_term0_n_21,d_term0_n_22,d_term0_n_23}),
        .BCOUT(NLW_d_term_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_d_term_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_d_term_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(sys_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_d_term_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_d_term_reg_OVERFLOW_UNCONNECTED),
        .P({d_term_reg_n_58,d_term_reg_n_59,d_term_reg_n_60,d_term_reg_n_61,d_term_reg_n_62,d_term_reg_n_63,d_term_reg_n_64,d_term_reg_n_65,d_term_reg_n_66,d_term_reg_n_67,d_term_reg_n_68,d_term_reg_n_69,d_term_reg_n_70,d_term_reg_n_71,d_term_reg_n_72,d_term_reg_n_73,d_term_reg_n_74,d_term_reg_n_75,d_term_reg_n_76,d_term_reg_n_77,d_term_reg_n_78,d_term_reg_n_79,d_term_reg_n_80,d_term_reg_n_81,\^d_term_reg [40:17]}),
        .PATTERNBDETECT(NLW_d_term_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_d_term_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({d_term0_n_106,d_term0_n_107,d_term0_n_108,d_term0_n_109,d_term0_n_110,d_term0_n_111,d_term0_n_112,d_term0_n_113,d_term0_n_114,d_term0_n_115,d_term0_n_116,d_term0_n_117,d_term0_n_118,d_term0_n_119,d_term0_n_120,d_term0_n_121,d_term0_n_122,d_term0_n_123,d_term0_n_124,d_term0_n_125,d_term0_n_126,d_term0_n_127,d_term0_n_128,d_term0_n_129,d_term0_n_130,d_term0_n_131,d_term0_n_132,d_term0_n_133,d_term0_n_134,d_term0_n_135,d_term0_n_136,d_term0_n_137,d_term0_n_138,d_term0_n_139,d_term0_n_140,d_term0_n_141,d_term0_n_142,d_term0_n_143,d_term0_n_144,d_term0_n_145,d_term0_n_146,d_term0_n_147,d_term0_n_148,d_term0_n_149,d_term0_n_150,d_term0_n_151,d_term0_n_152,d_term0_n_153}),
        .PCOUT(NLW_d_term_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_d_term_reg_UNDERFLOW_UNCONNECTED));
  FDRE \d_term_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_105),
        .Q(\^d_term_reg [0]),
        .R(1'b0));
  FDRE \d_term_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_95),
        .Q(\^d_term_reg [10]),
        .R(1'b0));
  FDRE \d_term_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_94),
        .Q(\^d_term_reg [11]),
        .R(1'b0));
  FDRE \d_term_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_93),
        .Q(\^d_term_reg [12]),
        .R(1'b0));
  FDRE \d_term_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_92),
        .Q(\^d_term_reg [13]),
        .R(1'b0));
  FDRE \d_term_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_91),
        .Q(\^d_term_reg [14]),
        .R(1'b0));
  FDRE \d_term_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_90),
        .Q(\^d_term_reg [15]),
        .R(1'b0));
  FDRE \d_term_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_89),
        .Q(\^d_term_reg [16]),
        .R(1'b0));
  FDRE \d_term_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_104),
        .Q(\^d_term_reg [1]),
        .R(1'b0));
  FDRE \d_term_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_103),
        .Q(\^d_term_reg [2]),
        .R(1'b0));
  FDRE \d_term_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_102),
        .Q(\^d_term_reg [3]),
        .R(1'b0));
  FDRE \d_term_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_101),
        .Q(\^d_term_reg [4]),
        .R(1'b0));
  FDRE \d_term_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_100),
        .Q(\^d_term_reg [5]),
        .R(1'b0));
  FDRE \d_term_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_99),
        .Q(\^d_term_reg [6]),
        .R(1'b0));
  FDRE \d_term_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_98),
        .Q(\^d_term_reg [7]),
        .R(1'b0));
  FDRE \d_term_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_97),
        .Q(\^d_term_reg [8]),
        .R(1'b0));
  FDRE \d_term_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(d_term0_n_96),
        .Q(\^d_term_reg [9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry
       (.CI(1'b0),
        .CO({derivative0__0_carry_n_0,derivative0__0_carry_n_1,derivative0__0_carry_n_2,derivative0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({derivative0__0_carry_i_1_n_0,derivative0__0_carry_i_2_n_0,derivative0__0_carry_i_3_n_0,1'b0}),
        .O({derivative0__0_carry_n_4,derivative0__0_carry_n_5,derivative0__0_carry_n_6,derivative0__0_carry_n_7}),
        .S({derivative0__0_carry_i_4_n_0,derivative0__0_carry_i_5_n_0,derivative0__0_carry_i_6_n_0,derivative0__0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry__0
       (.CI(derivative0__0_carry_n_0),
        .CO({derivative0__0_carry__0_n_0,derivative0__0_carry__0_n_1,derivative0__0_carry__0_n_2,derivative0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({derivative0__0_carry__0_i_1_n_0,derivative0__0_carry__0_i_2_n_0,derivative0__0_carry__0_i_3_n_0,derivative0__0_carry__0_i_4_n_0}),
        .O({derivative0__0_carry__0_n_4,derivative0__0_carry__0_n_5,derivative0__0_carry__0_n_6,derivative0__0_carry__0_n_7}),
        .S({derivative0__0_carry__0_i_5_n_0,derivative0__0_carry__0_i_6_n_0,derivative0__0_carry__0_i_7_n_0,derivative0__0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__0_i_1
       (.I0(derivative1__0[6]),
        .I1(derivative1__0[9]),
        .I2(derivative1__0[4]),
        .O(derivative0__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__0_i_2
       (.I0(derivative1__0[5]),
        .I1(derivative1__0[8]),
        .I2(derivative1__0[3]),
        .O(derivative0__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__0_i_3
       (.I0(derivative1__0[4]),
        .I1(derivative1__0[7]),
        .I2(derivative1[2]),
        .O(derivative0__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__0_i_4
       (.I0(derivative1__0[3]),
        .I1(derivative1__0[6]),
        .I2(derivative1[1]),
        .O(derivative0__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__0_i_5
       (.I0(derivative1__0[4]),
        .I1(derivative1__0[9]),
        .I2(derivative1__0[6]),
        .I3(derivative1__0[7]),
        .I4(derivative1__0[10]),
        .I5(derivative1__0[5]),
        .O(derivative0__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__0_i_6
       (.I0(derivative1__0[3]),
        .I1(derivative1__0[8]),
        .I2(derivative1__0[5]),
        .I3(derivative1__0[6]),
        .I4(derivative1__0[9]),
        .I5(derivative1__0[4]),
        .O(derivative0__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__0_i_7
       (.I0(derivative1[2]),
        .I1(derivative1__0[7]),
        .I2(derivative1__0[4]),
        .I3(derivative1__0[5]),
        .I4(derivative1__0[8]),
        .I5(derivative1__0[3]),
        .O(derivative0__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__0_i_8
       (.I0(derivative1[1]),
        .I1(derivative1__0[6]),
        .I2(derivative1__0[3]),
        .I3(derivative1__0[4]),
        .I4(derivative1__0[7]),
        .I5(derivative1[2]),
        .O(derivative0__0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry__1
       (.CI(derivative0__0_carry__0_n_0),
        .CO({derivative0__0_carry__1_n_0,derivative0__0_carry__1_n_1,derivative0__0_carry__1_n_2,derivative0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({derivative0__0_carry__1_i_1_n_0,derivative0__0_carry__1_i_2_n_0,derivative0__0_carry__1_i_3_n_0,derivative0__0_carry__1_i_4_n_0}),
        .O({derivative0__0_carry__1_n_4,derivative0__0_carry__1_n_5,derivative0__0_carry__1_n_6,derivative0__0_carry__1_n_7}),
        .S({derivative0__0_carry__1_i_5_n_0,derivative0__0_carry__1_i_6_n_0,derivative0__0_carry__1_i_7_n_0,derivative0__0_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__1_i_1
       (.I0(derivative1__0[10]),
        .I1(derivative1__0[13]),
        .I2(derivative1__0[8]),
        .O(derivative0__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__1_i_2
       (.I0(derivative1__0[9]),
        .I1(derivative1__0[12]),
        .I2(derivative1__0[7]),
        .O(derivative0__0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__1_i_3
       (.I0(derivative1__0[8]),
        .I1(derivative1__0[11]),
        .I2(derivative1__0[6]),
        .O(derivative0__0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__1_i_4
       (.I0(derivative1__0[7]),
        .I1(derivative1__0[10]),
        .I2(derivative1__0[5]),
        .O(derivative0__0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__1_i_5
       (.I0(derivative1__0[8]),
        .I1(derivative1__0[13]),
        .I2(derivative1__0[10]),
        .I3(derivative1__0[11]),
        .I4(derivative1__0[14]),
        .I5(derivative1__0[9]),
        .O(derivative0__0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__1_i_6
       (.I0(derivative1__0[7]),
        .I1(derivative1__0[12]),
        .I2(derivative1__0[9]),
        .I3(derivative1__0[10]),
        .I4(derivative1__0[13]),
        .I5(derivative1__0[8]),
        .O(derivative0__0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__1_i_7
       (.I0(derivative1__0[6]),
        .I1(derivative1__0[11]),
        .I2(derivative1__0[8]),
        .I3(derivative1__0[9]),
        .I4(derivative1__0[12]),
        .I5(derivative1__0[7]),
        .O(derivative0__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__1_i_8
       (.I0(derivative1__0[5]),
        .I1(derivative1__0[10]),
        .I2(derivative1__0[7]),
        .I3(derivative1__0[8]),
        .I4(derivative1__0[11]),
        .I5(derivative1__0[6]),
        .O(derivative0__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry__2
       (.CI(derivative0__0_carry__1_n_0),
        .CO({derivative0__0_carry__2_n_0,derivative0__0_carry__2_n_1,derivative0__0_carry__2_n_2,derivative0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({derivative0__0_carry__2_i_1_n_0,derivative0__0_carry__2_i_2_n_0,derivative0__0_carry__2_i_3_n_0,derivative0__0_carry__2_i_4_n_0}),
        .O({derivative0__0_carry__2_n_4,derivative0__0_carry__2_n_5,derivative0__0_carry__2_n_6,derivative0__0_carry__2_n_7}),
        .S({derivative0__0_carry__2_i_5_n_0,derivative0__0_carry__2_i_6_n_0,derivative0__0_carry__2_i_7_n_0,derivative0__0_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__2_i_1
       (.I0(derivative1__0[14]),
        .I1(derivative1__0[17]),
        .I2(derivative1__0[12]),
        .O(derivative0__0_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__2_i_2
       (.I0(derivative1__0[13]),
        .I1(derivative1__0[16]),
        .I2(derivative1__0[11]),
        .O(derivative0__0_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__2_i_3
       (.I0(derivative1__0[12]),
        .I1(derivative1__0[15]),
        .I2(derivative1__0[10]),
        .O(derivative0__0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__2_i_4
       (.I0(derivative1__0[11]),
        .I1(derivative1__0[14]),
        .I2(derivative1__0[9]),
        .O(derivative0__0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__2_i_5
       (.I0(derivative1__0[12]),
        .I1(derivative1__0[17]),
        .I2(derivative1__0[14]),
        .I3(derivative1__0[15]),
        .I4(derivative1__0[18]),
        .I5(derivative1__0[13]),
        .O(derivative0__0_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__2_i_6
       (.I0(derivative1__0[11]),
        .I1(derivative1__0[16]),
        .I2(derivative1__0[13]),
        .I3(derivative1__0[14]),
        .I4(derivative1__0[17]),
        .I5(derivative1__0[12]),
        .O(derivative0__0_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__2_i_7
       (.I0(derivative1__0[10]),
        .I1(derivative1__0[15]),
        .I2(derivative1__0[12]),
        .I3(derivative1__0[13]),
        .I4(derivative1__0[16]),
        .I5(derivative1__0[11]),
        .O(derivative0__0_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__2_i_8
       (.I0(derivative1__0[9]),
        .I1(derivative1__0[14]),
        .I2(derivative1__0[11]),
        .I3(derivative1__0[12]),
        .I4(derivative1__0[15]),
        .I5(derivative1__0[10]),
        .O(derivative0__0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry__3
       (.CI(derivative0__0_carry__2_n_0),
        .CO({derivative0__0_carry__3_n_0,derivative0__0_carry__3_n_1,derivative0__0_carry__3_n_2,derivative0__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({derivative0__0_carry__3_i_1_n_0,derivative0__0_carry__3_i_2_n_0,derivative0__0_carry__3_i_3_n_0,derivative0__0_carry__3_i_4_n_0}),
        .O({derivative0__0_carry__3_n_4,derivative0__0_carry__3_n_5,derivative0__0_carry__3_n_6,derivative0__0_carry__3_n_7}),
        .S({derivative0__0_carry__3_i_5_n_0,derivative0__0_carry__3_i_6_n_0,derivative0__0_carry__3_i_7_n_0,derivative0__0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__3_i_1
       (.I0(derivative1__0[18]),
        .I1(derivative1__0[21]),
        .I2(derivative1__0[16]),
        .O(derivative0__0_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__3_i_2
       (.I0(derivative1__0[17]),
        .I1(derivative1__0[20]),
        .I2(derivative1__0[15]),
        .O(derivative0__0_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__3_i_3
       (.I0(derivative1__0[16]),
        .I1(derivative1__0[19]),
        .I2(derivative1__0[14]),
        .O(derivative0__0_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__3_i_4
       (.I0(derivative1__0[15]),
        .I1(derivative1__0[18]),
        .I2(derivative1__0[13]),
        .O(derivative0__0_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__3_i_5
       (.I0(derivative1__0[16]),
        .I1(derivative1__0[21]),
        .I2(derivative1__0[18]),
        .I3(derivative1__0[19]),
        .I4(derivative1__0[22]),
        .I5(derivative1__0[17]),
        .O(derivative0__0_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__3_i_6
       (.I0(derivative1__0[15]),
        .I1(derivative1__0[20]),
        .I2(derivative1__0[17]),
        .I3(derivative1__0[18]),
        .I4(derivative1__0[21]),
        .I5(derivative1__0[16]),
        .O(derivative0__0_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__3_i_7
       (.I0(derivative1__0[14]),
        .I1(derivative1__0[19]),
        .I2(derivative1__0[16]),
        .I3(derivative1__0[17]),
        .I4(derivative1__0[20]),
        .I5(derivative1__0[15]),
        .O(derivative0__0_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__3_i_8
       (.I0(derivative1__0[13]),
        .I1(derivative1__0[18]),
        .I2(derivative1__0[15]),
        .I3(derivative1__0[16]),
        .I4(derivative1__0[19]),
        .I5(derivative1__0[14]),
        .O(derivative0__0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry__4
       (.CI(derivative0__0_carry__3_n_0),
        .CO({derivative0__0_carry__4_n_0,derivative0__0_carry__4_n_1,derivative0__0_carry__4_n_2,derivative0__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({derivative0__0_carry__4_i_1_n_0,derivative0__0_carry__4_i_2_n_0,derivative0__0_carry__4_i_3_n_0,derivative0__0_carry__4_i_4_n_0}),
        .O({derivative0__0_carry__4_n_4,derivative0__0_carry__4_n_5,derivative0__0_carry__4_n_6,derivative0__0_carry__4_n_7}),
        .S({derivative0__0_carry__4_i_5_n_0,derivative0__0_carry__4_i_6_n_0,derivative0__0_carry__4_i_7_n_0,derivative0__0_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__4_i_1
       (.I0(derivative1__0[22]),
        .I1(derivative1__0[25]),
        .I2(derivative1__0[20]),
        .O(derivative0__0_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__4_i_2
       (.I0(derivative1__0[21]),
        .I1(derivative1__0[24]),
        .I2(derivative1__0[19]),
        .O(derivative0__0_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__4_i_3
       (.I0(derivative1__0[20]),
        .I1(derivative1__0[23]),
        .I2(derivative1__0[18]),
        .O(derivative0__0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__4_i_4
       (.I0(derivative1__0[19]),
        .I1(derivative1__0[22]),
        .I2(derivative1__0[17]),
        .O(derivative0__0_carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__4_i_5
       (.I0(derivative1__0[20]),
        .I1(derivative1__0[25]),
        .I2(derivative1__0[22]),
        .I3(derivative1__0[23]),
        .I4(derivative1__0[26]),
        .I5(derivative1__0[21]),
        .O(derivative0__0_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__4_i_6
       (.I0(derivative1__0[19]),
        .I1(derivative1__0[24]),
        .I2(derivative1__0[21]),
        .I3(derivative1__0[22]),
        .I4(derivative1__0[25]),
        .I5(derivative1__0[20]),
        .O(derivative0__0_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__4_i_7
       (.I0(derivative1__0[18]),
        .I1(derivative1__0[23]),
        .I2(derivative1__0[20]),
        .I3(derivative1__0[21]),
        .I4(derivative1__0[24]),
        .I5(derivative1__0[19]),
        .O(derivative0__0_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__4_i_8
       (.I0(derivative1__0[17]),
        .I1(derivative1__0[22]),
        .I2(derivative1__0[19]),
        .I3(derivative1__0[20]),
        .I4(derivative1__0[23]),
        .I5(derivative1__0[18]),
        .O(derivative0__0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 derivative0__0_carry__5
       (.CI(derivative0__0_carry__4_n_0),
        .CO({NLW_derivative0__0_carry__5_CO_UNCONNECTED[3],derivative0__0_carry__5_n_1,derivative0__0_carry__5_n_2,derivative0__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,derivative0__0_carry__5_i_1_n_0,derivative0__0_carry__5_i_2_n_0,derivative0__0_carry__5_i_3_n_0}),
        .O({derivative0__0_carry__5_n_4,derivative0__0_carry__5_n_5,derivative0__0_carry__5_n_6,derivative0__0_carry__5_n_7}),
        .S({derivative0__0_carry__5_i_4_n_0,derivative0__0_carry__5_i_5_n_0,derivative0__0_carry__5_i_6_n_0,derivative0__0_carry__5_i_7_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__5_i_1
       (.I0(derivative1__0[25]),
        .I1(derivative1__0[28]),
        .I2(derivative1__0[23]),
        .O(derivative0__0_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__5_i_2
       (.I0(derivative1__0[24]),
        .I1(derivative1__0[27]),
        .I2(derivative1__0[22]),
        .O(derivative0__0_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry__5_i_3
       (.I0(derivative1__0[23]),
        .I1(derivative1__0[26]),
        .I2(derivative1__0[21]),
        .O(derivative0__0_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    derivative0__0_carry__5_i_4
       (.I0(derivative1__0[27]),
        .I1(derivative1__0[25]),
        .I2(derivative1__0[30]),
        .I3(derivative1__0[24]),
        .I4(derivative1__0[29]),
        .I5(derivative1__0[26]),
        .O(derivative0__0_carry__5_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__5_i_5
       (.I0(derivative1__0[23]),
        .I1(derivative1__0[28]),
        .I2(derivative1__0[25]),
        .I3(derivative1__0[26]),
        .I4(derivative1__0[29]),
        .I5(derivative1__0[24]),
        .O(derivative0__0_carry__5_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__5_i_6
       (.I0(derivative1__0[22]),
        .I1(derivative1__0[27]),
        .I2(derivative1__0[24]),
        .I3(derivative1__0[25]),
        .I4(derivative1__0[28]),
        .I5(derivative1__0[23]),
        .O(derivative0__0_carry__5_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry__5_i_7
       (.I0(derivative1__0[21]),
        .I1(derivative1__0[26]),
        .I2(derivative1__0[23]),
        .I3(derivative1__0[24]),
        .I4(derivative1__0[27]),
        .I5(derivative1__0[22]),
        .O(derivative0__0_carry__5_i_7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    derivative0__0_carry_i_1
       (.I0(derivative1[2]),
        .I1(derivative1__0[5]),
        .I2(derivative1[0]),
        .O(derivative0__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    derivative0__0_carry_i_2
       (.I0(derivative1[2]),
        .I1(derivative1__0[5]),
        .I2(derivative1[0]),
        .O(derivative0__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    derivative0__0_carry_i_3
       (.I0(derivative1__0[3]),
        .I1(derivative1[0]),
        .O(derivative0__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    derivative0__0_carry_i_4
       (.I0(derivative1[0]),
        .I1(derivative1__0[5]),
        .I2(derivative1[2]),
        .I3(derivative1__0[3]),
        .I4(derivative1__0[6]),
        .I5(derivative1[1]),
        .O(derivative0__0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    derivative0__0_carry_i_5
       (.I0(derivative1[2]),
        .I1(derivative1__0[5]),
        .I2(derivative1[0]),
        .I3(derivative1[1]),
        .I4(derivative1__0[4]),
        .O(derivative0__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    derivative0__0_carry_i_6
       (.I0(derivative1[0]),
        .I1(derivative1__0[3]),
        .I2(derivative1__0[4]),
        .I3(derivative1[1]),
        .O(derivative0__0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    derivative0__0_carry_i_7
       (.I0(derivative1[0]),
        .I1(derivative1__0[3]),
        .O(derivative0__0_carry_i_7_n_0));
  CARRY4 derivative1_carry
       (.CI(1'b0),
        .CO({derivative1_carry_n_0,derivative1_carry_n_1,derivative1_carry_n_2,derivative1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(error[3:0]),
        .O({derivative1__0[3],derivative1}),
        .S({derivative1_carry_i_1_n_0,derivative1_carry_i_2_n_0,derivative1_carry_i_3_n_0,derivative1_carry_i_4_n_0}));
  CARRY4 derivative1_carry__0
       (.CI(derivative1_carry_n_0),
        .CO({derivative1_carry__0_n_0,derivative1_carry__0_n_1,derivative1_carry__0_n_2,derivative1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(error[7:4]),
        .O(derivative1__0[7:4]),
        .S({derivative1_carry__0_i_1_n_0,derivative1_carry__0_i_2_n_0,derivative1_carry__0_i_3_n_0,derivative1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__0_i_1
       (.I0(error[7]),
        .I1(error_prev[7]),
        .O(derivative1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__0_i_2
       (.I0(error[6]),
        .I1(error_prev[6]),
        .O(derivative1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__0_i_3
       (.I0(error[5]),
        .I1(error_prev[5]),
        .O(derivative1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__0_i_4
       (.I0(error[4]),
        .I1(error_prev[4]),
        .O(derivative1_carry__0_i_4_n_0));
  CARRY4 derivative1_carry__1
       (.CI(derivative1_carry__0_n_0),
        .CO({derivative1_carry__1_n_0,derivative1_carry__1_n_1,derivative1_carry__1_n_2,derivative1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(error[11:8]),
        .O(derivative1__0[11:8]),
        .S({derivative1_carry__1_i_1_n_0,derivative1_carry__1_i_2_n_0,derivative1_carry__1_i_3_n_0,derivative1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__1_i_1
       (.I0(error[11]),
        .I1(error_prev[11]),
        .O(derivative1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__1_i_2
       (.I0(error[10]),
        .I1(error_prev[10]),
        .O(derivative1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__1_i_3
       (.I0(error[9]),
        .I1(error_prev[9]),
        .O(derivative1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__1_i_4
       (.I0(error[8]),
        .I1(error_prev[8]),
        .O(derivative1_carry__1_i_4_n_0));
  CARRY4 derivative1_carry__2
       (.CI(derivative1_carry__1_n_0),
        .CO({derivative1_carry__2_n_0,derivative1_carry__2_n_1,derivative1_carry__2_n_2,derivative1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(error[15:12]),
        .O(derivative1__0[15:12]),
        .S({derivative1_carry__2_i_1_n_0,derivative1_carry__2_i_2_n_0,derivative1_carry__2_i_3_n_0,derivative1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__2_i_1
       (.I0(error[15]),
        .I1(error_prev[15]),
        .O(derivative1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__2_i_2
       (.I0(error[14]),
        .I1(error_prev[14]),
        .O(derivative1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__2_i_3
       (.I0(error[13]),
        .I1(error_prev[13]),
        .O(derivative1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__2_i_4
       (.I0(error[12]),
        .I1(error_prev[12]),
        .O(derivative1_carry__2_i_4_n_0));
  CARRY4 derivative1_carry__3
       (.CI(derivative1_carry__2_n_0),
        .CO({derivative1_carry__3_n_0,derivative1_carry__3_n_1,derivative1_carry__3_n_2,derivative1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(error[19:16]),
        .O(derivative1__0[19:16]),
        .S({derivative1_carry__3_i_1_n_0,derivative1_carry__3_i_2_n_0,derivative1_carry__3_i_3_n_0,derivative1_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__3_i_1
       (.I0(error[19]),
        .I1(error_prev[19]),
        .O(derivative1_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__3_i_2
       (.I0(error[18]),
        .I1(error_prev[18]),
        .O(derivative1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__3_i_3
       (.I0(error[17]),
        .I1(error_prev[17]),
        .O(derivative1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__3_i_4
       (.I0(error[16]),
        .I1(error_prev[16]),
        .O(derivative1_carry__3_i_4_n_0));
  CARRY4 derivative1_carry__4
       (.CI(derivative1_carry__3_n_0),
        .CO({derivative1_carry__4_n_0,derivative1_carry__4_n_1,derivative1_carry__4_n_2,derivative1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(error[23:20]),
        .O(derivative1__0[23:20]),
        .S({derivative1_carry__4_i_1_n_0,derivative1_carry__4_i_2_n_0,derivative1_carry__4_i_3_n_0,derivative1_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__4_i_1
       (.I0(error[23]),
        .I1(error_prev[23]),
        .O(derivative1_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__4_i_2
       (.I0(error[22]),
        .I1(error_prev[22]),
        .O(derivative1_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__4_i_3
       (.I0(error[21]),
        .I1(error_prev[21]),
        .O(derivative1_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__4_i_4
       (.I0(error[20]),
        .I1(error_prev[20]),
        .O(derivative1_carry__4_i_4_n_0));
  CARRY4 derivative1_carry__5
       (.CI(derivative1_carry__4_n_0),
        .CO({derivative1_carry__5_n_0,derivative1_carry__5_n_1,derivative1_carry__5_n_2,derivative1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(error[27:24]),
        .O(derivative1__0[27:24]),
        .S({derivative1_carry__5_i_1_n_0,derivative1_carry__5_i_2_n_0,derivative1_carry__5_i_3_n_0,derivative1_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__5_i_1
       (.I0(error[27]),
        .I1(error_prev[27]),
        .O(derivative1_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__5_i_2
       (.I0(error[26]),
        .I1(error_prev[26]),
        .O(derivative1_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__5_i_3
       (.I0(error[25]),
        .I1(error_prev[25]),
        .O(derivative1_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__5_i_4
       (.I0(error[24]),
        .I1(error_prev[24]),
        .O(derivative1_carry__5_i_4_n_0));
  CARRY4 derivative1_carry__6
       (.CI(derivative1_carry__5_n_0),
        .CO({NLW_derivative1_carry__6_CO_UNCONNECTED[3:2],derivative1_carry__6_n_2,derivative1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,error[29:28]}),
        .O({NLW_derivative1_carry__6_O_UNCONNECTED[3],derivative1__0[30:28]}),
        .S({1'b0,derivative1_carry__6_i_1_n_0,derivative1_carry__6_i_2_n_0,derivative1_carry__6_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__6_i_1
       (.I0(error[30]),
        .I1(error_prev[30]),
        .O(derivative1_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__6_i_2
       (.I0(error[29]),
        .I1(error_prev[29]),
        .O(derivative1_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry__6_i_3
       (.I0(error[28]),
        .I1(error_prev[28]),
        .O(derivative1_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry_i_1
       (.I0(error[3]),
        .I1(error_prev[3]),
        .O(derivative1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry_i_2
       (.I0(error[2]),
        .I1(error_prev[2]),
        .O(derivative1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry_i_3
       (.I0(error[1]),
        .I1(error_prev[1]),
        .O(derivative1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    derivative1_carry_i_4
       (.I0(error[0]),
        .I1(error_prev[0]),
        .O(derivative1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry
       (.CI(1'b0),
        .CO({error0_carry_n_0,error0_carry_n_1,error0_carry_n_2,error0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(saved_target_angle[3:0]),
        .O(error0[3:0]),
        .S({error0_carry_i_1_n_0,error0_carry_i_2_n_0,error0_carry_i_3_n_0,error0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__0
       (.CI(error0_carry_n_0),
        .CO({error0_carry__0_n_0,error0_carry__0_n_1,error0_carry__0_n_2,error0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(saved_target_angle[7:4]),
        .O(error0[7:4]),
        .S({error0_carry__0_i_1_n_0,error0_carry__0_i_2_n_0,error0_carry__0_i_3_n_0,error0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__0_i_1
       (.I0(saved_target_angle[7]),
        .I1(angle_0[7]),
        .O(error0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__0_i_2
       (.I0(saved_target_angle[6]),
        .I1(angle_0[6]),
        .O(error0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__0_i_3
       (.I0(saved_target_angle[5]),
        .I1(angle_0[5]),
        .O(error0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__0_i_4
       (.I0(saved_target_angle[4]),
        .I1(angle_0[4]),
        .O(error0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__1
       (.CI(error0_carry__0_n_0),
        .CO({error0_carry__1_n_0,error0_carry__1_n_1,error0_carry__1_n_2,error0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(saved_target_angle[11:8]),
        .O(error0[11:8]),
        .S({error0_carry__1_i_1_n_0,error0_carry__1_i_2_n_0,error0_carry__1_i_3_n_0,error0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__1_i_1
       (.I0(saved_target_angle[11]),
        .I1(angle_0[11]),
        .O(error0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__1_i_2
       (.I0(saved_target_angle[10]),
        .I1(angle_0[10]),
        .O(error0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__1_i_3
       (.I0(saved_target_angle[9]),
        .I1(angle_0[9]),
        .O(error0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__1_i_4
       (.I0(saved_target_angle[8]),
        .I1(angle_0[8]),
        .O(error0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__2
       (.CI(error0_carry__1_n_0),
        .CO({error0_carry__2_n_0,error0_carry__2_n_1,error0_carry__2_n_2,error0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(saved_target_angle[15:12]),
        .O(error0[15:12]),
        .S({error0_carry__2_i_1_n_0,error0_carry__2_i_2_n_0,error0_carry__2_i_3_n_0,error0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__2_i_1
       (.I0(saved_target_angle[15]),
        .I1(angle_0[15]),
        .O(error0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__2_i_2
       (.I0(saved_target_angle[14]),
        .I1(angle_0[14]),
        .O(error0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__2_i_3
       (.I0(saved_target_angle[13]),
        .I1(angle_0[13]),
        .O(error0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__2_i_4
       (.I0(saved_target_angle[12]),
        .I1(angle_0[12]),
        .O(error0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__3
       (.CI(error0_carry__2_n_0),
        .CO({error0_carry__3_n_0,error0_carry__3_n_1,error0_carry__3_n_2,error0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(saved_target_angle[19:16]),
        .O(error0[19:16]),
        .S({error0_carry__3_i_1_n_0,error0_carry__3_i_2_n_0,error0_carry__3_i_3_n_0,error0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__3_i_1
       (.I0(saved_target_angle[19]),
        .I1(angle_0[19]),
        .O(error0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__3_i_2
       (.I0(saved_target_angle[18]),
        .I1(angle_0[18]),
        .O(error0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__3_i_3
       (.I0(saved_target_angle[17]),
        .I1(angle_0[17]),
        .O(error0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__3_i_4
       (.I0(saved_target_angle[16]),
        .I1(angle_0[16]),
        .O(error0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__4
       (.CI(error0_carry__3_n_0),
        .CO({error0_carry__4_n_0,error0_carry__4_n_1,error0_carry__4_n_2,error0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(saved_target_angle[23:20]),
        .O(error0[23:20]),
        .S({error0_carry__4_i_1_n_0,error0_carry__4_i_2_n_0,error0_carry__4_i_3_n_0,error0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__4_i_1
       (.I0(saved_target_angle[23]),
        .I1(angle_0[23]),
        .O(error0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__4_i_2
       (.I0(saved_target_angle[22]),
        .I1(angle_0[22]),
        .O(error0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__4_i_3
       (.I0(saved_target_angle[21]),
        .I1(angle_0[21]),
        .O(error0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__4_i_4
       (.I0(saved_target_angle[20]),
        .I1(angle_0[20]),
        .O(error0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__5
       (.CI(error0_carry__4_n_0),
        .CO({error0_carry__5_n_0,error0_carry__5_n_1,error0_carry__5_n_2,error0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(saved_target_angle[27:24]),
        .O(error0[27:24]),
        .S({error0_carry__5_i_1_n_0,error0_carry__5_i_2_n_0,error0_carry__5_i_3_n_0,error0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__5_i_1
       (.I0(saved_target_angle[27]),
        .I1(angle_0[27]),
        .O(error0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__5_i_2
       (.I0(saved_target_angle[26]),
        .I1(angle_0[26]),
        .O(error0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__5_i_3
       (.I0(saved_target_angle[25]),
        .I1(angle_0[25]),
        .O(error0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__5_i_4
       (.I0(saved_target_angle[24]),
        .I1(angle_0[24]),
        .O(error0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 error0_carry__6
       (.CI(error0_carry__5_n_0),
        .CO({NLW_error0_carry__6_CO_UNCONNECTED[3],error0_carry__6_n_1,error0_carry__6_n_2,error0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,saved_target_angle[30:28]}),
        .O(error0[31:28]),
        .S({error0_carry__6_i_1_n_0,error0_carry__6_i_2_n_0,error0_carry__6_i_3_n_0,error0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__6_i_1
       (.I0(saved_target_angle[31]),
        .I1(angle_0[31]),
        .O(error0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__6_i_2
       (.I0(saved_target_angle[30]),
        .I1(angle_0[30]),
        .O(error0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__6_i_3
       (.I0(saved_target_angle[29]),
        .I1(angle_0[29]),
        .O(error0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry__6_i_4
       (.I0(saved_target_angle[28]),
        .I1(angle_0[28]),
        .O(error0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry_i_1
       (.I0(saved_target_angle[3]),
        .I1(angle_0[3]),
        .O(error0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry_i_2
       (.I0(saved_target_angle[2]),
        .I1(angle_0[2]),
        .O(error0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry_i_3
       (.I0(saved_target_angle[1]),
        .I1(angle_0[1]),
        .O(error0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    error0_carry_i_4
       (.I0(saved_target_angle[0]),
        .I1(angle_0[0]),
        .O(error0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[0]),
        .Q(error_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[10]),
        .Q(error_prev[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[11]),
        .Q(error_prev[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[12]),
        .Q(error_prev[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[13]),
        .Q(error_prev[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[14]),
        .Q(error_prev[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[15]),
        .Q(error_prev[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[16]),
        .Q(error_prev[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[17]),
        .Q(error_prev[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[18]),
        .Q(error_prev[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[19]),
        .Q(error_prev[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[1]),
        .Q(error_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[20]),
        .Q(error_prev[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[21]),
        .Q(error_prev[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[22]),
        .Q(error_prev[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[23]),
        .Q(error_prev[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[24]),
        .Q(error_prev[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[25]),
        .Q(error_prev[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[26]),
        .Q(error_prev[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[27]),
        .Q(error_prev[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[28]),
        .Q(error_prev[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[29]),
        .Q(error_prev[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[2]),
        .Q(error_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[30]),
        .Q(error_prev[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[3]),
        .Q(error_prev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[4]),
        .Q(error_prev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[5]),
        .Q(error_prev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[6]),
        .Q(error_prev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[7]),
        .Q(error_prev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[8]),
        .Q(error_prev[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_prev_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error[9]),
        .Q(error_prev[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[0]),
        .Q(error[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[10]),
        .Q(error[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[11]),
        .Q(error[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[12]),
        .Q(error[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[13]),
        .Q(error[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[14]),
        .Q(error[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[15]),
        .Q(error[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[16]),
        .Q(error[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[17]),
        .Q(error[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[18]),
        .Q(error[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[19]),
        .Q(error[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[1]),
        .Q(error[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[20]),
        .Q(error[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[21]),
        .Q(error[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[22]),
        .Q(error[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[23]),
        .Q(error[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[24]),
        .Q(error[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[25]),
        .Q(error[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[26]),
        .Q(error[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[27]),
        .Q(error[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[28]),
        .Q(error[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[29]),
        .Q(error[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[2]),
        .Q(error[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[30]),
        .Q(error[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[31]),
        .Q(error[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[3]),
        .Q(error[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[4]),
        .Q(error[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[5]),
        .Q(error[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[6]),
        .Q(error[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[7]),
        .Q(error[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[8]),
        .Q(error[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(error0[9]),
        .Q(error[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(i__carry__0_i_9_n_5),
        .I1(i__carry__0_i_9_n_4),
        .O(i__carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_10
       (.CI(i__carry_i_2_n_0),
        .CO({i__carry__0_i_10_n_0,i__carry__0_i_10_n_1,i__carry__0_i_10_n_2,i__carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[11:8]),
        .O({i__carry__0_i_10_n_4,i__carry__0_i_10_n_5,i__carry__0_i_10_n_6,i__carry__0_i_10_n_7}),
        .S({i__carry__0_i_15_n_0,i__carry__0_i_16_n_0,i__carry__0_i_17_n_0,i__carry__0_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_11
       (.I0(output_velocity_0[15]),
        .I1(\interim_velocity_reg_n_0_[15] ),
        .O(i__carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_12
       (.I0(output_velocity_0[14]),
        .I1(\interim_velocity_reg_n_0_[14] ),
        .O(i__carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_13
       (.I0(output_velocity_0[13]),
        .I1(\interim_velocity_reg_n_0_[13] ),
        .O(i__carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_14
       (.I0(output_velocity_0[12]),
        .I1(\interim_velocity_reg_n_0_[12] ),
        .O(i__carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_15
       (.I0(output_velocity_0[11]),
        .I1(\interim_velocity_reg_n_0_[11] ),
        .O(i__carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_16
       (.I0(output_velocity_0[10]),
        .I1(\interim_velocity_reg_n_0_[10] ),
        .O(i__carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_17
       (.I0(output_velocity_0[9]),
        .I1(\interim_velocity_reg_n_0_[9] ),
        .O(i__carry__0_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_18
       (.I0(output_velocity_0[8]),
        .I1(\interim_velocity_reg_n_0_[8] ),
        .O(i__carry__0_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(i__carry__0_i_9_n_7),
        .I1(i__carry__0_i_9_n_6),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(i__carry__0_i_10_n_5),
        .I1(i__carry__0_i_10_n_4),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(i__carry__0_i_10_n_7),
        .I1(i__carry__0_i_10_n_6),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_9_n_5),
        .I1(i__carry__0_i_9_n_4),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_9_n_7),
        .I1(i__carry__0_i_9_n_6),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_7
       (.I0(i__carry__0_i_10_n_5),
        .I1(i__carry__0_i_10_n_4),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_8
       (.I0(i__carry__0_i_10_n_7),
        .I1(i__carry__0_i_10_n_6),
        .O(i__carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_9
       (.CI(i__carry__0_i_10_n_0),
        .CO({i__carry__0_i_9_n_0,i__carry__0_i_9_n_1,i__carry__0_i_9_n_2,i__carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[15:12]),
        .O({i__carry__0_i_9_n_4,i__carry__0_i_9_n_5,i__carry__0_i_9_n_6,i__carry__0_i_9_n_7}),
        .S({i__carry__0_i_11_n_0,i__carry__0_i_12_n_0,i__carry__0_i_13_n_0,i__carry__0_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(i__carry__1_i_9_n_5),
        .I1(i__carry__1_i_9_n_4),
        .O(i__carry__1_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__1_i_10
       (.CI(i__carry__0_i_9_n_0),
        .CO({i__carry__1_i_10_n_0,i__carry__1_i_10_n_1,i__carry__1_i_10_n_2,i__carry__1_i_10_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[19:16]),
        .O({i__carry__1_i_10_n_4,i__carry__1_i_10_n_5,i__carry__1_i_10_n_6,i__carry__1_i_10_n_7}),
        .S({i__carry__1_i_15_n_0,i__carry__1_i_16_n_0,i__carry__1_i_17_n_0,i__carry__1_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_11
       (.I0(output_velocity_0[23]),
        .I1(\interim_velocity_reg_n_0_[23] ),
        .O(i__carry__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_12
       (.I0(output_velocity_0[22]),
        .I1(\interim_velocity_reg_n_0_[22] ),
        .O(i__carry__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_13
       (.I0(output_velocity_0[21]),
        .I1(\interim_velocity_reg_n_0_[21] ),
        .O(i__carry__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_14
       (.I0(output_velocity_0[20]),
        .I1(\interim_velocity_reg_n_0_[20] ),
        .O(i__carry__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_15
       (.I0(output_velocity_0[19]),
        .I1(\interim_velocity_reg_n_0_[19] ),
        .O(i__carry__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_16
       (.I0(output_velocity_0[18]),
        .I1(\interim_velocity_reg_n_0_[18] ),
        .O(i__carry__1_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_17
       (.I0(output_velocity_0[17]),
        .I1(\interim_velocity_reg_n_0_[17] ),
        .O(i__carry__1_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_18
       (.I0(output_velocity_0[16]),
        .I1(\interim_velocity_reg_n_0_[16] ),
        .O(i__carry__1_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(i__carry__1_i_9_n_7),
        .I1(i__carry__1_i_9_n_6),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(i__carry__1_i_10_n_5),
        .I1(i__carry__1_i_10_n_4),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_4
       (.I0(i__carry__1_i_10_n_7),
        .I1(i__carry__1_i_10_n_6),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_5
       (.I0(i__carry__1_i_9_n_5),
        .I1(i__carry__1_i_9_n_4),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_6
       (.I0(i__carry__1_i_9_n_7),
        .I1(i__carry__1_i_9_n_6),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_7
       (.I0(i__carry__1_i_10_n_5),
        .I1(i__carry__1_i_10_n_4),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_8
       (.I0(i__carry__1_i_10_n_7),
        .I1(i__carry__1_i_10_n_6),
        .O(i__carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__1_i_9
       (.CI(i__carry__1_i_10_n_0),
        .CO({i__carry__1_i_9_n_0,i__carry__1_i_9_n_1,i__carry__1_i_9_n_2,i__carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[23:20]),
        .O({i__carry__1_i_9_n_4,i__carry__1_i_9_n_5,i__carry__1_i_9_n_6,i__carry__1_i_9_n_7}),
        .S({i__carry__1_i_11_n_0,i__carry__1_i_12_n_0,i__carry__1_i_13_n_0,i__carry__1_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_1
       (.I0(i__carry__2_i_9_n_5),
        .I1(i__carry__2_i_9_n_4),
        .O(i__carry__2_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__2_i_10
       (.CI(i__carry__1_i_9_n_0),
        .CO({i__carry__2_i_10_n_0,i__carry__2_i_10_n_1,i__carry__2_i_10_n_2,i__carry__2_i_10_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[27:24]),
        .O({i__carry__2_i_10_n_4,i__carry__2_i_10_n_5,i__carry__2_i_10_n_6,i__carry__2_i_10_n_7}),
        .S({i__carry__2_i_15_n_0,i__carry__2_i_16_n_0,i__carry__2_i_17_n_0,i__carry__2_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_11
       (.I0(output_velocity_0[31]),
        .I1(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_12
       (.I0(output_velocity_0[30]),
        .I1(\interim_velocity_reg_n_0_[30] ),
        .O(i__carry__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_13
       (.I0(output_velocity_0[29]),
        .I1(\interim_velocity_reg_n_0_[29] ),
        .O(i__carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_14
       (.I0(output_velocity_0[28]),
        .I1(\interim_velocity_reg_n_0_[28] ),
        .O(i__carry__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_15
       (.I0(output_velocity_0[27]),
        .I1(\interim_velocity_reg_n_0_[27] ),
        .O(i__carry__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_16
       (.I0(output_velocity_0[26]),
        .I1(\interim_velocity_reg_n_0_[26] ),
        .O(i__carry__2_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_17
       (.I0(output_velocity_0[25]),
        .I1(\interim_velocity_reg_n_0_[25] ),
        .O(i__carry__2_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_18
       (.I0(output_velocity_0[24]),
        .I1(\interim_velocity_reg_n_0_[24] ),
        .O(i__carry__2_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_2
       (.I0(i__carry__2_i_9_n_7),
        .I1(i__carry__2_i_9_n_6),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_3
       (.I0(i__carry__2_i_10_n_5),
        .I1(i__carry__2_i_10_n_4),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__2_i_4
       (.I0(i__carry__2_i_10_n_7),
        .I1(i__carry__2_i_10_n_6),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_5
       (.I0(i__carry__2_i_9_n_5),
        .I1(i__carry__2_i_9_n_4),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_6
       (.I0(i__carry__2_i_9_n_7),
        .I1(i__carry__2_i_9_n_6),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_7
       (.I0(i__carry__2_i_10_n_5),
        .I1(i__carry__2_i_10_n_4),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_8
       (.I0(i__carry__2_i_10_n_7),
        .I1(i__carry__2_i_10_n_6),
        .O(i__carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__2_i_9
       (.CI(i__carry__2_i_10_n_0),
        .CO({i__carry__2_i_9_n_0,i__carry__2_i_9_n_1,i__carry__2_i_9_n_2,i__carry__2_i_9_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[31:28]),
        .O({i__carry__2_i_9_n_4,i__carry__2_i_9_n_5,i__carry__2_i_9_n_6,i__carry__2_i_9_n_7}),
        .S({i__carry__2_i_11_n_0,i__carry__2_i_12_n_0,i__carry__2_i_13_n_0,i__carry__2_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_1
       (.I0(i__carry__3_i_9_n_5),
        .I1(i__carry__3_i_9_n_4),
        .O(i__carry__3_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__3_i_10
       (.CI(i__carry__2_i_9_n_0),
        .CO({i__carry__3_i_10_n_0,i__carry__3_i_10_n_1,i__carry__3_i_10_n_2,i__carry__3_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__3_i_10_n_4,i__carry__3_i_10_n_5,i__carry__3_i_10_n_6,i__carry__3_i_10_n_7}),
        .S({i__carry__3_i_15_n_0,i__carry__3_i_16_n_0,i__carry__3_i_17_n_0,i__carry__3_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_2
       (.I0(i__carry__3_i_9_n_7),
        .I1(i__carry__3_i_9_n_6),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_3
       (.I0(i__carry__3_i_10_n_5),
        .I1(i__carry__3_i_10_n_4),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__3_i_4
       (.I0(i__carry__3_i_10_n_7),
        .I1(i__carry__3_i_10_n_6),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_5
       (.I0(i__carry__3_i_9_n_5),
        .I1(i__carry__3_i_9_n_4),
        .O(i__carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_6
       (.I0(i__carry__3_i_9_n_7),
        .I1(i__carry__3_i_9_n_6),
        .O(i__carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_7
       (.I0(i__carry__3_i_10_n_5),
        .I1(i__carry__3_i_10_n_4),
        .O(i__carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_8
       (.I0(i__carry__3_i_10_n_7),
        .I1(i__carry__3_i_10_n_6),
        .O(i__carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__3_i_9
       (.CI(i__carry__3_i_10_n_0),
        .CO({i__carry__3_i_9_n_0,i__carry__3_i_9_n_1,i__carry__3_i_9_n_2,i__carry__3_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__3_i_9_n_4,i__carry__3_i_9_n_5,i__carry__3_i_9_n_6,i__carry__3_i_9_n_7}),
        .S({i__carry__3_i_11_n_0,i__carry__3_i_12_n_0,i__carry__3_i_13_n_0,i__carry__3_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_1
       (.I0(i__carry__4_i_9_n_5),
        .I1(i__carry__4_i_9_n_4),
        .O(i__carry__4_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__4_i_10
       (.CI(i__carry__3_i_9_n_0),
        .CO({i__carry__4_i_10_n_0,i__carry__4_i_10_n_1,i__carry__4_i_10_n_2,i__carry__4_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__4_i_10_n_4,i__carry__4_i_10_n_5,i__carry__4_i_10_n_6,i__carry__4_i_10_n_7}),
        .S({i__carry__4_i_15_n_0,i__carry__4_i_16_n_0,i__carry__4_i_17_n_0,i__carry__4_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_2
       (.I0(i__carry__4_i_9_n_7),
        .I1(i__carry__4_i_9_n_6),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_3
       (.I0(i__carry__4_i_10_n_5),
        .I1(i__carry__4_i_10_n_4),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__4_i_4
       (.I0(i__carry__4_i_10_n_7),
        .I1(i__carry__4_i_10_n_6),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_5
       (.I0(i__carry__4_i_9_n_5),
        .I1(i__carry__4_i_9_n_4),
        .O(i__carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_6
       (.I0(i__carry__4_i_9_n_7),
        .I1(i__carry__4_i_9_n_6),
        .O(i__carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_7
       (.I0(i__carry__4_i_10_n_5),
        .I1(i__carry__4_i_10_n_4),
        .O(i__carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_8
       (.I0(i__carry__4_i_10_n_7),
        .I1(i__carry__4_i_10_n_6),
        .O(i__carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__4_i_9
       (.CI(i__carry__4_i_10_n_0),
        .CO({i__carry__4_i_9_n_0,i__carry__4_i_9_n_1,i__carry__4_i_9_n_2,i__carry__4_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__4_i_9_n_4,i__carry__4_i_9_n_5,i__carry__4_i_9_n_6,i__carry__4_i_9_n_7}),
        .S({i__carry__4_i_11_n_0,i__carry__4_i_12_n_0,i__carry__4_i_13_n_0,i__carry__4_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_1
       (.I0(i__carry__5_i_9_n_5),
        .I1(i__carry__5_i_9_n_4),
        .O(i__carry__5_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__5_i_10
       (.CI(i__carry__4_i_9_n_0),
        .CO({i__carry__5_i_10_n_0,i__carry__5_i_10_n_1,i__carry__5_i_10_n_2,i__carry__5_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__5_i_10_n_4,i__carry__5_i_10_n_5,i__carry__5_i_10_n_6,i__carry__5_i_10_n_7}),
        .S({i__carry__5_i_15_n_0,i__carry__5_i_16_n_0,i__carry__5_i_17_n_0,i__carry__5_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_2
       (.I0(i__carry__5_i_9_n_7),
        .I1(i__carry__5_i_9_n_6),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_3
       (.I0(i__carry__5_i_10_n_5),
        .I1(i__carry__5_i_10_n_4),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__5_i_4
       (.I0(i__carry__5_i_10_n_7),
        .I1(i__carry__5_i_10_n_6),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_5
       (.I0(i__carry__5_i_9_n_5),
        .I1(i__carry__5_i_9_n_4),
        .O(i__carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_6
       (.I0(i__carry__5_i_9_n_7),
        .I1(i__carry__5_i_9_n_6),
        .O(i__carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_7
       (.I0(i__carry__5_i_10_n_5),
        .I1(i__carry__5_i_10_n_4),
        .O(i__carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_8
       (.I0(i__carry__5_i_10_n_7),
        .I1(i__carry__5_i_10_n_6),
        .O(i__carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__5_i_9
       (.CI(i__carry__5_i_10_n_0),
        .CO({i__carry__5_i_9_n_0,i__carry__5_i_9_n_1,i__carry__5_i_9_n_2,i__carry__5_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__5_i_9_n_4,i__carry__5_i_9_n_5,i__carry__5_i_9_n_6,i__carry__5_i_9_n_7}),
        .S({i__carry__5_i_11_n_0,i__carry__5_i_12_n_0,i__carry__5_i_13_n_0,i__carry__5_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_1
       (.I0(i__carry__6_i_9_n_5),
        .I1(i__carry__6_i_9_n_4),
        .O(i__carry__6_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__6_i_10
       (.CI(i__carry__5_i_9_n_0),
        .CO({i__carry__6_i_10_n_0,i__carry__6_i_10_n_1,i__carry__6_i_10_n_2,i__carry__6_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__6_i_10_n_4,i__carry__6_i_10_n_5,i__carry__6_i_10_n_6,i__carry__6_i_10_n_7}),
        .S({i__carry__6_i_15_n_0,i__carry__6_i_16_n_0,i__carry__6_i_17_n_0,i__carry__6_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_2
       (.I0(i__carry__6_i_9_n_7),
        .I1(i__carry__6_i_9_n_6),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_3
       (.I0(i__carry__6_i_10_n_5),
        .I1(i__carry__6_i_10_n_4),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__6_i_4
       (.I0(i__carry__6_i_10_n_7),
        .I1(i__carry__6_i_10_n_6),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_5
       (.I0(i__carry__6_i_9_n_5),
        .I1(i__carry__6_i_9_n_4),
        .O(i__carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_6
       (.I0(i__carry__6_i_9_n_7),
        .I1(i__carry__6_i_9_n_6),
        .O(i__carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_7
       (.I0(i__carry__6_i_10_n_5),
        .I1(i__carry__6_i_10_n_4),
        .O(i__carry__6_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_8
       (.I0(i__carry__6_i_10_n_7),
        .I1(i__carry__6_i_10_n_6),
        .O(i__carry__6_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__6_i_9
       (.CI(i__carry__6_i_10_n_0),
        .CO({i__carry__6_i_9_n_0,i__carry__6_i_9_n_1,i__carry__6_i_9_n_2,i__carry__6_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__6_i_9_n_4,i__carry__6_i_9_n_5,i__carry__6_i_9_n_6,i__carry__6_i_9_n_7}),
        .S({i__carry__6_i_11_n_0,i__carry__6_i_12_n_0,i__carry__6_i_13_n_0,i__carry__6_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__7_i_1
       (.I0(i__carry__7_i_9_n_5),
        .I1(i__carry__7_i_9_n_4),
        .O(i__carry__7_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__7_i_10
       (.CI(i__carry__6_i_9_n_0),
        .CO({i__carry__7_i_10_n_0,i__carry__7_i_10_n_1,i__carry__7_i_10_n_2,i__carry__7_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__7_i_10_n_4,i__carry__7_i_10_n_5,i__carry__7_i_10_n_6,i__carry__7_i_10_n_7}),
        .S({i__carry__7_i_15_n_0,i__carry__7_i_16_n_0,i__carry__7_i_17_n_0,i__carry__7_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__7_i_2
       (.I0(i__carry__7_i_9_n_7),
        .I1(i__carry__7_i_9_n_6),
        .O(i__carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__7_i_3
       (.I0(i__carry__7_i_10_n_5),
        .I1(i__carry__7_i_10_n_4),
        .O(i__carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__7_i_4
       (.I0(i__carry__7_i_10_n_7),
        .I1(i__carry__7_i_10_n_6),
        .O(i__carry__7_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_5
       (.I0(i__carry__7_i_9_n_5),
        .I1(i__carry__7_i_9_n_4),
        .O(i__carry__7_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_6
       (.I0(i__carry__7_i_9_n_7),
        .I1(i__carry__7_i_9_n_6),
        .O(i__carry__7_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_7
       (.I0(i__carry__7_i_10_n_5),
        .I1(i__carry__7_i_10_n_4),
        .O(i__carry__7_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_8
       (.I0(i__carry__7_i_10_n_7),
        .I1(i__carry__7_i_10_n_6),
        .O(i__carry__7_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__7_i_9
       (.CI(i__carry__7_i_10_n_0),
        .CO({i__carry__7_i_9_n_0,i__carry__7_i_9_n_1,i__carry__7_i_9_n_2,i__carry__7_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__7_i_9_n_4,i__carry__7_i_9_n_5,i__carry__7_i_9_n_6,i__carry__7_i_9_n_7}),
        .S({i__carry__7_i_11_n_0,i__carry__7_i_12_n_0,i__carry__7_i_13_n_0,i__carry__7_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__8_i_1
       (.I0(i__carry__8_i_3_n_7),
        .I1(i__carry__8_i_3_n_6),
        .O(i__carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__8_i_2
       (.I0(i__carry__8_i_3_n_7),
        .I1(i__carry__8_i_3_n_6),
        .O(i__carry__8_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__8_i_3
       (.CI(i__carry__7_i_9_n_0),
        .CO({NLW_i__carry__8_i_3_CO_UNCONNECTED[3:1],i__carry__8_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__8_i_3_O_UNCONNECTED[3:2],i__carry__8_i_3_n_6,i__carry__8_i_3_n_7}),
        .S({1'b0,1'b0,i__carry__8_i_4_n_0,i__carry__8_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__8_i_4
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__8_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__8_i_5
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__8_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(i__carry_i_2_n_5),
        .I1(i__carry_i_2_n_4),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_10
       (.I0(output_velocity_0[7]),
        .I1(\interim_velocity_reg_n_0_[7] ),
        .O(i__carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_11
       (.I0(output_velocity_0[6]),
        .I1(\interim_velocity_reg_n_0_[6] ),
        .O(i__carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_12
       (.I0(output_velocity_0[5]),
        .I1(\interim_velocity_reg_n_0_[5] ),
        .O(i__carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_13
       (.I0(output_velocity_0[4]),
        .I1(\interim_velocity_reg_n_0_[4] ),
        .O(i__carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_14
       (.I0(output_velocity_0[3]),
        .I1(\interim_velocity_reg_n_0_[3] ),
        .O(i__carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_15
       (.I0(output_velocity_0[2]),
        .I1(\interim_velocity_reg_n_0_[2] ),
        .O(i__carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_16
       (.I0(output_velocity_0[1]),
        .I1(\interim_velocity_reg_n_0_[1] ),
        .O(i__carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_17
       (.I0(output_velocity_0[0]),
        .I1(\interim_velocity_reg_n_0_[0] ),
        .O(i__carry_i_17_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_2
       (.CI(i__carry_i_9_n_0),
        .CO({i__carry_i_2_n_0,i__carry_i_2_n_1,i__carry_i_2_n_2,i__carry_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[7:4]),
        .O({i__carry_i_2_n_4,i__carry_i_2_n_5,i__carry_i_2_n_6,i__carry_i_2_n_7}),
        .S({i__carry_i_10_n_0,i__carry_i_11_n_0,i__carry_i_12_n_0,i__carry_i_13_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(i__carry_i_9_n_5),
        .I1(i__carry_i_9_n_4),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4
       (.I0(i__carry_i_9_n_7),
        .I1(i__carry_i_9_n_6),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(i__carry_i_2_n_5),
        .I1(i__carry_i_2_n_4),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(i__carry_i_2_n_7),
        .I1(i__carry_i_2_n_6),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7
       (.I0(i__carry_i_9_n_5),
        .I1(i__carry_i_9_n_4),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8
       (.I0(i__carry_i_9_n_7),
        .I1(i__carry_i_9_n_6),
        .O(i__carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_9
       (.CI(1'b0),
        .CO({i__carry_i_9_n_0,i__carry_i_9_n_1,i__carry_i_9_n_2,i__carry_i_9_n_3}),
        .CYINIT(1'b1),
        .DI(output_velocity_0[3:0]),
        .O({i__carry_i_9_n_4,i__carry_i_9_n_5,i__carry_i_9_n_6,i__carry_i_9_n_7}),
        .S({i__carry_i_14_n_0,i__carry_i_15_n_0,i__carry_i_16_n_0,i__carry_i_17_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    i_term0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\integral_reg[19]_i_1_n_7 ,\integral_reg[15]_i_1_n_4 ,\integral_reg[15]_i_1_n_5 ,\integral_reg[15]_i_1_n_6 ,\integral_reg[15]_i_1_n_7 ,\integral_reg[11]_i_1_n_4 ,\integral_reg[11]_i_1_n_5 ,\integral_reg[11]_i_1_n_6 ,\integral_reg[11]_i_1_n_7 ,\integral_reg[7]_i_1_n_4 ,\integral_reg[7]_i_1_n_5 ,\integral_reg[7]_i_1_n_6 ,\integral_reg[7]_i_1_n_7 ,\integral_reg[3]_i_1_n_4 ,\integral_reg[3]_i_1_n_5 ,\integral_reg[3]_i_1_n_6 ,\integral_reg[3]_i_1_n_7 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_i_term0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ki_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({i_term0_n_6,i_term0_n_7,i_term0_n_8,i_term0_n_9,i_term0_n_10,i_term0_n_11,i_term0_n_12,i_term0_n_13,i_term0_n_14,i_term0_n_15,i_term0_n_16,i_term0_n_17,i_term0_n_18,i_term0_n_19,i_term0_n_20,i_term0_n_21,i_term0_n_22,i_term0_n_23}),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_i_term0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_i_term0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(sys_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_i_term0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_i_term0_OVERFLOW_UNCONNECTED),
        .P({i_term0_n_58,i_term0_n_59,i_term0_n_60,i_term0_n_61,i_term0_n_62,i_term0_n_63,i_term0_n_64,i_term0_n_65,i_term0_n_66,i_term0_n_67,i_term0_n_68,i_term0_n_69,i_term0_n_70,i_term0_n_71,i_term0_n_72,i_term0_n_73,i_term0_n_74,i_term0_n_75,i_term0_n_76,i_term0_n_77,i_term0_n_78,i_term0_n_79,i_term0_n_80,i_term0_n_81,i_term0_n_82,i_term0_n_83,i_term0_n_84,i_term0_n_85,i_term0_n_86,i_term0_n_87,i_term0_n_88,i_term0_n_89,i_term0_n_90,i_term0_n_91,i_term0_n_92,i_term0_n_93,i_term0_n_94,i_term0_n_95,i_term0_n_96,i_term0_n_97,i_term0_n_98,i_term0_n_99,i_term0_n_100,i_term0_n_101,i_term0_n_102,i_term0_n_103,i_term0_n_104,i_term0_n_105}),
        .PATTERNBDETECT(NLW_i_term0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_i_term0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({i_term0_n_106,i_term0_n_107,i_term0_n_108,i_term0_n_109,i_term0_n_110,i_term0_n_111,i_term0_n_112,i_term0_n_113,i_term0_n_114,i_term0_n_115,i_term0_n_116,i_term0_n_117,i_term0_n_118,i_term0_n_119,i_term0_n_120,i_term0_n_121,i_term0_n_122,i_term0_n_123,i_term0_n_124,i_term0_n_125,i_term0_n_126,i_term0_n_127,i_term0_n_128,i_term0_n_129,i_term0_n_130,i_term0_n_131,i_term0_n_132,i_term0_n_133,i_term0_n_134,i_term0_n_135,i_term0_n_136,i_term0_n_137,i_term0_n_138,i_term0_n_139,i_term0_n_140,i_term0_n_141,i_term0_n_142,i_term0_n_143,i_term0_n_144,i_term0_n_145,i_term0_n_146,i_term0_n_147,i_term0_n_148,i_term0_n_149,i_term0_n_150,i_term0_n_151,i_term0_n_152,i_term0_n_153}),
        .RSTA(new_target_angle_available_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_i_term0_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    i_term_reg
       (.A({\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_5 ,\integral_reg[31]_i_1_n_6 ,\integral_reg[31]_i_1_n_7 ,\integral_reg[27]_i_1_n_4 ,\integral_reg[27]_i_1_n_5 ,\integral_reg[27]_i_1_n_6 ,\integral_reg[27]_i_1_n_7 ,\integral_reg[23]_i_1_n_4 ,\integral_reg[23]_i_1_n_5 ,\integral_reg[23]_i_1_n_6 ,\integral_reg[23]_i_1_n_7 ,\integral_reg[19]_i_1_n_4 ,\integral_reg[19]_i_1_n_5 ,\integral_reg[19]_i_1_n_6 }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_i_term_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({i_term0_n_6,i_term0_n_7,i_term0_n_8,i_term0_n_9,i_term0_n_10,i_term0_n_11,i_term0_n_12,i_term0_n_13,i_term0_n_14,i_term0_n_15,i_term0_n_16,i_term0_n_17,i_term0_n_18,i_term0_n_19,i_term0_n_20,i_term0_n_21,i_term0_n_22,i_term0_n_23}),
        .BCOUT(NLW_i_term_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_i_term_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_i_term_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(sys_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_i_term_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_i_term_reg_OVERFLOW_UNCONNECTED),
        .P({i_term_reg_n_58,i_term_reg_n_59,i_term_reg_n_60,i_term_reg_n_61,i_term_reg_n_62,i_term_reg_n_63,i_term_reg_n_64,i_term_reg_n_65,i_term_reg_n_66,i_term_reg_n_67,i_term_reg_n_68,i_term_reg_n_69,i_term_reg_n_70,i_term_reg_n_71,i_term_reg_n_72,i_term_reg_n_73,i_term_reg_n_74,i_term_reg_n_75,i_term_reg_n_76,i_term_reg_n_77,i_term_reg_n_78,i_term_reg_n_79,i_term_reg_n_80,i_term_reg_n_81,\^i_term_reg [40:17]}),
        .PATTERNBDETECT(NLW_i_term_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_i_term_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({i_term0_n_106,i_term0_n_107,i_term0_n_108,i_term0_n_109,i_term0_n_110,i_term0_n_111,i_term0_n_112,i_term0_n_113,i_term0_n_114,i_term0_n_115,i_term0_n_116,i_term0_n_117,i_term0_n_118,i_term0_n_119,i_term0_n_120,i_term0_n_121,i_term0_n_122,i_term0_n_123,i_term0_n_124,i_term0_n_125,i_term0_n_126,i_term0_n_127,i_term0_n_128,i_term0_n_129,i_term0_n_130,i_term0_n_131,i_term0_n_132,i_term0_n_133,i_term0_n_134,i_term0_n_135,i_term0_n_136,i_term0_n_137,i_term0_n_138,i_term0_n_139,i_term0_n_140,i_term0_n_141,i_term0_n_142,i_term0_n_143,i_term0_n_144,i_term0_n_145,i_term0_n_146,i_term0_n_147,i_term0_n_148,i_term0_n_149,i_term0_n_150,i_term0_n_151,i_term0_n_152,i_term0_n_153}),
        .PCOUT(NLW_i_term_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(new_target_angle_available_0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_i_term_reg_UNDERFLOW_UNCONNECTED));
  FDRE \i_term_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_105),
        .Q(\^i_term_reg [0]),
        .R(1'b0));
  FDRE \i_term_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_95),
        .Q(\^i_term_reg [10]),
        .R(1'b0));
  FDRE \i_term_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_94),
        .Q(\^i_term_reg [11]),
        .R(1'b0));
  FDRE \i_term_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_93),
        .Q(\^i_term_reg [12]),
        .R(1'b0));
  FDRE \i_term_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_92),
        .Q(\^i_term_reg [13]),
        .R(1'b0));
  FDRE \i_term_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_91),
        .Q(\^i_term_reg [14]),
        .R(1'b0));
  FDRE \i_term_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_90),
        .Q(\^i_term_reg [15]),
        .R(1'b0));
  FDRE \i_term_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_89),
        .Q(\^i_term_reg [16]),
        .R(1'b0));
  FDRE \i_term_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_104),
        .Q(\^i_term_reg [1]),
        .R(1'b0));
  FDRE \i_term_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_103),
        .Q(\^i_term_reg [2]),
        .R(1'b0));
  FDRE \i_term_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_102),
        .Q(\^i_term_reg [3]),
        .R(1'b0));
  FDRE \i_term_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_101),
        .Q(\^i_term_reg [4]),
        .R(1'b0));
  FDRE \i_term_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_100),
        .Q(\^i_term_reg [5]),
        .R(1'b0));
  FDRE \i_term_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_99),
        .Q(\^i_term_reg [6]),
        .R(1'b0));
  FDRE \i_term_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_98),
        .Q(\^i_term_reg [7]),
        .R(1'b0));
  FDRE \i_term_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_97),
        .Q(\^i_term_reg [8]),
        .R(1'b0));
  FDRE \i_term_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(i_term0_n_96),
        .Q(\^i_term_reg [9]),
        .R(1'b0));
  CARRY4 integral1
       (.CI(1'b0),
        .CO({integral1_n_0,integral1_n_1,integral1_n_2,integral1_n_3}),
        .CYINIT(1'b0),
        .DI({error[6:4],1'b0}),
        .O(NLW_integral1_O_UNCONNECTED[3:0]),
        .S({integral1_i_1_n_0,integral1_i_2_n_0,integral1_i_3_n_0,error[3]}));
  CARRY4 integral1__0
       (.CI(integral1_n_0),
        .CO({integral1__0_n_0,integral1__0_n_1,integral1__0_n_2,integral1__0_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__5_n_0,integral1_i_2__6_n_0,integral1_i_3__6_n_0,integral1_i_4_n_0}),
        .O(NLW_integral1__0_O_UNCONNECTED[3:0]),
        .S({integral1_i_5_n_0,integral1_i_6_n_0,integral1_i_7_n_0,integral1_i_8_n_0}));
  CARRY4 integral1__1
       (.CI(integral1__0_n_0),
        .CO({integral1__1_n_0,integral1__1_n_1,integral1__1_n_2,integral1__1_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__7_n_0,integral1_i_2__8_n_0,integral1_i_3__8_n_0,integral1_i_4__7_n_0}),
        .O({integral1__1_n_4,integral1__1_n_5,integral1__1_n_6,integral1__1_n_7}),
        .S({integral1_i_5__0_n_0,integral1_i_6__0_n_0,integral1_i_7__0_n_0,integral1_i_8__0_n_0}));
  CARRY4 integral1__10
       (.CI(integral1__9_n_0),
        .CO({integral1__10_n_0,integral1__10_n_1,integral1__10_n_2,integral1__10_n_3}),
        .CYINIT(1'b0),
        .DI(error[8:5]),
        .O({integral1__10_n_4,integral1__10_n_5,integral1__10_n_6,integral1__10_n_7}),
        .S({integral1_i_1__58_n_0,integral1_i_2__59_n_0,integral1_i_3__58_n_0,integral1_i_4__51_n_0}));
  CARRY4 integral1__11
       (.CI(integral1__10_n_0),
        .CO({integral1__11_n_0,integral1__11_n_1,integral1__11_n_2,integral1__11_n_3}),
        .CYINIT(1'b0),
        .DI(error[12:9]),
        .O({integral1__11_n_4,integral1__11_n_5,integral1__11_n_6,integral1__11_n_7}),
        .S({integral1_i_1__59_n_0,integral1_i_2__60_n_0,integral1_i_3__59_n_0,integral1_i_4__52_n_0}));
  CARRY4 integral1__12
       (.CI(integral1__11_n_0),
        .CO({integral1__12_n_0,integral1__12_n_1,integral1__12_n_2,integral1__12_n_3}),
        .CYINIT(1'b0),
        .DI(error[16:13]),
        .O({integral1__12_n_4,integral1__12_n_5,integral1__12_n_6,integral1__12_n_7}),
        .S({integral1_i_1__60_n_0,integral1_i_2__61_n_0,integral1_i_3__60_n_0,integral1_i_4__53_n_0}));
  CARRY4 integral1__13
       (.CI(integral1__12_n_0),
        .CO({integral1__13_n_0,integral1__13_n_1,integral1__13_n_2,integral1__13_n_3}),
        .CYINIT(1'b0),
        .DI(error[20:17]),
        .O({integral1__13_n_4,integral1__13_n_5,integral1__13_n_6,integral1__13_n_7}),
        .S({integral1_i_1__61_n_0,integral1_i_2__62_n_0,integral1_i_3__61_n_0,integral1_i_4__54_n_0}));
  CARRY4 integral1__14
       (.CI(integral1__13_n_0),
        .CO({integral1__14_n_0,integral1__14_n_1,integral1__14_n_2,integral1__14_n_3}),
        .CYINIT(1'b0),
        .DI(error[24:21]),
        .O({integral1__14_n_4,integral1__14_n_5,integral1__14_n_6,integral1__14_n_7}),
        .S({integral1_i_1__62_n_0,integral1_i_2__63_n_0,integral1_i_3__62_n_0,integral1_i_4__55_n_0}));
  CARRY4 integral1__15
       (.CI(integral1__14_n_0),
        .CO({integral1__15_n_0,integral1__15_n_1,integral1__15_n_2,integral1__15_n_3}),
        .CYINIT(1'b0),
        .DI(error[28:25]),
        .O({integral1__15_n_4,integral1__15_n_5,integral1__15_n_6,integral1__15_n_7}),
        .S({integral1_i_1__54_n_0,integral1_i_2__56_n_0,integral1_i_3__71_n_0,integral1_i_4__56_n_0}));
  CARRY4 integral1__16
       (.CI(integral1__15_n_0),
        .CO({integral1__16_n_0,NLW_integral1__16_CO_UNCONNECTED[2],integral1__16_n_2,integral1__16_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,error[31:29]}),
        .O({NLW_integral1__16_O_UNCONNECTED[3],integral1__16_n_5,integral1__16_n_6,integral1__16_n_7}),
        .S({1'b1,integral1_i_1__51_n_0,integral1_i_2__49_n_0,integral1_i_3__47_n_0}));
  CARRY4 integral1__17
       (.CI(1'b0),
        .CO({integral1__17_n_0,integral1__17_n_1,integral1__17_n_2,integral1__17_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__18_n_0,integral1_i_2__20_n_0,integral1_i_3__56_n_0,1'b0}),
        .O({integral1__17_n_4,integral1__17_n_5,integral1__17_n_6,integral1__17_n_7}),
        .S({integral1_i_4__46_n_0,integral1_i_5__27_n_0,integral1_i_6__48_n_0,integral1_i_7__49_n_0}));
  CARRY4 integral1__18
       (.CI(integral1__17_n_0),
        .CO({integral1__18_n_0,integral1__18_n_1,integral1__18_n_2,integral1__18_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__4_n_0,integral1_i_2__5_n_0,integral1_i_3__20_n_0,integral1_i_4__18_n_0}),
        .O({integral1__18_n_4,integral1__18_n_5,integral1__18_n_6,integral1__18_n_7}),
        .S({integral1_i_5__21_n_0,integral1_i_6__19_n_0,integral1_i_7__25_n_0,integral1_i_8__25_n_0}));
  CARRY4 integral1__19
       (.CI(integral1__18_n_0),
        .CO({integral1__19_n_0,integral1__19_n_1,integral1__19_n_2,integral1__19_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__6_n_0,integral1_i_2__7_n_0,integral1_i_3__7_n_0,integral1_i_4__6_n_0}),
        .O({integral1__19_n_4,integral1__19_n_5,integral1__19_n_6,integral1__19_n_7}),
        .S({integral1_i_5__22_n_0,integral1_i_6__20_n_0,integral1_i_7__19_n_0,integral1_i_8__19_n_0}));
  CARRY4 integral1__2
       (.CI(integral1__1_n_0),
        .CO({integral1__2_n_0,integral1__2_n_1,integral1__2_n_2,integral1__2_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__9_n_0,integral1_i_2__10_n_0,integral1_i_3__10_n_0,integral1_i_4__9_n_0}),
        .O({integral1__2_n_4,integral1__2_n_5,integral1__2_n_6,integral1__2_n_7}),
        .S({integral1_i_5__1_n_0,integral1_i_6__1_n_0,integral1_i_7__1_n_0,integral1_i_8__1_n_0}));
  CARRY4 integral1__20
       (.CI(integral1__19_n_0),
        .CO({integral1__20_n_0,integral1__20_n_1,integral1__20_n_2,integral1__20_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__8_n_0,integral1_i_2__9_n_0,integral1_i_3__9_n_0,integral1_i_4__8_n_0}),
        .O({integral1__20_n_4,integral1__20_n_5,integral1__20_n_6,integral1__20_n_7}),
        .S({integral1_i_5__23_n_0,integral1_i_6__21_n_0,integral1_i_7__20_n_0,integral1_i_8__20_n_0}));
  CARRY4 integral1__21
       (.CI(integral1__20_n_0),
        .CO({integral1__21_n_0,integral1__21_n_1,integral1__21_n_2,integral1__21_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__10_n_0,integral1_i_2__11_n_0,integral1_i_3__11_n_0,integral1_i_4__10_n_0}),
        .O({integral1__21_n_4,integral1__21_n_5,integral1__21_n_6,integral1__21_n_7}),
        .S({integral1_i_5__24_n_0,integral1_i_6__22_n_0,integral1_i_7__21_n_0,integral1_i_8__21_n_0}));
  CARRY4 integral1__22
       (.CI(integral1__21_n_0),
        .CO({integral1__22_n_0,integral1__22_n_1,integral1__22_n_2,integral1__22_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__12_n_0,integral1_i_2__13_n_0,integral1_i_3__13_n_0,integral1_i_4__12_n_0}),
        .O({integral1__22_n_4,integral1__22_n_5,integral1__22_n_6,integral1__22_n_7}),
        .S({integral1_i_5__25_n_0,integral1_i_6__23_n_0,integral1_i_7__22_n_0,integral1_i_8__22_n_0}));
  CARRY4 integral1__23
       (.CI(integral1__22_n_0),
        .CO({integral1__23_n_0,integral1__23_n_1,integral1__23_n_2,integral1__23_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__14_n_0,integral1_i_2__15_n_0,integral1_i_3__15_n_0,integral1_i_4__14_n_0}),
        .O({integral1__23_n_4,integral1__23_n_5,integral1__23_n_6,integral1__23_n_7}),
        .S({integral1_i_5__26_n_0,integral1_i_6__24_n_0,integral1_i_7__23_n_0,integral1_i_8__23_n_0}));
  CARRY4 integral1__24
       (.CI(integral1__23_n_0),
        .CO({integral1__24_n_0,integral1__24_n_1,integral1__24_n_2,integral1__24_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__72_n_0,integral1_i_2__17_n_0,integral1_i_3__17_n_0,integral1_i_4__16_n_0}),
        .O({integral1__24_n_4,integral1__24_n_5,integral1__24_n_6,integral1__24_n_7}),
        .S({integral1_i_5__28_n_0,integral1_i_6__25_n_0,integral1_i_7__24_n_0,integral1_i_8__24_n_0}));
  CARRY4 integral1__25
       (.CI(integral1__24_n_0),
        .CO({integral1__25_n_0,NLW_integral1__25_CO_UNCONNECTED[2],integral1__25_n_2,integral1__25_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,error[31:30],integral1_i_1__73_n_0}),
        .O({NLW_integral1__25_O_UNCONNECTED[3],integral1__25_n_5,integral1__25_n_6,integral1__25_n_7}),
        .S({1'b1,integral1_i_2__53_n_0,integral1_i_3__72_n_0,integral1_i_4__66_n_0}));
  CARRY4 integral1__26
       (.CI(1'b0),
        .CO({integral1__26_n_0,integral1__26_n_1,integral1__26_n_2,integral1__26_n_3}),
        .CYINIT(1'b0),
        .DI({error[1:0],1'b0,1'b1}),
        .O({integral1__26_n_4,integral1__26_n_5,integral1__26_n_6,NLW_integral1__26_O_UNCONNECTED[0]}),
        .S({integral1_i_1__56_n_0,integral1_i_2__57_n_0,integral1_i_3__19_n_0,error[0]}));
  CARRY4 integral1__27
       (.CI(integral1__26_n_0),
        .CO({integral1__27_n_0,integral1__27_n_1,integral1__27_n_2,integral1__27_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__19_n_0,integral1_i_2__21_n_0,error[3:2]}),
        .O({integral1__27_n_4,integral1__27_n_5,integral1__27_n_6,integral1__27_n_7}),
        .S({integral1_i_3__54_n_0,integral1_i_4__47_n_0,integral1_i_5__29_n_0,integral1_i_6__49_n_0}));
  CARRY4 integral1__28
       (.CI(integral1__27_n_0),
        .CO({integral1__28_n_0,integral1__28_n_1,integral1__28_n_2,integral1__28_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__20_n_0,integral1_i_2__22_n_0,integral1_i_3__21_n_0,integral1_i_4__19_n_0}),
        .O({integral1__28_n_4,integral1__28_n_5,integral1__28_n_6,integral1__28_n_7}),
        .S({integral1_i_5__30_n_0,integral1_i_6__26_n_0,integral1_i_7__26_n_0,integral1_i_8__26_n_0}));
  CARRY4 integral1__29
       (.CI(integral1__28_n_0),
        .CO({integral1__29_n_0,integral1__29_n_1,integral1__29_n_2,integral1__29_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__21_n_0,integral1_i_2__23_n_0,integral1_i_3__22_n_0,integral1_i_4__20_n_0}),
        .O({integral1__29_n_4,integral1__29_n_5,integral1__29_n_6,integral1__29_n_7}),
        .S({integral1_i_5__31_n_0,integral1_i_6__27_n_0,integral1_i_7__27_n_0,integral1_i_8__27_n_0}));
  CARRY4 integral1__3
       (.CI(integral1__2_n_0),
        .CO({integral1__3_n_0,integral1__3_n_1,integral1__3_n_2,integral1__3_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__11_n_0,integral1_i_2__12_n_0,integral1_i_3__12_n_0,integral1_i_4__11_n_0}),
        .O({integral1__3_n_4,integral1__3_n_5,integral1__3_n_6,integral1__3_n_7}),
        .S({integral1_i_5__2_n_0,integral1_i_6__2_n_0,integral1_i_7__2_n_0,integral1_i_8__2_n_0}));
  CARRY4 integral1__30
       (.CI(integral1__29_n_0),
        .CO({integral1__30_n_0,integral1__30_n_1,integral1__30_n_2,integral1__30_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__22_n_0,integral1_i_2__24_n_0,integral1_i_3__23_n_0,integral1_i_4__21_n_0}),
        .O({integral1__30_n_4,integral1__30_n_5,integral1__30_n_6,integral1__30_n_7}),
        .S({integral1_i_5__32_n_0,integral1_i_6__28_n_0,integral1_i_7__28_n_0,integral1_i_8__28_n_0}));
  CARRY4 integral1__31
       (.CI(integral1__30_n_0),
        .CO({integral1__31_n_0,integral1__31_n_1,integral1__31_n_2,integral1__31_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__23_n_0,integral1_i_2__25_n_0,integral1_i_3__24_n_0,integral1_i_4__22_n_0}),
        .O({integral1__31_n_4,integral1__31_n_5,integral1__31_n_6,integral1__31_n_7}),
        .S({integral1_i_5__33_n_0,integral1_i_6__29_n_0,integral1_i_7__29_n_0,integral1_i_8__29_n_0}));
  CARRY4 integral1__32
       (.CI(integral1__31_n_0),
        .CO({integral1__32_n_0,integral1__32_n_1,integral1__32_n_2,integral1__32_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__24_n_0,integral1_i_2__26_n_0,integral1_i_3__25_n_0,integral1_i_4__23_n_0}),
        .O({integral1__32_n_4,integral1__32_n_5,integral1__32_n_6,integral1__32_n_7}),
        .S({integral1_i_5__34_n_0,integral1_i_6__30_n_0,integral1_i_7__30_n_0,integral1_i_8__30_n_0}));
  CARRY4 integral1__33
       (.CI(integral1__32_n_0),
        .CO({integral1__33_n_0,integral1__33_n_1,integral1__33_n_2,integral1__33_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__25_n_0,integral1_i_2__27_n_0,integral1_i_3__26_n_0,integral1_i_4__24_n_0}),
        .O({integral1__33_n_4,integral1__33_n_5,integral1__33_n_6,integral1__33_n_7}),
        .S({integral1_i_5__35_n_0,integral1_i_6__31_n_0,integral1_i_7__31_n_0,integral1_i_8__31_n_0}));
  CARRY4 integral1__34
       (.CI(integral1__33_n_0),
        .CO({integral1__34_n_0,integral1__34_n_1,integral1__34_n_2,integral1__34_n_3}),
        .CYINIT(1'b0),
        .DI({error[29],integral1_i_1__26_n_0,integral1_i_2__28_n_0,integral1_i_3__27_n_0}),
        .O({integral1__34_n_4,integral1__34_n_5,integral1__34_n_6,integral1__34_n_7}),
        .S({integral1_i_4__65_n_0,integral1_i_5__36_n_0,integral1_i_6__32_n_0,integral1_i_7__32_n_0}));
  CARRY4 integral1__35
       (.CI(integral1__34_n_0),
        .CO({NLW_integral1__35_CO_UNCONNECTED[3],integral1__35_n_1,NLW_integral1__35_CO_UNCONNECTED[1],integral1__35_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,error[31:30]}),
        .O({NLW_integral1__35_O_UNCONNECTED[3:2],integral1__35_n_6,integral1__35_n_7}),
        .S({1'b0,1'b1,integral1_i_1__47_n_0,integral1_i_2__73_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__36
       (.CI(1'b0),
        .CO({integral1__36_n_0,integral1__36_n_1,integral1__36_n_2,integral1__36_n_3}),
        .CYINIT(1'b0),
        .DI({integral1__1_n_4,integral1__1_n_5,integral1__1_n_6,integral1__1_n_7}),
        .O(NLW_integral1__36_O_UNCONNECTED[3:0]),
        .S({integral1_i_1__0_n_0,integral1_i_2__1_n_0,integral1_i_3__1_n_0,integral1_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__37
       (.CI(integral1__36_n_0),
        .CO({integral1__37_n_0,integral1__37_n_1,integral1__37_n_2,integral1__37_n_3}),
        .CYINIT(1'b0),
        .DI({integral1__2_n_4,integral1__2_n_5,integral1__2_n_6,integral1__2_n_7}),
        .O({integral1__37_n_4,integral1__37_n_5,integral1__37_n_6,integral1__37_n_7}),
        .S({integral1_i_1__1_n_0,integral1_i_2__2_n_0,integral1_i_3__2_n_0,integral1_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__38
       (.CI(integral1__37_n_0),
        .CO({integral1__38_n_0,integral1__38_n_1,integral1__38_n_2,integral1__38_n_3}),
        .CYINIT(1'b0),
        .DI({integral1__3_n_4,integral1__3_n_5,integral1__3_n_6,integral1__3_n_7}),
        .O({integral1__38_n_4,integral1__38_n_5,integral1__38_n_6,integral1__38_n_7}),
        .S({integral1_i_1__2_n_0,integral1_i_2__3_n_0,integral1_i_3__3_n_0,integral1_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__39
       (.CI(integral1__38_n_0),
        .CO({integral1__39_n_0,integral1__39_n_1,integral1__39_n_2,integral1__39_n_3}),
        .CYINIT(1'b0),
        .DI({error[0],integral1__4_n_5,integral1__4_n_6,integral1__4_n_7}),
        .O({integral1__39_n_4,integral1__39_n_5,integral1__39_n_6,integral1__39_n_7}),
        .S({integral1_i_1__3_n_0,integral1_i_2__4_n_0,integral1_i_3__4_n_0,integral1_i_4__4_n_0}));
  CARRY4 integral1__4
       (.CI(integral1__3_n_0),
        .CO({integral1__4_n_0,integral1__4_n_1,integral1__4_n_2,integral1__4_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__13_n_0,integral1_i_2__14_n_0,integral1_i_3__14_n_0,integral1_i_4__13_n_0}),
        .O({integral1__4_n_4,integral1__4_n_5,integral1__4_n_6,integral1__4_n_7}),
        .S({integral1_i_5__3_n_0,integral1_i_6__3_n_0,integral1_i_7__3_n_0,integral1_i_8__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__40
       (.CI(integral1__39_n_0),
        .CO({integral1__40_n_0,integral1__40_n_1,integral1__40_n_2,integral1__40_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__27_n_0,integral1_i_2__29_n_0,integral1_i_3__28_n_0,integral1_i_4__0_n_0}),
        .O({integral1__40_n_4,integral1__40_n_5,integral1__40_n_6,integral1__40_n_7}),
        .S({integral1_i_5__6_n_0,integral1_i_6__6_n_0,integral1_i_7__6_n_0,integral1_i_8__6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__41
       (.CI(integral1__40_n_0),
        .CO({integral1__41_n_0,integral1__41_n_1,integral1__41_n_2,integral1__41_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__28_n_0,integral1_i_2__30_n_0,integral1_i_3__29_n_0,integral1_i_4__25_n_0}),
        .O({integral1__41_n_4,integral1__41_n_5,integral1__41_n_6,integral1__41_n_7}),
        .S({integral1_i_5__7_n_0,integral1_i_6__7_n_0,integral1_i_7__7_n_0,integral1_i_8__7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__42
       (.CI(integral1__41_n_0),
        .CO({integral1__42_n_0,integral1__42_n_1,integral1__42_n_2,integral1__42_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__29_n_0,integral1_i_2__31_n_0,integral1_i_3__30_n_0,integral1_i_4__26_n_0}),
        .O({integral1__42_n_4,integral1__42_n_5,integral1__42_n_6,integral1__42_n_7}),
        .S({integral1_i_5__8_n_0,integral1_i_6__8_n_0,integral1_i_7__8_n_0,integral1_i_8__8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__43
       (.CI(integral1__42_n_0),
        .CO({integral1__43_n_0,integral1__43_n_1,integral1__43_n_2,integral1__43_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__30_n_0,integral1_i_2__32_n_0,integral1_i_3__31_n_0,integral1_i_4__27_n_0}),
        .O({integral1__43_n_4,integral1__43_n_5,integral1__43_n_6,integral1__43_n_7}),
        .S({integral1_i_5__37_n_0,integral1_i_6__33_n_0,integral1_i_7__33_n_0,integral1_i_8__9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__44
       (.CI(integral1__43_n_0),
        .CO({integral1__44_n_0,integral1__44_n_1,integral1__44_n_2,integral1__44_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__31_n_0,integral1_i_2__33_n_0,integral1_i_3__32_n_0,integral1_i_4__28_n_0}),
        .O({integral1__44_n_4,integral1__44_n_5,integral1__44_n_6,integral1__44_n_7}),
        .S({integral1_i_5__38_n_0,integral1_i_6__34_n_0,integral1_i_7__34_n_0,integral1_i_8__32_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__45
       (.CI(integral1__44_n_0),
        .CO({integral1__45_n_0,integral1__45_n_1,integral1__45_n_2,integral1__45_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__49_n_0,integral1_i_2__52_n_0,integral1_i_3__50_n_0,integral1_i_4__42_n_0}),
        .O({integral1__45_n_4,integral1__45_n_5,integral1__45_n_6,integral1__45_n_7}),
        .S({integral1_i_5__53_n_0,integral1_i_6__50_n_0,integral1_i_7__50_n_0,integral1_i_8__46_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__46
       (.CI(integral1__45_n_0),
        .CO({integral1__46_n_0,integral1__46_n_1,integral1__46_n_2,integral1__46_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__48_n_0,integral1_i_2__51_n_0,integral1_i_3__49_n_0,integral1_i_4__41_n_0}),
        .O({integral1__46_n_4,integral1__46_n_5,integral1__46_n_6,integral1__46_n_7}),
        .S({integral1_i_5__54_n_0,integral1_i_6__51_n_0,integral1_i_7__51_n_0,integral1_i_8__47_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__47
       (.CI(integral1__46_n_0),
        .CO({NLW_integral1__47_CO_UNCONNECTED[3],integral1__47_n_1,integral1__47_n_2,integral1__47_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,integral1_i_1__50_n_0,integral1_i_2__50_n_0,integral1_i_3__48_n_0}),
        .O({integral1__47_n_4,integral1__47_n_5,integral1__47_n_6,integral1__47_n_7}),
        .S({integral1_i_4__67_n_0,integral1_i_5__52_n_0,integral1_i_6__52_n_0,integral1_i_7__52_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__48
       (.CI(1'b0),
        .CO({integral1__48_n_0,integral1__48_n_1,integral1__48_n_2,integral1__48_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__74_n_0,integral1_i_2__34_n_0,integral1_i_3__33_n_0,integral1_i_4__29_n_0}),
        .O(NLW_integral1__48_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__18_n_0,integral1_i_6__53_n_0,integral1_i_7__35_n_0,integral1_i_8__33_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__49
       (.CI(integral1__48_n_0),
        .CO({integral1__49_n_0,integral1__49_n_1,integral1__49_n_2,integral1__49_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__52_n_0,integral1_i_2__54_n_0,integral1_i_3__52_n_0,integral1_i_4__43_n_0}),
        .O(NLW_integral1__49_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__19_n_0,integral1_i_6__17_n_0,integral1_i_7__17_n_0,integral1_i_8__17_n_0}));
  CARRY4 integral1__5
       (.CI(integral1__4_n_0),
        .CO({integral1__5_n_0,integral1__5_n_1,integral1__5_n_2,integral1__5_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__15_n_0,integral1_i_2__16_n_0,integral1_i_3__16_n_0,integral1_i_4__15_n_0}),
        .O({integral1__5_n_4,integral1__5_n_5,integral1__5_n_6,integral1__5_n_7}),
        .S({integral1_i_5__4_n_0,integral1_i_6__4_n_0,integral1_i_7__4_n_0,integral1_i_8__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__50
       (.CI(integral1__49_n_0),
        .CO({integral1__50_n_0,integral1__50_n_1,integral1__50_n_2,integral1__50_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__53_n_0,integral1_i_2__55_n_0,integral1_i_3__53_n_0,integral1_i_4__44_n_0}),
        .O(NLW_integral1__50_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__20_n_0,integral1_i_6__18_n_0,integral1_i_7__18_n_0,integral1_i_8__18_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__51
       (.CI(integral1__50_n_0),
        .CO({integral1__51_n_0,integral1__51_n_1,integral1__51_n_2,integral1__51_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__32_n_0,integral1_i_2__35_n_0,integral1_i_3__34_n_0,integral1_i_4__45_n_0}),
        .O(NLW_integral1__51_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__9_n_0,integral1_i_6__9_n_0,integral1_i_7__9_n_0,integral1_i_8__10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__52
       (.CI(integral1__51_n_0),
        .CO({integral1__52_n_0,integral1__52_n_1,integral1__52_n_2,integral1__52_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__33_n_0,integral1_i_2__36_n_0,integral1_i_3__35_n_0,integral1_i_4__30_n_0}),
        .O({integral1__52_n_4,integral1__52_n_5,integral1__52_n_6,integral1__52_n_7}),
        .S({integral1_i_5__10_n_0,integral1_i_6__10_n_0,integral1_i_7__10_n_0,integral1_i_8__11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__53
       (.CI(integral1__52_n_0),
        .CO({integral1__53_n_0,integral1__53_n_1,integral1__53_n_2,integral1__53_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__34_n_0,integral1_i_2__37_n_0,integral1_i_3__36_n_0,integral1_i_4__31_n_0}),
        .O({integral1__53_n_4,integral1__53_n_5,integral1__53_n_6,integral1__53_n_7}),
        .S({integral1_i_5__11_n_0,integral1_i_6__11_n_0,integral1_i_7__11_n_0,integral1_i_8__12_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__54
       (.CI(integral1__53_n_0),
        .CO({integral1__54_n_0,integral1__54_n_1,integral1__54_n_2,integral1__54_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__35_n_0,integral1_i_2__38_n_0,integral1_i_3__37_n_0,integral1_i_4__32_n_0}),
        .O({integral1__54_n_4,integral1__54_n_5,integral1__54_n_6,integral1__54_n_7}),
        .S({integral1_i_5__12_n_0,integral1_i_6__12_n_0,integral1_i_7__12_n_0,integral1_i_8__13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__55
       (.CI(integral1__54_n_0),
        .CO({integral1__55_n_0,integral1__55_n_1,integral1__55_n_2,integral1__55_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__36_n_0,integral1_i_2__39_n_0,integral1_i_3__38_n_0,integral1_i_4__33_n_0}),
        .O({integral1__55_n_4,integral1__55_n_5,integral1__55_n_6,integral1__55_n_7}),
        .S({integral1_i_5__13_n_0,integral1_i_6__13_n_0,integral1_i_7__13_n_0,integral1_i_8__14_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__56
       (.CI(integral1__55_n_0),
        .CO({integral1__56_n_0,integral1__56_n_1,integral1__56_n_2,integral1__56_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__37_n_0,integral1_i_2__40_n_0,integral1_i_3__39_n_0,integral1_i_4__34_n_0}),
        .O({integral1__56_n_4,integral1__56_n_5,integral1__56_n_6,integral1__56_n_7}),
        .S({integral1_i_5__14_n_0,integral1_i_6__14_n_0,integral1_i_7__14_n_0,integral1_i_8__15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__57
       (.CI(integral1__56_n_0),
        .CO({integral1__57_n_0,integral1__57_n_1,integral1__57_n_2,integral1__57_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__38_n_0,integral1_i_2__41_n_0,integral1_i_3__40_n_0,integral1_i_4__35_n_0}),
        .O({integral1__57_n_4,integral1__57_n_5,integral1__57_n_6,integral1__57_n_7}),
        .S({integral1_i_5__15_n_0,integral1_i_6__15_n_0,integral1_i_7__15_n_0,integral1_i_8__16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__58
       (.CI(integral1__57_n_0),
        .CO({NLW_integral1__58_CO_UNCONNECTED[3:2],integral1__58_n_2,integral1__58_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,integral1_i_1__39_n_0,integral1_i_2__42_n_0}),
        .O({NLW_integral1__58_O_UNCONNECTED[3],integral1__58_n_5,integral1__58_n_6,integral1__58_n_7}),
        .S({1'b0,integral1_i_3__5_n_0,integral1_i_4__5_n_0,integral1_i_5__16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__59
       (.CI(1'b0),
        .CO({integral1__59_n_0,integral1__59_n_1,integral1__59_n_2,integral1__59_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__40_n_0,integral1_i_2__43_n_0,integral1_i_3__63_n_0,1'b0}),
        .O({integral1__59_n_4,integral1__59_n_5,integral1__59_n_6,integral1__59_n_7}),
        .S({integral1_i_4__48_n_0,integral1_i_5__39_n_0,integral1_i_6__35_n_0,integral1_i_7__16_n_0}));
  CARRY4 integral1__6
       (.CI(integral1__5_n_0),
        .CO({integral1__6_n_0,integral1__6_n_1,integral1__6_n_2,integral1__6_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__16_n_0,integral1_i_2__18_n_0,integral1_i_3__18_n_0,integral1_i_4__17_n_0}),
        .O({integral1__6_n_4,integral1__6_n_5,integral1__6_n_6,integral1__6_n_7}),
        .S({integral1_i_5__5_n_0,integral1_i_6__5_n_0,integral1_i_7__5_n_0,integral1_i_8__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__60
       (.CI(integral1__59_n_0),
        .CO({integral1__60_n_0,integral1__60_n_1,integral1__60_n_2,integral1__60_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__41_n_0,integral1_i_2__44_n_0,integral1_i_3__41_n_0,integral1_i_4__36_n_0}),
        .O({integral1__60_n_4,integral1__60_n_5,integral1__60_n_6,integral1__60_n_7}),
        .S({integral1_i_5__40_n_0,integral1_i_6__36_n_0,integral1_i_7__36_n_0,integral1_i_8__34_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__61
       (.CI(integral1__60_n_0),
        .CO({integral1__61_n_0,integral1__61_n_1,integral1__61_n_2,integral1__61_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__42_n_0,integral1_i_2__45_n_0,integral1_i_3__42_n_0,integral1_i_4__37_n_0}),
        .O({integral1__61_n_4,integral1__61_n_5,integral1__61_n_6,integral1__61_n_7}),
        .S({integral1_i_5__41_n_0,integral1_i_6__37_n_0,integral1_i_7__37_n_0,integral1_i_8__35_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__62
       (.CI(integral1__61_n_0),
        .CO({integral1__62_n_0,integral1__62_n_1,integral1__62_n_2,integral1__62_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__43_n_0,integral1_i_2__46_n_0,integral1_i_3__43_n_0,integral1_i_4__38_n_0}),
        .O({integral1__62_n_4,integral1__62_n_5,integral1__62_n_6,integral1__62_n_7}),
        .S({integral1_i_5__42_n_0,integral1_i_6__38_n_0,integral1_i_7__38_n_0,integral1_i_8__36_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__63
       (.CI(integral1__62_n_0),
        .CO({integral1__63_n_0,integral1__63_n_1,integral1__63_n_2,integral1__63_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__44_n_0,integral1_i_2__47_n_0,integral1_i_3__44_n_0,integral1_i_4__39_n_0}),
        .O({integral1__63_n_4,integral1__63_n_5,integral1__63_n_6,integral1__63_n_7}),
        .S({integral1_i_5__43_n_0,integral1_i_6__39_n_0,integral1_i_7__39_n_0,integral1_i_8__37_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__64
       (.CI(integral1__63_n_0),
        .CO({integral1__64_n_0,integral1__64_n_1,integral1__64_n_2,integral1__64_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__45_n_0,integral1_i_2__48_n_0,integral1_i_3__45_n_0,integral1_i_4__40_n_0}),
        .O({integral1__64_n_4,integral1__64_n_5,integral1__64_n_6,integral1__64_n_7}),
        .S({integral1_i_5__44_n_0,integral1_i_6__40_n_0,integral1_i_7__40_n_0,integral1_i_8__38_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__65
       (.CI(integral1__64_n_0),
        .CO({NLW_integral1__65_CO_UNCONNECTED[3],integral1__65_n_1,integral1__65_n_2,integral1__65_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,integral1_i_1__63_n_0,integral1_i_2__65_n_0,integral1_i_3__46_n_0}),
        .O({integral1__65_n_4,integral1__65_n_5,integral1__65_n_6,integral1__65_n_7}),
        .S({integral1_i_4__57_n_0,integral1_i_5__45_n_0,integral1_i_6__41_n_0,integral1_i_7__41_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__66
       (.CI(1'b0),
        .CO({integral1__66_n_0,integral1__66_n_1,integral1__66_n_2,integral1__66_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__64_n_0,integral1_i_2__64_n_0,integral1_i_3__64_n_0,integral1_i_4__58_n_0}),
        .O(NLW_integral1__66_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__17_n_0,integral1_i_6__16_n_0,integral1_i_7__42_n_0,integral1_i_8__39_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__67
       (.CI(integral1__66_n_0),
        .CO({integral1__67_n_0,integral1__67_n_1,integral1__67_n_2,integral1__67_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__65_n_0,integral1_i_2__66_n_0,integral1_i_3__65_n_0,integral1_i_4__59_n_0}),
        .O(NLW_integral1__67_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__46_n_0,integral1_i_6__42_n_0,integral1_i_7__43_n_0,integral1_i_8__40_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__68
       (.CI(integral1__67_n_0),
        .CO({integral1__68_n_0,integral1__68_n_1,integral1__68_n_2,integral1__68_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__66_n_0,integral1_i_2__67_n_0,integral1_i_3__66_n_0,integral1_i_4__60_n_0}),
        .O(NLW_integral1__68_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__47_n_0,integral1_i_6__43_n_0,integral1_i_7__44_n_0,integral1_i_8__41_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__69
       (.CI(integral1__68_n_0),
        .CO({integral1__69_n_0,integral1__69_n_1,integral1__69_n_2,integral1__69_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__67_n_0,integral1_i_2__68_n_0,integral1_i_3__67_n_0,integral1_i_4__61_n_0}),
        .O(NLW_integral1__69_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__48_n_0,integral1_i_6__44_n_0,integral1_i_7__45_n_0,integral1_i_8__42_n_0}));
  CARRY4 integral1__7
       (.CI(integral1__6_n_0),
        .CO({integral1__7_n_0,NLW_integral1__7_CO_UNCONNECTED[2],integral1__7_n_2,integral1__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,error[30],integral1_i_1__17_n_0}),
        .O({NLW_integral1__7_O_UNCONNECTED[3],integral1__7_n_5,integral1__7_n_6,integral1__7_n_7}),
        .S({1'b1,error[31],integral1_i_2__0_n_0,integral1_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__70
       (.CI(integral1__69_n_0),
        .CO({integral1__70_n_0,integral1__70_n_1,integral1__70_n_2,integral1__70_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__68_n_0,integral1_i_2__69_n_0,integral1_i_3__68_n_0,integral1_i_4__62_n_0}),
        .O(NLW_integral1__70_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__49_n_0,integral1_i_6__45_n_0,integral1_i_7__46_n_0,integral1_i_8__43_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__71
       (.CI(integral1__70_n_0),
        .CO({integral1__71_n_0,integral1__71_n_1,integral1__71_n_2,integral1__71_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__69_n_0,integral1_i_2__70_n_0,integral1_i_3__69_n_0,integral1_i_4__63_n_0}),
        .O(NLW_integral1__71_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__50_n_0,integral1_i_6__46_n_0,integral1_i_7__47_n_0,integral1_i_8__44_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__72
       (.CI(integral1__71_n_0),
        .CO({integral1__72_n_0,integral1__72_n_1,integral1__72_n_2,integral1__72_n_3}),
        .CYINIT(1'b0),
        .DI({integral1_i_1__70_n_0,integral1_i_2__71_n_0,integral1_i_3__70_n_0,integral1_i_4__64_n_0}),
        .O(NLW_integral1__72_O_UNCONNECTED[3:0]),
        .S({integral1_i_5__51_n_0,integral1_i_6__47_n_0,integral1_i_7__48_n_0,integral1_i_8__45_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__73
       (.CI(integral1__72_n_0),
        .CO({NLW_integral1__73_CO_UNCONNECTED[3:2],integral1__73_n_2,integral1__73_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,integral1_i_1__71_n_0,integral1_i_2__72_n_0}),
        .O(NLW_integral1__73_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,integral1_i_3__55_n_0,integral1_i_4__49_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__74
       (.CI(1'b0),
        .CO({integral1__74_n_0,integral1__74_n_1,integral1__74_n_2,integral1__74_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({integral1__74_n_4,integral1__74_n_5,integral1__74_n_6,integral1__74_n_7}),
        .S({integral1__52_n_4,integral1__52_n_5,integral1__52_n_6,integral1_i_1__46_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__75
       (.CI(integral1__74_n_0),
        .CO({integral1__75_n_0,integral1__75_n_1,integral1__75_n_2,integral1__75_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({integral1__75_n_4,integral1__75_n_5,integral1__75_n_6,integral1__75_n_7}),
        .S({integral1__53_n_4,integral1__53_n_5,integral1__53_n_6,integral1__53_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__76
       (.CI(integral1__75_n_0),
        .CO({integral1__76_n_0,integral1__76_n_1,integral1__76_n_2,integral1__76_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({integral1__76_n_4,integral1__76_n_5,integral1__76_n_6,integral1__76_n_7}),
        .S({integral1__54_n_4,integral1__54_n_5,integral1__54_n_6,integral1__54_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__77
       (.CI(integral1__76_n_0),
        .CO({integral1__77_n_0,integral1__77_n_1,integral1__77_n_2,integral1__77_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({integral1__77_n_4,integral1__77_n_5,integral1__77_n_6,integral1__77_n_7}),
        .S({integral1__55_n_4,integral1__55_n_5,integral1__55_n_6,integral1__55_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__78
       (.CI(integral1__77_n_0),
        .CO({integral1__78_n_0,integral1__78_n_1,integral1__78_n_2,integral1__78_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({integral1__78_n_4,integral1__78_n_5,integral1__78_n_6,integral1__78_n_7}),
        .S({integral1__56_n_4,integral1__56_n_5,integral1__56_n_6,integral1__56_n_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__79
       (.CI(integral1__78_n_0),
        .CO({integral1__79_n_0,integral1__79_n_1,integral1__79_n_2,integral1__79_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({integral1__79_n_4,integral1__79_n_5,integral1__79_n_6,integral1__79_n_7}),
        .S({integral1__57_n_4,integral1__57_n_5,integral1__57_n_6,integral1__57_n_7}));
  CARRY4 integral1__8
       (.CI(1'b0),
        .CO({integral1__8_n_0,integral1__8_n_1,integral1__8_n_2,integral1__8_n_3}),
        .CYINIT(1'b0),
        .DI({error[0],1'b0,1'b0,1'b1}),
        .O({integral1__8_n_4,integral1__8_n_5,integral1__8_n_6,integral1__8_n_7}),
        .S({integral1_i_1__55_n_0,integral1_i_2__19_n_0,integral1_i_3__51_n_0,error[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 integral1__80
       (.CI(integral1__79_n_0),
        .CO({NLW_integral1__80_CO_UNCONNECTED[3:2],integral1__80_n_2,integral1__80_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_integral1__80_O_UNCONNECTED[3],integral1__80_n_5,integral1__80_n_6,integral1__80_n_7}),
        .S({1'b0,integral1__58_n_5,integral1__58_n_6,integral1__58_n_7}));
  CARRY4 integral1__9
       (.CI(integral1__8_n_0),
        .CO({integral1__9_n_0,integral1__9_n_1,integral1__9_n_2,integral1__9_n_3}),
        .CYINIT(1'b0),
        .DI(error[4:1]),
        .O({integral1__9_n_4,integral1__9_n_5,integral1__9_n_6,integral1__9_n_7}),
        .S({integral1_i_1__57_n_0,integral1_i_2__58_n_0,integral1_i_3__57_n_0,integral1_i_4__50_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    integral1_i_1
       (.I0(error[0]),
        .I1(error[2]),
        .I2(error[6]),
        .O(integral1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_1__0
       (.I0(integral1__1_n_4),
        .I1(integral1__8_n_4),
        .O(integral1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_1__1
       (.I0(integral1__2_n_4),
        .I1(integral1__9_n_4),
        .O(integral1_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__10
       (.I0(error[18]),
        .I1(error[16]),
        .I2(error[20]),
        .O(integral1_i_1__10_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__11
       (.I0(error[15]),
        .I1(error[17]),
        .I2(error[21]),
        .O(integral1_i_1__11_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__12
       (.I0(error[22]),
        .I1(error[20]),
        .I2(error[24]),
        .O(integral1_i_1__12_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__13
       (.I0(error[19]),
        .I1(error[21]),
        .I2(error[25]),
        .O(integral1_i_1__13_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__14
       (.I0(error[26]),
        .I1(error[24]),
        .I2(error[28]),
        .O(integral1_i_1__14_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__15
       (.I0(error[23]),
        .I1(error[25]),
        .I2(error[29]),
        .O(integral1_i_1__15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_1__16
       (.I0(error[27]),
        .I1(error[29]),
        .O(integral1_i_1__16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_1__17
       (.I0(error[28]),
        .I1(error[30]),
        .O(integral1_i_1__17_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__18
       (.I0(error[2]),
        .I1(error[0]),
        .I2(error[4]),
        .O(integral1_i_1__18_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__19
       (.I0(error[6]),
        .I1(error[1]),
        .I2(error[4]),
        .O(integral1_i_1__19_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_1__2
       (.I0(integral1__3_n_4),
        .I1(integral1__10_n_4),
        .O(integral1_i_1__2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__20
       (.I0(error[10]),
        .I1(error[5]),
        .I2(error[8]),
        .O(integral1_i_1__20_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__21
       (.I0(error[14]),
        .I1(error[9]),
        .I2(error[12]),
        .O(integral1_i_1__21_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__22
       (.I0(error[18]),
        .I1(error[13]),
        .I2(error[16]),
        .O(integral1_i_1__22_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__23
       (.I0(error[22]),
        .I1(error[17]),
        .I2(error[20]),
        .O(integral1_i_1__23_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__24
       (.I0(error[26]),
        .I1(error[21]),
        .I2(error[24]),
        .O(integral1_i_1__24_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__25
       (.I0(error[30]),
        .I1(error[25]),
        .I2(error[28]),
        .O(integral1_i_1__25_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    integral1_i_1__26
       (.I0(error[31]),
        .I1(error[28]),
        .O(integral1_i_1__26_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__27
       (.I0(integral1__12_n_5),
        .I1(integral1__5_n_5),
        .I2(error[3]),
        .O(integral1_i_1__27_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__28
       (.I0(integral1__13_n_5),
        .I1(integral1__6_n_5),
        .I2(error[7]),
        .O(integral1_i_1__28_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__29
       (.I0(integral1__14_n_5),
        .I1(integral1__7_n_5),
        .I2(error[11]),
        .O(integral1_i_1__29_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    integral1_i_1__3
       (.I0(integral1__11_n_4),
        .I1(integral1__4_n_4),
        .I2(error[0]),
        .O(integral1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_1__30
       (.I0(error[15]),
        .I1(integral1__15_n_5),
        .O(integral1_i_1__30_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_1__31
       (.I0(error[19]),
        .I1(integral1__16_n_5),
        .O(integral1_i_1__31_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__32
       (.I0(integral1__40_n_4),
        .I1(integral1__28_n_4),
        .I2(integral1__20_n_6),
        .O(integral1_i_1__32_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__33
       (.I0(integral1__41_n_4),
        .I1(integral1__29_n_4),
        .I2(integral1__21_n_6),
        .O(integral1_i_1__33_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__34
       (.I0(integral1__42_n_4),
        .I1(integral1__30_n_4),
        .I2(integral1__22_n_6),
        .O(integral1_i_1__34_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__35
       (.I0(integral1__43_n_4),
        .I1(integral1__31_n_4),
        .I2(integral1__23_n_6),
        .O(integral1_i_1__35_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__36
       (.I0(integral1__44_n_4),
        .I1(integral1__32_n_4),
        .I2(integral1__24_n_6),
        .O(integral1_i_1__36_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__37
       (.I0(integral1__45_n_4),
        .I1(integral1__33_n_4),
        .I2(integral1__25_n_6),
        .O(integral1_i_1__37_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    integral1_i_1__38
       (.I0(integral1__46_n_4),
        .I1(integral1__34_n_4),
        .I2(integral1__25_n_0),
        .O(integral1_i_1__38_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    integral1_i_1__39
       (.I0(integral1__47_n_6),
        .I1(integral1__35_n_6),
        .I2(integral1__25_n_0),
        .O(integral1_i_1__39_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__4
       (.I0(error[6]),
        .I1(error[4]),
        .I2(error[8]),
        .O(integral1_i_1__4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__40
       (.I0(integral1__52_n_5),
        .I1(integral1__52_n_7),
        .I2(integral1__53_n_6),
        .O(integral1_i_1__40_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__41
       (.I0(integral1__53_n_5),
        .I1(integral1__53_n_7),
        .I2(integral1__54_n_6),
        .O(integral1_i_1__41_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__42
       (.I0(integral1__54_n_5),
        .I1(integral1__54_n_7),
        .I2(integral1__55_n_6),
        .O(integral1_i_1__42_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__43
       (.I0(integral1__55_n_5),
        .I1(integral1__55_n_7),
        .I2(integral1__56_n_6),
        .O(integral1_i_1__43_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__44
       (.I0(integral1__56_n_5),
        .I1(integral1__56_n_7),
        .I2(integral1__57_n_6),
        .O(integral1_i_1__44_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__45
       (.I0(integral1__57_n_5),
        .I1(integral1__57_n_7),
        .I2(integral1__58_n_6),
        .O(integral1_i_1__45_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_1__46
       (.I0(integral1__52_n_7),
        .O(integral1_i_1__46_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_1__47
       (.I0(error[31]),
        .O(integral1_i_1__47_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__48
       (.I0(error[27]),
        .I1(integral1__16_n_0),
        .O(integral1_i_1__48_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__49
       (.I0(error[23]),
        .I1(integral1__16_n_0),
        .O(integral1_i_1__49_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__5
       (.I0(error[3]),
        .I1(error[5]),
        .I2(error[9]),
        .O(integral1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__50
       (.I0(error[30]),
        .I1(integral1__16_n_0),
        .O(integral1_i_1__50_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_1__51
       (.I0(error[31]),
        .O(integral1_i_1__51_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__52
       (.I0(integral1__38_n_4),
        .I1(integral1__26_n_4),
        .I2(integral1__18_n_6),
        .O(integral1_i_1__52_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__53
       (.I0(integral1__39_n_4),
        .I1(integral1__27_n_4),
        .I2(integral1__19_n_6),
        .O(integral1_i_1__53_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__54
       (.I0(error[28]),
        .I1(error[31]),
        .O(integral1_i_1__54_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__55
       (.I0(error[0]),
        .I1(error[3]),
        .O(integral1_i_1__55_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__56
       (.I0(error[1]),
        .I1(error[3]),
        .O(integral1_i_1__56_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__57
       (.I0(error[4]),
        .I1(error[7]),
        .O(integral1_i_1__57_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__58
       (.I0(error[8]),
        .I1(error[11]),
        .O(integral1_i_1__58_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__59
       (.I0(error[12]),
        .I1(error[15]),
        .O(integral1_i_1__59_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__6
       (.I0(error[10]),
        .I1(error[8]),
        .I2(error[12]),
        .O(integral1_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__60
       (.I0(error[16]),
        .I1(error[19]),
        .O(integral1_i_1__60_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__61
       (.I0(error[20]),
        .I1(error[23]),
        .O(integral1_i_1__61_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_1__62
       (.I0(error[24]),
        .I1(error[27]),
        .O(integral1_i_1__62_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__63
       (.I0(integral1__57_n_4),
        .I1(integral1__58_n_6),
        .O(integral1_i_1__63_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    integral1_i_1__64
       (.I0(integral1__59_n_7),
        .I1(error[4]),
        .O(integral1_i_1__64_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__65
       (.I0(integral1__60_n_7),
        .I1(error[8]),
        .O(integral1_i_1__65_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__66
       (.I0(integral1__61_n_7),
        .I1(error[12]),
        .O(integral1_i_1__66_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__67
       (.I0(integral1__62_n_7),
        .I1(error[16]),
        .O(integral1_i_1__67_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__68
       (.I0(integral1__63_n_7),
        .I1(error[20]),
        .O(integral1_i_1__68_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__69
       (.I0(integral1__64_n_7),
        .I1(error[24]),
        .O(integral1_i_1__69_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__7
       (.I0(error[7]),
        .I1(error[9]),
        .I2(error[13]),
        .O(integral1_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__70
       (.I0(integral1__65_n_7),
        .I1(error[28]),
        .O(integral1_i_1__70_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__71
       (.I0(integral1__65_n_5),
        .I1(error[30]),
        .O(integral1_i_1__71_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__72
       (.I0(error[28]),
        .I1(error[30]),
        .O(integral1_i_1__72_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_1__73
       (.I0(error[29]),
        .I1(error[31]),
        .O(integral1_i_1__73_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_1__74
       (.I0(integral1__37_n_4),
        .I1(integral1__17_n_6),
        .O(integral1_i_1__74_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_1__8
       (.I0(error[14]),
        .I1(error[12]),
        .I2(error[16]),
        .O(integral1_i_1__8_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_1__9
       (.I0(error[11]),
        .I1(error[13]),
        .I2(error[17]),
        .O(integral1_i_1__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_2
       (.I0(error[5]),
        .I1(error[1]),
        .O(integral1_i_2_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    integral1_i_2__0
       (.I0(error[31]),
        .I1(error[29]),
        .I2(error[30]),
        .O(integral1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_2__1
       (.I0(integral1__1_n_5),
        .I1(integral1__8_n_5),
        .O(integral1_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__10
       (.I0(error[10]),
        .I1(error[12]),
        .I2(error[16]),
        .O(integral1_i_2__10_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__11
       (.I0(error[17]),
        .I1(error[15]),
        .I2(error[19]),
        .O(integral1_i_2__11_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__12
       (.I0(error[14]),
        .I1(error[16]),
        .I2(error[20]),
        .O(integral1_i_2__12_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__13
       (.I0(error[21]),
        .I1(error[19]),
        .I2(error[23]),
        .O(integral1_i_2__13_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__14
       (.I0(error[18]),
        .I1(error[20]),
        .I2(error[24]),
        .O(integral1_i_2__14_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__15
       (.I0(error[25]),
        .I1(error[23]),
        .I2(error[27]),
        .O(integral1_i_2__15_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__16
       (.I0(error[22]),
        .I1(error[24]),
        .I2(error[28]),
        .O(integral1_i_2__16_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__17
       (.I0(error[29]),
        .I1(error[27]),
        .I2(error[31]),
        .O(integral1_i_2__17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_2__18
       (.I0(error[26]),
        .I1(error[28]),
        .O(integral1_i_2__18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_2__19
       (.I0(error[2]),
        .O(integral1_i_2__19_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_2__2
       (.I0(integral1__2_n_5),
        .I1(integral1__9_n_5),
        .O(integral1_i_2__2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    integral1_i_2__20
       (.I0(error[2]),
        .I1(error[0]),
        .I2(error[4]),
        .O(integral1_i_2__20_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    integral1_i_2__21
       (.I0(error[6]),
        .I1(error[1]),
        .I2(error[4]),
        .O(integral1_i_2__21_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__22
       (.I0(error[9]),
        .I1(error[4]),
        .I2(error[7]),
        .O(integral1_i_2__22_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__23
       (.I0(error[13]),
        .I1(error[8]),
        .I2(error[11]),
        .O(integral1_i_2__23_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__24
       (.I0(error[17]),
        .I1(error[12]),
        .I2(error[15]),
        .O(integral1_i_2__24_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__25
       (.I0(error[21]),
        .I1(error[16]),
        .I2(error[19]),
        .O(integral1_i_2__25_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__26
       (.I0(error[25]),
        .I1(error[20]),
        .I2(error[23]),
        .O(integral1_i_2__26_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__27
       (.I0(error[29]),
        .I1(error[24]),
        .I2(error[27]),
        .O(integral1_i_2__27_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    integral1_i_2__28
       (.I0(error[30]),
        .I1(error[27]),
        .O(integral1_i_2__28_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__29
       (.I0(integral1__12_n_6),
        .I1(integral1__5_n_6),
        .I2(error[2]),
        .O(integral1_i_2__29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_2__3
       (.I0(integral1__3_n_5),
        .I1(integral1__10_n_5),
        .O(integral1_i_2__3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__30
       (.I0(integral1__13_n_6),
        .I1(integral1__6_n_6),
        .I2(error[6]),
        .O(integral1_i_2__30_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__31
       (.I0(integral1__14_n_6),
        .I1(integral1__7_n_6),
        .I2(error[10]),
        .O(integral1_i_2__31_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_2__32
       (.I0(error[14]),
        .I1(integral1__15_n_6),
        .O(integral1_i_2__32_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_2__33
       (.I0(error[18]),
        .I1(integral1__16_n_6),
        .O(integral1_i_2__33_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_2__34
       (.I0(integral1__17_n_7),
        .I1(integral1__37_n_5),
        .O(integral1_i_2__34_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__35
       (.I0(integral1__40_n_5),
        .I1(integral1__28_n_5),
        .I2(integral1__20_n_7),
        .O(integral1_i_2__35_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__36
       (.I0(integral1__41_n_5),
        .I1(integral1__29_n_5),
        .I2(integral1__21_n_7),
        .O(integral1_i_2__36_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__37
       (.I0(integral1__42_n_5),
        .I1(integral1__30_n_5),
        .I2(integral1__22_n_7),
        .O(integral1_i_2__37_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__38
       (.I0(integral1__43_n_5),
        .I1(integral1__31_n_5),
        .I2(integral1__23_n_7),
        .O(integral1_i_2__38_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__39
       (.I0(integral1__44_n_5),
        .I1(integral1__32_n_5),
        .I2(integral1__24_n_7),
        .O(integral1_i_2__39_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_2__4
       (.I0(integral1__4_n_5),
        .I1(integral1__11_n_5),
        .O(integral1_i_2__4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__40
       (.I0(integral1__45_n_5),
        .I1(integral1__33_n_5),
        .I2(integral1__25_n_7),
        .O(integral1_i_2__40_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    integral1_i_2__41
       (.I0(integral1__46_n_5),
        .I1(integral1__34_n_5),
        .I2(integral1__25_n_0),
        .O(integral1_i_2__41_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    integral1_i_2__42
       (.I0(integral1__47_n_7),
        .I1(integral1__35_n_7),
        .I2(integral1__25_n_0),
        .O(integral1_i_2__42_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    integral1_i_2__43
       (.I0(integral1__52_n_7),
        .I1(integral1__52_n_5),
        .I2(integral1__53_n_6),
        .O(integral1_i_2__43_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__44
       (.I0(integral1__53_n_6),
        .I1(integral1__52_n_4),
        .I2(integral1__54_n_7),
        .O(integral1_i_2__44_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__45
       (.I0(integral1__54_n_6),
        .I1(integral1__53_n_4),
        .I2(integral1__55_n_7),
        .O(integral1_i_2__45_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__46
       (.I0(integral1__55_n_6),
        .I1(integral1__54_n_4),
        .I2(integral1__56_n_7),
        .O(integral1_i_2__46_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__47
       (.I0(integral1__56_n_6),
        .I1(integral1__55_n_4),
        .I2(integral1__57_n_7),
        .O(integral1_i_2__47_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__48
       (.I0(integral1__57_n_6),
        .I1(integral1__56_n_4),
        .I2(integral1__58_n_7),
        .O(integral1_i_2__48_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_2__49
       (.I0(error[30]),
        .O(integral1_i_2__49_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__5
       (.I0(error[5]),
        .I1(error[3]),
        .I2(error[7]),
        .O(integral1_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__50
       (.I0(error[29]),
        .I1(integral1__16_n_0),
        .O(integral1_i_2__50_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__51
       (.I0(error[26]),
        .I1(integral1__16_n_0),
        .O(integral1_i_2__51_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__52
       (.I0(error[22]),
        .I1(integral1__16_n_0),
        .O(integral1_i_2__52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_2__53
       (.I0(error[31]),
        .O(integral1_i_2__53_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__54
       (.I0(integral1__38_n_5),
        .I1(integral1__26_n_5),
        .I2(integral1__18_n_7),
        .O(integral1_i_2__54_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__55
       (.I0(integral1__39_n_5),
        .I1(integral1__27_n_5),
        .I2(integral1__19_n_7),
        .O(integral1_i_2__55_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__56
       (.I0(error[27]),
        .I1(error[30]),
        .O(integral1_i_2__56_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__57
       (.I0(error[0]),
        .I1(error[2]),
        .O(integral1_i_2__57_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__58
       (.I0(error[3]),
        .I1(error[6]),
        .O(integral1_i_2__58_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__59
       (.I0(error[7]),
        .I1(error[10]),
        .O(integral1_i_2__59_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__6
       (.I0(error[2]),
        .I1(error[4]),
        .I2(error[8]),
        .O(integral1_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__60
       (.I0(error[11]),
        .I1(error[14]),
        .O(integral1_i_2__60_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__61
       (.I0(error[15]),
        .I1(error[18]),
        .O(integral1_i_2__61_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__62
       (.I0(error[19]),
        .I1(error[22]),
        .O(integral1_i_2__62_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__63
       (.I0(error[23]),
        .I1(error[26]),
        .O(integral1_i_2__63_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__64
       (.I0(integral1__52_n_5),
        .I1(error[3]),
        .O(integral1_i_2__64_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__65
       (.I0(integral1__57_n_5),
        .I1(integral1__58_n_7),
        .O(integral1_i_2__65_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__66
       (.I0(integral1__59_n_4),
        .I1(error[7]),
        .O(integral1_i_2__66_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__67
       (.I0(integral1__60_n_4),
        .I1(error[11]),
        .O(integral1_i_2__67_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__68
       (.I0(integral1__61_n_4),
        .I1(error[15]),
        .O(integral1_i_2__68_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__69
       (.I0(integral1__62_n_4),
        .I1(error[19]),
        .O(integral1_i_2__69_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__7
       (.I0(error[9]),
        .I1(error[7]),
        .I2(error[11]),
        .O(integral1_i_2__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__70
       (.I0(integral1__63_n_4),
        .I1(error[23]),
        .O(integral1_i_2__70_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__71
       (.I0(integral1__64_n_4),
        .I1(error[27]),
        .O(integral1_i_2__71_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_2__72
       (.I0(integral1__65_n_6),
        .I1(error[29]),
        .O(integral1_i_2__72_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_2__73
       (.I0(error[30]),
        .I1(error[31]),
        .O(integral1_i_2__73_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_2__8
       (.I0(error[6]),
        .I1(error[8]),
        .I2(error[12]),
        .O(integral1_i_2__8_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_2__9
       (.I0(error[13]),
        .I1(error[11]),
        .I2(error[15]),
        .O(integral1_i_2__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_3
       (.I0(error[4]),
        .I1(error[0]),
        .O(integral1_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_3__0
       (.I0(error[30]),
        .I1(error[28]),
        .I2(error[29]),
        .I3(error[31]),
        .O(integral1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_3__1
       (.I0(integral1__1_n_6),
        .I1(integral1__8_n_6),
        .O(integral1_i_3__1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__10
       (.I0(error[9]),
        .I1(error[11]),
        .I2(error[15]),
        .O(integral1_i_3__10_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__11
       (.I0(error[16]),
        .I1(error[14]),
        .I2(error[18]),
        .O(integral1_i_3__11_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__12
       (.I0(error[13]),
        .I1(error[15]),
        .I2(error[19]),
        .O(integral1_i_3__12_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__13
       (.I0(error[20]),
        .I1(error[18]),
        .I2(error[22]),
        .O(integral1_i_3__13_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__14
       (.I0(error[17]),
        .I1(error[19]),
        .I2(error[23]),
        .O(integral1_i_3__14_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__15
       (.I0(error[24]),
        .I1(error[22]),
        .I2(error[26]),
        .O(integral1_i_3__15_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__16
       (.I0(error[21]),
        .I1(error[23]),
        .I2(error[27]),
        .O(integral1_i_3__16_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__17
       (.I0(error[28]),
        .I1(error[26]),
        .I2(error[30]),
        .O(integral1_i_3__17_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__18
       (.I0(error[25]),
        .I1(error[27]),
        .I2(error[31]),
        .O(integral1_i_3__18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_3__19
       (.I0(error[1]),
        .O(integral1_i_3__19_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_3__2
       (.I0(integral1__2_n_6),
        .I1(integral1__9_n_6),
        .O(integral1_i_3__2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__20
       (.I0(error[4]),
        .I1(error[2]),
        .I2(error[6]),
        .O(integral1_i_3__20_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__21
       (.I0(error[8]),
        .I1(error[3]),
        .I2(error[6]),
        .O(integral1_i_3__21_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__22
       (.I0(error[12]),
        .I1(error[7]),
        .I2(error[10]),
        .O(integral1_i_3__22_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__23
       (.I0(error[16]),
        .I1(error[11]),
        .I2(error[14]),
        .O(integral1_i_3__23_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__24
       (.I0(error[20]),
        .I1(error[15]),
        .I2(error[18]),
        .O(integral1_i_3__24_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__25
       (.I0(error[24]),
        .I1(error[19]),
        .I2(error[22]),
        .O(integral1_i_3__25_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__26
       (.I0(error[28]),
        .I1(error[23]),
        .I2(error[26]),
        .O(integral1_i_3__26_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__27
       (.I0(error[31]),
        .I1(error[26]),
        .I2(error[29]),
        .O(integral1_i_3__27_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__28
       (.I0(integral1__12_n_7),
        .I1(integral1__5_n_7),
        .I2(error[1]),
        .O(integral1_i_3__28_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__29
       (.I0(integral1__13_n_7),
        .I1(integral1__6_n_7),
        .I2(error[5]),
        .O(integral1_i_3__29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_3__3
       (.I0(integral1__3_n_6),
        .I1(integral1__10_n_6),
        .O(integral1_i_3__3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__30
       (.I0(integral1__14_n_7),
        .I1(integral1__7_n_7),
        .I2(error[9]),
        .O(integral1_i_3__30_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_3__31
       (.I0(error[13]),
        .I1(integral1__15_n_7),
        .O(integral1_i_3__31_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_3__32
       (.I0(error[17]),
        .I1(integral1__16_n_7),
        .O(integral1_i_3__32_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_3__33
       (.I0(error[1]),
        .I1(integral1__37_n_6),
        .O(integral1_i_3__33_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__34
       (.I0(integral1__40_n_6),
        .I1(integral1__28_n_6),
        .I2(integral1__19_n_4),
        .O(integral1_i_3__34_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__35
       (.I0(integral1__41_n_6),
        .I1(integral1__29_n_6),
        .I2(integral1__20_n_4),
        .O(integral1_i_3__35_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__36
       (.I0(integral1__42_n_6),
        .I1(integral1__30_n_6),
        .I2(integral1__21_n_4),
        .O(integral1_i_3__36_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__37
       (.I0(integral1__43_n_6),
        .I1(integral1__31_n_6),
        .I2(integral1__22_n_4),
        .O(integral1_i_3__37_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__38
       (.I0(integral1__44_n_6),
        .I1(integral1__32_n_6),
        .I2(integral1__23_n_4),
        .O(integral1_i_3__38_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__39
       (.I0(integral1__45_n_6),
        .I1(integral1__33_n_6),
        .I2(integral1__24_n_4),
        .O(integral1_i_3__39_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_3__4
       (.I0(integral1__4_n_6),
        .I1(integral1__11_n_6),
        .O(integral1_i_3__4_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    integral1_i_3__40
       (.I0(integral1__46_n_6),
        .I1(integral1__34_n_6),
        .I2(integral1__25_n_0),
        .O(integral1_i_3__40_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__41
       (.I0(integral1__53_n_7),
        .I1(integral1__52_n_5),
        .I2(integral1__53_n_4),
        .O(integral1_i_3__41_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__42
       (.I0(integral1__54_n_7),
        .I1(integral1__53_n_5),
        .I2(integral1__54_n_4),
        .O(integral1_i_3__42_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__43
       (.I0(integral1__55_n_7),
        .I1(integral1__54_n_5),
        .I2(integral1__55_n_4),
        .O(integral1_i_3__43_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__44
       (.I0(integral1__56_n_7),
        .I1(integral1__55_n_5),
        .I2(integral1__56_n_4),
        .O(integral1_i_3__44_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__45
       (.I0(integral1__57_n_7),
        .I1(integral1__56_n_5),
        .I2(integral1__57_n_4),
        .O(integral1_i_3__45_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__46
       (.I0(integral1__57_n_4),
        .I1(integral1__57_n_6),
        .I2(integral1__58_n_5),
        .O(integral1_i_3__46_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_3__47
       (.I0(error[29]),
        .O(integral1_i_3__47_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__48
       (.I0(error[28]),
        .I1(integral1__16_n_0),
        .O(integral1_i_3__48_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__49
       (.I0(error[25]),
        .I1(integral1__16_n_0),
        .O(integral1_i_3__49_n_0));
  LUT4 #(
    .INIT(16'hE187)) 
    integral1_i_3__5
       (.I0(integral1__47_n_5),
        .I1(integral1__35_n_1),
        .I2(integral1__47_n_4),
        .I3(integral1__25_n_0),
        .O(integral1_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__50
       (.I0(error[21]),
        .I1(integral1__16_n_0),
        .O(integral1_i_3__50_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    integral1_i_3__51
       (.I0(error[1]),
        .O(integral1_i_3__51_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__52
       (.I0(integral1__38_n_6),
        .I1(integral1__26_n_6),
        .I2(integral1__17_n_4),
        .O(integral1_i_3__52_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__53
       (.I0(integral1__39_n_6),
        .I1(integral1__27_n_6),
        .I2(integral1__18_n_4),
        .O(integral1_i_3__53_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_3__54
       (.I0(error[4]),
        .I1(error[1]),
        .I2(error[6]),
        .I3(error[7]),
        .I4(error[2]),
        .I5(error[5]),
        .O(integral1_i_3__54_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_3__55
       (.I0(error[30]),
        .I1(integral1__65_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .O(integral1_i_3__55_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    integral1_i_3__56
       (.I0(error[2]),
        .I1(error[0]),
        .O(integral1_i_3__56_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__57
       (.I0(error[2]),
        .I1(error[5]),
        .O(integral1_i_3__57_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__58
       (.I0(error[6]),
        .I1(error[9]),
        .O(integral1_i_3__58_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__59
       (.I0(error[10]),
        .I1(error[13]),
        .O(integral1_i_3__59_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__6
       (.I0(error[1]),
        .I1(error[3]),
        .I2(error[7]),
        .O(integral1_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__60
       (.I0(error[14]),
        .I1(error[17]),
        .O(integral1_i_3__60_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__61
       (.I0(error[18]),
        .I1(error[21]),
        .O(integral1_i_3__61_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__62
       (.I0(error[22]),
        .I1(error[25]),
        .O(integral1_i_3__62_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    integral1_i_3__63
       (.I0(integral1__52_n_4),
        .I1(integral1__52_n_7),
        .O(integral1_i_3__63_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__64
       (.I0(integral1__52_n_6),
        .I1(error[2]),
        .O(integral1_i_3__64_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__65
       (.I0(integral1__59_n_5),
        .I1(error[6]),
        .O(integral1_i_3__65_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__66
       (.I0(integral1__60_n_5),
        .I1(error[10]),
        .O(integral1_i_3__66_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__67
       (.I0(integral1__61_n_5),
        .I1(error[14]),
        .O(integral1_i_3__67_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__68
       (.I0(integral1__62_n_5),
        .I1(error[18]),
        .O(integral1_i_3__68_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__69
       (.I0(integral1__63_n_5),
        .I1(error[22]),
        .O(integral1_i_3__69_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__7
       (.I0(error[8]),
        .I1(error[6]),
        .I2(error[10]),
        .O(integral1_i_3__7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_3__70
       (.I0(integral1__64_n_5),
        .I1(error[26]),
        .O(integral1_i_3__70_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__71
       (.I0(error[26]),
        .I1(error[29]),
        .O(integral1_i_3__71_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_3__72
       (.I0(error[30]),
        .I1(error[31]),
        .O(integral1_i_3__72_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_3__8
       (.I0(error[5]),
        .I1(error[7]),
        .I2(error[11]),
        .O(integral1_i_3__8_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_3__9
       (.I0(error[12]),
        .I1(error[10]),
        .I2(error[14]),
        .O(integral1_i_3__9_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    integral1_i_4
       (.I0(error[7]),
        .I1(error[1]),
        .I2(error[3]),
        .O(integral1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    integral1_i_4__0
       (.I0(error[1]),
        .I1(integral1__12_n_7),
        .I2(integral1__5_n_7),
        .O(integral1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_4__1
       (.I0(integral1__1_n_7),
        .I1(error[0]),
        .O(integral1_i_4__1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__10
       (.I0(error[15]),
        .I1(error[13]),
        .I2(error[17]),
        .O(integral1_i_4__10_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__11
       (.I0(error[12]),
        .I1(error[14]),
        .I2(error[18]),
        .O(integral1_i_4__11_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__12
       (.I0(error[19]),
        .I1(error[17]),
        .I2(error[21]),
        .O(integral1_i_4__12_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__13
       (.I0(error[16]),
        .I1(error[18]),
        .I2(error[22]),
        .O(integral1_i_4__13_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__14
       (.I0(error[23]),
        .I1(error[21]),
        .I2(error[25]),
        .O(integral1_i_4__14_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__15
       (.I0(error[20]),
        .I1(error[22]),
        .I2(error[26]),
        .O(integral1_i_4__15_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__16
       (.I0(error[27]),
        .I1(error[25]),
        .I2(error[29]),
        .O(integral1_i_4__16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__17
       (.I0(error[24]),
        .I1(error[26]),
        .I2(error[30]),
        .O(integral1_i_4__17_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__18
       (.I0(error[3]),
        .I1(error[1]),
        .I2(error[5]),
        .O(integral1_i_4__18_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__19
       (.I0(error[7]),
        .I1(error[2]),
        .I2(error[5]),
        .O(integral1_i_4__19_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_4__2
       (.I0(integral1__2_n_7),
        .I1(integral1__9_n_7),
        .O(integral1_i_4__2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__20
       (.I0(error[11]),
        .I1(error[6]),
        .I2(error[9]),
        .O(integral1_i_4__20_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__21
       (.I0(error[15]),
        .I1(error[10]),
        .I2(error[13]),
        .O(integral1_i_4__21_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__22
       (.I0(error[19]),
        .I1(error[14]),
        .I2(error[17]),
        .O(integral1_i_4__22_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__23
       (.I0(error[23]),
        .I1(error[18]),
        .I2(error[21]),
        .O(integral1_i_4__23_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__24
       (.I0(error[27]),
        .I1(error[22]),
        .I2(error[25]),
        .O(integral1_i_4__24_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__25
       (.I0(integral1__12_n_4),
        .I1(integral1__5_n_4),
        .I2(error[4]),
        .O(integral1_i_4__25_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__26
       (.I0(integral1__13_n_4),
        .I1(integral1__6_n_4),
        .I2(error[8]),
        .O(integral1_i_4__26_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__27
       (.I0(integral1__14_n_4),
        .I1(integral1__7_n_0),
        .I2(error[12]),
        .O(integral1_i_4__27_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_4__28
       (.I0(error[16]),
        .I1(integral1__15_n_4),
        .O(integral1_i_4__28_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    integral1_i_4__29
       (.I0(integral1__8_n_7),
        .I1(integral1__37_n_7),
        .O(integral1_i_4__29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_4__3
       (.I0(integral1__3_n_7),
        .I1(integral1__10_n_7),
        .O(integral1_i_4__3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__30
       (.I0(integral1__41_n_7),
        .I1(integral1__29_n_7),
        .I2(integral1__20_n_5),
        .O(integral1_i_4__30_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__31
       (.I0(integral1__42_n_7),
        .I1(integral1__30_n_7),
        .I2(integral1__21_n_5),
        .O(integral1_i_4__31_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__32
       (.I0(integral1__43_n_7),
        .I1(integral1__31_n_7),
        .I2(integral1__22_n_5),
        .O(integral1_i_4__32_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__33
       (.I0(integral1__44_n_7),
        .I1(integral1__32_n_7),
        .I2(integral1__23_n_5),
        .O(integral1_i_4__33_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__34
       (.I0(integral1__45_n_7),
        .I1(integral1__33_n_7),
        .I2(integral1__24_n_5),
        .O(integral1_i_4__34_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__35
       (.I0(integral1__46_n_7),
        .I1(integral1__34_n_7),
        .I2(integral1__25_n_5),
        .O(integral1_i_4__35_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__36
       (.I0(integral1__52_n_4),
        .I1(integral1__52_n_6),
        .I2(integral1__53_n_5),
        .O(integral1_i_4__36_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__37
       (.I0(integral1__53_n_4),
        .I1(integral1__53_n_6),
        .I2(integral1__54_n_5),
        .O(integral1_i_4__37_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__38
       (.I0(integral1__54_n_4),
        .I1(integral1__54_n_6),
        .I2(integral1__55_n_5),
        .O(integral1_i_4__38_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__39
       (.I0(integral1__55_n_4),
        .I1(integral1__55_n_6),
        .I2(integral1__56_n_5),
        .O(integral1_i_4__39_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_4__4
       (.I0(integral1__4_n_7),
        .I1(integral1__11_n_7),
        .O(integral1_i_4__4_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__40
       (.I0(integral1__56_n_4),
        .I1(integral1__56_n_6),
        .I2(integral1__57_n_5),
        .O(integral1_i_4__40_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__41
       (.I0(error[24]),
        .I1(integral1__16_n_0),
        .O(integral1_i_4__41_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__42
       (.I0(error[20]),
        .I1(integral1__16_n_0),
        .O(integral1_i_4__42_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__43
       (.I0(integral1__38_n_7),
        .I1(error[0]),
        .I2(integral1__17_n_5),
        .O(integral1_i_4__43_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__44
       (.I0(integral1__39_n_7),
        .I1(integral1__27_n_7),
        .I2(integral1__18_n_5),
        .O(integral1_i_4__44_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__45
       (.I0(integral1__40_n_7),
        .I1(integral1__28_n_7),
        .I2(integral1__19_n_5),
        .O(integral1_i_4__45_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_4__46
       (.I0(error[4]),
        .I1(error[0]),
        .I2(error[2]),
        .I3(error[3]),
        .I4(error[1]),
        .I5(error[5]),
        .O(integral1_i_4__46_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    integral1_i_4__47
       (.I0(error[6]),
        .I1(error[1]),
        .I2(error[4]),
        .I3(error[5]),
        .I4(error[0]),
        .O(integral1_i_4__47_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_4__48
       (.I0(integral1__53_n_6),
        .I1(integral1__52_n_7),
        .I2(integral1__52_n_5),
        .I3(integral1__52_n_6),
        .I4(integral1__52_n_4),
        .I5(integral1__53_n_5),
        .O(integral1_i_4__48_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_4__49
       (.I0(error[29]),
        .I1(integral1__65_n_6),
        .I2(integral1__65_n_5),
        .I3(error[30]),
        .O(integral1_i_4__49_n_0));
  LUT5 #(
    .INIT(32'h7887E11E)) 
    integral1_i_4__5
       (.I0(integral1__35_n_6),
        .I1(integral1__47_n_6),
        .I2(integral1__35_n_1),
        .I3(integral1__47_n_5),
        .I4(integral1__25_n_0),
        .O(integral1_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__50
       (.I0(error[1]),
        .I1(error[4]),
        .O(integral1_i_4__50_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__51
       (.I0(error[5]),
        .I1(error[8]),
        .O(integral1_i_4__51_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__52
       (.I0(error[9]),
        .I1(error[12]),
        .O(integral1_i_4__52_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__53
       (.I0(error[13]),
        .I1(error[16]),
        .O(integral1_i_4__53_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__54
       (.I0(error[17]),
        .I1(error[20]),
        .O(integral1_i_4__54_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__55
       (.I0(error[21]),
        .I1(error[24]),
        .O(integral1_i_4__55_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__56
       (.I0(error[25]),
        .I1(error[28]),
        .O(integral1_i_4__56_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    integral1_i_4__57
       (.I0(integral1__58_n_5),
        .I1(integral1__58_n_7),
        .I2(integral1__58_n_6),
        .O(integral1_i_4__57_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    integral1_i_4__58
       (.I0(integral1__52_n_7),
        .I1(error[1]),
        .O(integral1_i_4__58_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    integral1_i_4__59
       (.I0(integral1__59_n_6),
        .I1(error[5]),
        .O(integral1_i_4__59_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__6
       (.I0(error[7]),
        .I1(error[5]),
        .I2(error[9]),
        .O(integral1_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__60
       (.I0(integral1__60_n_6),
        .I1(error[9]),
        .O(integral1_i_4__60_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__61
       (.I0(integral1__61_n_6),
        .I1(error[13]),
        .O(integral1_i_4__61_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__62
       (.I0(integral1__62_n_6),
        .I1(error[17]),
        .O(integral1_i_4__62_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__63
       (.I0(integral1__63_n_6),
        .I1(error[21]),
        .O(integral1_i_4__63_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    integral1_i_4__64
       (.I0(integral1__64_n_6),
        .I1(error[25]),
        .O(integral1_i_4__64_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_4__65
       (.I0(error[29]),
        .I1(error[30]),
        .O(integral1_i_4__65_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    integral1_i_4__66
       (.I0(error[31]),
        .I1(error[29]),
        .I2(error[30]),
        .O(integral1_i_4__66_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    integral1_i_4__67
       (.I0(error[31]),
        .I1(integral1__16_n_0),
        .O(integral1_i_4__67_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__7
       (.I0(error[4]),
        .I1(error[6]),
        .I2(error[10]),
        .O(integral1_i_4__7_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    integral1_i_4__8
       (.I0(error[11]),
        .I1(error[9]),
        .I2(error[13]),
        .O(integral1_i_4__8_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    integral1_i_4__9
       (.I0(error[8]),
        .I1(error[10]),
        .I2(error[14]),
        .O(integral1_i_4__9_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5
       (.I0(error[9]),
        .I1(error[5]),
        .I2(error[3]),
        .I3(error[6]),
        .I4(error[4]),
        .I5(error[10]),
        .O(integral1_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__0
       (.I0(error[13]),
        .I1(error[9]),
        .I2(error[7]),
        .I3(error[10]),
        .I4(error[8]),
        .I5(error[14]),
        .O(integral1_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__1
       (.I0(error[17]),
        .I1(error[13]),
        .I2(error[11]),
        .I3(error[14]),
        .I4(error[12]),
        .I5(error[18]),
        .O(integral1_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__10
       (.I0(integral1__21_n_6),
        .I1(integral1__29_n_4),
        .I2(integral1__41_n_4),
        .I3(integral1__30_n_7),
        .I4(integral1__42_n_7),
        .I5(integral1__21_n_5),
        .O(integral1_i_5__10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__11
       (.I0(integral1__22_n_6),
        .I1(integral1__30_n_4),
        .I2(integral1__42_n_4),
        .I3(integral1__31_n_7),
        .I4(integral1__43_n_7),
        .I5(integral1__22_n_5),
        .O(integral1_i_5__11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__12
       (.I0(integral1__23_n_6),
        .I1(integral1__31_n_4),
        .I2(integral1__43_n_4),
        .I3(integral1__32_n_7),
        .I4(integral1__44_n_7),
        .I5(integral1__23_n_5),
        .O(integral1_i_5__12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__13
       (.I0(integral1__24_n_6),
        .I1(integral1__32_n_4),
        .I2(integral1__44_n_4),
        .I3(integral1__33_n_7),
        .I4(integral1__45_n_7),
        .I5(integral1__24_n_5),
        .O(integral1_i_5__13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__14
       (.I0(integral1__25_n_6),
        .I1(integral1__33_n_4),
        .I2(integral1__45_n_4),
        .I3(integral1__34_n_7),
        .I4(integral1__46_n_7),
        .I5(integral1__25_n_5),
        .O(integral1_i_5__14_n_0));
  LUT5 #(
    .INIT(32'h87781EE1)) 
    integral1_i_5__15
       (.I0(integral1__34_n_4),
        .I1(integral1__46_n_4),
        .I2(integral1__35_n_7),
        .I3(integral1__47_n_7),
        .I4(integral1__25_n_0),
        .O(integral1_i_5__15_n_0));
  LUT5 #(
    .INIT(32'h87781EE1)) 
    integral1_i_5__16
       (.I0(integral1__35_n_7),
        .I1(integral1__47_n_7),
        .I2(integral1__35_n_6),
        .I3(integral1__47_n_6),
        .I4(integral1__25_n_0),
        .O(integral1_i_5__16_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    integral1_i_5__17
       (.I0(error[4]),
        .I1(integral1__59_n_7),
        .I2(integral1__59_n_6),
        .I3(error[5]),
        .O(integral1_i_5__17_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_5__18
       (.I0(integral1__38_n_7),
        .I1(error[0]),
        .I2(integral1__17_n_5),
        .I3(integral1_i_1__74_n_0),
        .O(integral1_i_5__18_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_5__19
       (.I0(integral1__39_n_7),
        .I1(integral1__27_n_7),
        .I2(integral1__18_n_5),
        .I3(integral1_i_1__52_n_0),
        .O(integral1_i_5__19_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__2
       (.I0(error[21]),
        .I1(error[17]),
        .I2(error[15]),
        .I3(error[18]),
        .I4(error[16]),
        .I5(error[22]),
        .O(integral1_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_5__20
       (.I0(integral1__40_n_7),
        .I1(integral1__28_n_7),
        .I2(integral1__19_n_5),
        .I3(integral1_i_1__53_n_0),
        .O(integral1_i_5__20_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__21
       (.I0(error[8]),
        .I1(error[4]),
        .I2(error[6]),
        .I3(error[5]),
        .I4(error[7]),
        .I5(error[9]),
        .O(integral1_i_5__21_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__22
       (.I0(error[12]),
        .I1(error[8]),
        .I2(error[10]),
        .I3(error[9]),
        .I4(error[11]),
        .I5(error[13]),
        .O(integral1_i_5__22_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__23
       (.I0(error[16]),
        .I1(error[12]),
        .I2(error[14]),
        .I3(error[13]),
        .I4(error[15]),
        .I5(error[17]),
        .O(integral1_i_5__23_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__24
       (.I0(error[20]),
        .I1(error[16]),
        .I2(error[18]),
        .I3(error[17]),
        .I4(error[19]),
        .I5(error[21]),
        .O(integral1_i_5__24_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__25
       (.I0(error[24]),
        .I1(error[20]),
        .I2(error[22]),
        .I3(error[21]),
        .I4(error[23]),
        .I5(error[25]),
        .O(integral1_i_5__25_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__26
       (.I0(error[28]),
        .I1(error[24]),
        .I2(error[26]),
        .I3(error[25]),
        .I4(error[27]),
        .I5(error[29]),
        .O(integral1_i_5__26_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    integral1_i_5__27
       (.I0(error[2]),
        .I1(error[0]),
        .I2(error[4]),
        .I3(error[1]),
        .I4(error[3]),
        .O(integral1_i_5__27_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__28
       (.I0(error[30]),
        .I1(error[28]),
        .I2(error[31]),
        .I3(error[29]),
        .O(integral1_i_5__28_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    integral1_i_5__29
       (.I0(error[0]),
        .I1(error[5]),
        .I2(error[3]),
        .O(integral1_i_5__29_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__3
       (.I0(error[25]),
        .I1(error[21]),
        .I2(error[19]),
        .I3(error[22]),
        .I4(error[20]),
        .I5(error[26]),
        .O(integral1_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__30
       (.I0(error[8]),
        .I1(error[5]),
        .I2(error[10]),
        .I3(error[11]),
        .I4(error[6]),
        .I5(error[9]),
        .O(integral1_i_5__30_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__31
       (.I0(error[12]),
        .I1(error[9]),
        .I2(error[14]),
        .I3(error[15]),
        .I4(error[10]),
        .I5(error[13]),
        .O(integral1_i_5__31_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__32
       (.I0(error[16]),
        .I1(error[13]),
        .I2(error[18]),
        .I3(error[19]),
        .I4(error[14]),
        .I5(error[17]),
        .O(integral1_i_5__32_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__33
       (.I0(error[20]),
        .I1(error[17]),
        .I2(error[22]),
        .I3(error[23]),
        .I4(error[18]),
        .I5(error[21]),
        .O(integral1_i_5__33_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__34
       (.I0(error[24]),
        .I1(error[21]),
        .I2(error[26]),
        .I3(error[27]),
        .I4(error[22]),
        .I5(error[25]),
        .O(integral1_i_5__34_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__35
       (.I0(error[28]),
        .I1(error[25]),
        .I2(error[30]),
        .I3(error[31]),
        .I4(error[26]),
        .I5(error[29]),
        .O(integral1_i_5__35_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_5__36
       (.I0(error[28]),
        .I1(error[31]),
        .I2(error[29]),
        .O(integral1_i_5__36_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_5__37
       (.I0(error[15]),
        .I1(integral1__15_n_5),
        .I2(integral1__15_n_4),
        .I3(error[16]),
        .O(integral1_i_5__37_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    integral1_i_5__38
       (.I0(error[19]),
        .I1(integral1__16_n_5),
        .I2(integral1__16_n_0),
        .I3(error[20]),
        .O(integral1_i_5__38_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    integral1_i_5__39
       (.I0(integral1__52_n_7),
        .I1(integral1__52_n_5),
        .I2(integral1__53_n_6),
        .I3(integral1__52_n_6),
        .I4(integral1__53_n_7),
        .O(integral1_i_5__39_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__4
       (.I0(error[29]),
        .I1(error[25]),
        .I2(error[23]),
        .I3(error[26]),
        .I4(error[24]),
        .I5(error[30]),
        .O(integral1_i_5__4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__40
       (.I0(integral1__54_n_6),
        .I1(integral1__53_n_7),
        .I2(integral1__53_n_5),
        .I3(integral1__53_n_6),
        .I4(integral1__53_n_4),
        .I5(integral1__54_n_5),
        .O(integral1_i_5__40_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__41
       (.I0(integral1__55_n_6),
        .I1(integral1__54_n_7),
        .I2(integral1__54_n_5),
        .I3(integral1__54_n_6),
        .I4(integral1__54_n_4),
        .I5(integral1__55_n_5),
        .O(integral1_i_5__41_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__42
       (.I0(integral1__56_n_6),
        .I1(integral1__55_n_7),
        .I2(integral1__55_n_5),
        .I3(integral1__55_n_6),
        .I4(integral1__55_n_4),
        .I5(integral1__56_n_5),
        .O(integral1_i_5__42_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__43
       (.I0(integral1__57_n_6),
        .I1(integral1__56_n_7),
        .I2(integral1__56_n_5),
        .I3(integral1__56_n_6),
        .I4(integral1__56_n_4),
        .I5(integral1__57_n_5),
        .O(integral1_i_5__43_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_5__44
       (.I0(integral1__58_n_6),
        .I1(integral1__57_n_7),
        .I2(integral1__57_n_5),
        .I3(integral1__57_n_6),
        .I4(integral1__57_n_4),
        .I5(integral1__58_n_5),
        .O(integral1_i_5__44_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__45
       (.I0(integral1__58_n_6),
        .I1(integral1__57_n_4),
        .I2(integral1__58_n_5),
        .I3(integral1__58_n_7),
        .O(integral1_i_5__45_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__46
       (.I0(error[8]),
        .I1(integral1__60_n_7),
        .I2(integral1__60_n_6),
        .I3(error[9]),
        .O(integral1_i_5__46_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__47
       (.I0(error[12]),
        .I1(integral1__61_n_7),
        .I2(integral1__61_n_6),
        .I3(error[13]),
        .O(integral1_i_5__47_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__48
       (.I0(error[16]),
        .I1(integral1__62_n_7),
        .I2(integral1__62_n_6),
        .I3(error[17]),
        .O(integral1_i_5__48_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__49
       (.I0(error[20]),
        .I1(integral1__63_n_7),
        .I2(integral1__63_n_6),
        .I3(error[21]),
        .O(integral1_i_5__49_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_5__5
       (.I0(error[29]),
        .I1(error[27]),
        .I2(error[28]),
        .I3(error[30]),
        .O(integral1_i_5__5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__50
       (.I0(error[24]),
        .I1(integral1__64_n_7),
        .I2(integral1__64_n_6),
        .I3(error[25]),
        .O(integral1_i_5__50_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_5__51
       (.I0(error[28]),
        .I1(integral1__65_n_7),
        .I2(integral1__65_n_6),
        .I3(error[29]),
        .O(integral1_i_5__51_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_5__52
       (.I0(error[30]),
        .I1(integral1__16_n_0),
        .I2(error[31]),
        .O(integral1_i_5__52_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_5__53
       (.I0(error[23]),
        .I1(integral1__16_n_0),
        .I2(error[24]),
        .O(integral1_i_5__53_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_5__54
       (.I0(error[27]),
        .I1(integral1__16_n_0),
        .I2(error[28]),
        .O(integral1_i_5__54_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__6
       (.I0(error[3]),
        .I1(integral1__5_n_5),
        .I2(integral1__12_n_5),
        .I3(integral1__5_n_4),
        .I4(integral1__12_n_4),
        .I5(error[4]),
        .O(integral1_i_5__6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__7
       (.I0(error[7]),
        .I1(integral1__6_n_5),
        .I2(integral1__13_n_5),
        .I3(integral1__6_n_4),
        .I4(integral1__13_n_4),
        .I5(error[8]),
        .O(integral1_i_5__7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__8
       (.I0(error[11]),
        .I1(integral1__7_n_5),
        .I2(integral1__14_n_5),
        .I3(integral1__7_n_0),
        .I4(integral1__14_n_4),
        .I5(error[12]),
        .O(integral1_i_5__8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_5__9
       (.I0(integral1__20_n_6),
        .I1(integral1__28_n_4),
        .I2(integral1__40_n_4),
        .I3(integral1__29_n_7),
        .I4(integral1__41_n_7),
        .I5(integral1__20_n_5),
        .O(integral1_i_5__9_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6
       (.I0(error[8]),
        .I1(error[4]),
        .I2(error[2]),
        .I3(error[5]),
        .I4(error[3]),
        .I5(error[9]),
        .O(integral1_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__0
       (.I0(error[12]),
        .I1(error[8]),
        .I2(error[6]),
        .I3(error[9]),
        .I4(error[7]),
        .I5(error[13]),
        .O(integral1_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__1
       (.I0(error[16]),
        .I1(error[12]),
        .I2(error[10]),
        .I3(error[13]),
        .I4(error[11]),
        .I5(error[17]),
        .O(integral1_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__10
       (.I0(integral1__21_n_7),
        .I1(integral1__29_n_5),
        .I2(integral1__41_n_5),
        .I3(integral1__29_n_4),
        .I4(integral1__41_n_4),
        .I5(integral1__21_n_6),
        .O(integral1_i_6__10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__11
       (.I0(integral1__22_n_7),
        .I1(integral1__30_n_5),
        .I2(integral1__42_n_5),
        .I3(integral1__30_n_4),
        .I4(integral1__42_n_4),
        .I5(integral1__22_n_6),
        .O(integral1_i_6__11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__12
       (.I0(integral1__23_n_7),
        .I1(integral1__31_n_5),
        .I2(integral1__43_n_5),
        .I3(integral1__31_n_4),
        .I4(integral1__43_n_4),
        .I5(integral1__23_n_6),
        .O(integral1_i_6__12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__13
       (.I0(integral1__24_n_7),
        .I1(integral1__32_n_5),
        .I2(integral1__44_n_5),
        .I3(integral1__32_n_4),
        .I4(integral1__44_n_4),
        .I5(integral1__24_n_6),
        .O(integral1_i_6__13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__14
       (.I0(integral1__25_n_7),
        .I1(integral1__33_n_5),
        .I2(integral1__45_n_5),
        .I3(integral1__33_n_4),
        .I4(integral1__45_n_4),
        .I5(integral1__25_n_6),
        .O(integral1_i_6__14_n_0));
  LUT5 #(
    .INIT(32'h87781EE1)) 
    integral1_i_6__15
       (.I0(integral1__34_n_5),
        .I1(integral1__46_n_5),
        .I2(integral1__34_n_4),
        .I3(integral1__46_n_4),
        .I4(integral1__25_n_0),
        .O(integral1_i_6__15_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    integral1_i_6__16
       (.I0(error[3]),
        .I1(integral1__52_n_5),
        .I2(integral1__59_n_7),
        .I3(error[4]),
        .O(integral1_i_6__16_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_6__17
       (.I0(integral1__38_n_4),
        .I1(integral1__26_n_4),
        .I2(integral1__18_n_6),
        .I3(integral1_i_2__54_n_0),
        .O(integral1_i_6__17_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_6__18
       (.I0(integral1__39_n_4),
        .I1(integral1__27_n_4),
        .I2(integral1__19_n_6),
        .I3(integral1_i_2__55_n_0),
        .O(integral1_i_6__18_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__19
       (.I0(error[7]),
        .I1(error[3]),
        .I2(error[5]),
        .I3(error[4]),
        .I4(error[6]),
        .I5(error[8]),
        .O(integral1_i_6__19_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__2
       (.I0(error[20]),
        .I1(error[16]),
        .I2(error[14]),
        .I3(error[17]),
        .I4(error[15]),
        .I5(error[21]),
        .O(integral1_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__20
       (.I0(error[11]),
        .I1(error[7]),
        .I2(error[9]),
        .I3(error[8]),
        .I4(error[10]),
        .I5(error[12]),
        .O(integral1_i_6__20_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__21
       (.I0(error[15]),
        .I1(error[11]),
        .I2(error[13]),
        .I3(error[12]),
        .I4(error[14]),
        .I5(error[16]),
        .O(integral1_i_6__21_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__22
       (.I0(error[19]),
        .I1(error[15]),
        .I2(error[17]),
        .I3(error[16]),
        .I4(error[18]),
        .I5(error[20]),
        .O(integral1_i_6__22_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__23
       (.I0(error[23]),
        .I1(error[19]),
        .I2(error[21]),
        .I3(error[20]),
        .I4(error[22]),
        .I5(error[24]),
        .O(integral1_i_6__23_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__24
       (.I0(error[27]),
        .I1(error[23]),
        .I2(error[25]),
        .I3(error[24]),
        .I4(error[26]),
        .I5(error[28]),
        .O(integral1_i_6__24_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    integral1_i_6__25
       (.I0(error[31]),
        .I1(error[27]),
        .I2(error[29]),
        .I3(error[30]),
        .I4(error[28]),
        .O(integral1_i_6__25_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__26
       (.I0(error[7]),
        .I1(error[4]),
        .I2(error[9]),
        .I3(error[10]),
        .I4(error[5]),
        .I5(error[8]),
        .O(integral1_i_6__26_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__27
       (.I0(error[11]),
        .I1(error[8]),
        .I2(error[13]),
        .I3(error[14]),
        .I4(error[9]),
        .I5(error[12]),
        .O(integral1_i_6__27_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__28
       (.I0(error[15]),
        .I1(error[12]),
        .I2(error[17]),
        .I3(error[18]),
        .I4(error[13]),
        .I5(error[16]),
        .O(integral1_i_6__28_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__29
       (.I0(error[19]),
        .I1(error[16]),
        .I2(error[21]),
        .I3(error[22]),
        .I4(error[17]),
        .I5(error[20]),
        .O(integral1_i_6__29_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__3
       (.I0(error[24]),
        .I1(error[20]),
        .I2(error[18]),
        .I3(error[21]),
        .I4(error[19]),
        .I5(error[25]),
        .O(integral1_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__30
       (.I0(error[23]),
        .I1(error[20]),
        .I2(error[25]),
        .I3(error[26]),
        .I4(error[21]),
        .I5(error[24]),
        .O(integral1_i_6__30_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__31
       (.I0(error[27]),
        .I1(error[24]),
        .I2(error[29]),
        .I3(error[30]),
        .I4(error[25]),
        .I5(error[28]),
        .O(integral1_i_6__31_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    integral1_i_6__32
       (.I0(error[27]),
        .I1(error[30]),
        .I2(error[28]),
        .I3(error[31]),
        .O(integral1_i_6__32_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_6__33
       (.I0(error[14]),
        .I1(integral1__15_n_6),
        .I2(integral1__15_n_5),
        .I3(error[15]),
        .O(integral1_i_6__33_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_6__34
       (.I0(error[18]),
        .I1(integral1__16_n_6),
        .I2(integral1__16_n_5),
        .I3(error[19]),
        .O(integral1_i_6__34_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    integral1_i_6__35
       (.I0(integral1__52_n_7),
        .I1(integral1__52_n_4),
        .I2(integral1__52_n_6),
        .I3(integral1__53_n_7),
        .O(integral1_i_6__35_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__36
       (.I0(integral1__54_n_7),
        .I1(integral1__52_n_4),
        .I2(integral1__53_n_6),
        .I3(integral1__53_n_7),
        .I4(integral1__53_n_5),
        .I5(integral1__54_n_6),
        .O(integral1_i_6__36_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__37
       (.I0(integral1__55_n_7),
        .I1(integral1__53_n_4),
        .I2(integral1__54_n_6),
        .I3(integral1__54_n_7),
        .I4(integral1__54_n_5),
        .I5(integral1__55_n_6),
        .O(integral1_i_6__37_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__38
       (.I0(integral1__56_n_7),
        .I1(integral1__54_n_4),
        .I2(integral1__55_n_6),
        .I3(integral1__55_n_7),
        .I4(integral1__55_n_5),
        .I5(integral1__56_n_6),
        .O(integral1_i_6__38_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__39
       (.I0(integral1__57_n_7),
        .I1(integral1__55_n_4),
        .I2(integral1__56_n_6),
        .I3(integral1__56_n_7),
        .I4(integral1__56_n_5),
        .I5(integral1__57_n_6),
        .O(integral1_i_6__39_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__4
       (.I0(error[28]),
        .I1(error[24]),
        .I2(error[22]),
        .I3(error[25]),
        .I4(error[23]),
        .I5(error[29]),
        .O(integral1_i_6__4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_6__40
       (.I0(integral1__58_n_7),
        .I1(integral1__56_n_4),
        .I2(integral1__57_n_6),
        .I3(integral1__57_n_7),
        .I4(integral1__57_n_5),
        .I5(integral1__58_n_6),
        .O(integral1_i_6__40_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__41
       (.I0(integral1__58_n_7),
        .I1(integral1__57_n_5),
        .I2(integral1__58_n_6),
        .I3(integral1__57_n_4),
        .O(integral1_i_6__41_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__42
       (.I0(error[7]),
        .I1(integral1__59_n_4),
        .I2(integral1__60_n_7),
        .I3(error[8]),
        .O(integral1_i_6__42_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__43
       (.I0(error[11]),
        .I1(integral1__60_n_4),
        .I2(integral1__61_n_7),
        .I3(error[12]),
        .O(integral1_i_6__43_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__44
       (.I0(error[15]),
        .I1(integral1__61_n_4),
        .I2(integral1__62_n_7),
        .I3(error[16]),
        .O(integral1_i_6__44_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__45
       (.I0(error[19]),
        .I1(integral1__62_n_4),
        .I2(integral1__63_n_7),
        .I3(error[20]),
        .O(integral1_i_6__45_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__46
       (.I0(error[23]),
        .I1(integral1__63_n_4),
        .I2(integral1__64_n_7),
        .I3(error[24]),
        .O(integral1_i_6__46_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_6__47
       (.I0(error[27]),
        .I1(integral1__64_n_4),
        .I2(integral1__65_n_7),
        .I3(error[28]),
        .O(integral1_i_6__47_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    integral1_i_6__48
       (.I0(error[0]),
        .I1(error[2]),
        .I2(error[1]),
        .I3(error[3]),
        .O(integral1_i_6__48_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    integral1_i_6__49
       (.I0(error[2]),
        .I1(error[4]),
        .O(integral1_i_6__49_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_6__5
       (.I0(error[28]),
        .I1(error[26]),
        .I2(error[27]),
        .I3(error[29]),
        .O(integral1_i_6__5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_6__50
       (.I0(error[22]),
        .I1(integral1__16_n_0),
        .I2(error[23]),
        .O(integral1_i_6__50_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_6__51
       (.I0(error[26]),
        .I1(integral1__16_n_0),
        .I2(error[27]),
        .O(integral1_i_6__51_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_6__52
       (.I0(error[29]),
        .I1(integral1__16_n_0),
        .I2(error[30]),
        .O(integral1_i_6__52_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    integral1_i_6__53
       (.I0(integral1__37_n_4),
        .I1(integral1__17_n_6),
        .I2(integral1__17_n_7),
        .I3(integral1__37_n_5),
        .O(integral1_i_6__53_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__6
       (.I0(error[2]),
        .I1(integral1__5_n_6),
        .I2(integral1__12_n_6),
        .I3(integral1__5_n_5),
        .I4(integral1__12_n_5),
        .I5(error[3]),
        .O(integral1_i_6__6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__7
       (.I0(error[6]),
        .I1(integral1__6_n_6),
        .I2(integral1__13_n_6),
        .I3(integral1__6_n_5),
        .I4(integral1__13_n_5),
        .I5(error[7]),
        .O(integral1_i_6__7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__8
       (.I0(error[10]),
        .I1(integral1__7_n_6),
        .I2(integral1__14_n_6),
        .I3(integral1__7_n_5),
        .I4(integral1__14_n_5),
        .I5(error[11]),
        .O(integral1_i_6__8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_6__9
       (.I0(integral1__20_n_7),
        .I1(integral1__28_n_5),
        .I2(integral1__40_n_5),
        .I3(integral1__28_n_4),
        .I4(integral1__40_n_4),
        .I5(integral1__20_n_6),
        .O(integral1_i_6__9_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7
       (.I0(error[7]),
        .I1(error[3]),
        .I2(error[1]),
        .I3(error[4]),
        .I4(error[2]),
        .I5(error[8]),
        .O(integral1_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__0
       (.I0(error[11]),
        .I1(error[7]),
        .I2(error[5]),
        .I3(error[8]),
        .I4(error[6]),
        .I5(error[12]),
        .O(integral1_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__1
       (.I0(error[15]),
        .I1(error[11]),
        .I2(error[9]),
        .I3(error[12]),
        .I4(error[10]),
        .I5(error[16]),
        .O(integral1_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__10
       (.I0(integral1__20_n_4),
        .I1(integral1__29_n_6),
        .I2(integral1__41_n_6),
        .I3(integral1__29_n_5),
        .I4(integral1__41_n_5),
        .I5(integral1__21_n_7),
        .O(integral1_i_7__10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__11
       (.I0(integral1__21_n_4),
        .I1(integral1__30_n_6),
        .I2(integral1__42_n_6),
        .I3(integral1__30_n_5),
        .I4(integral1__42_n_5),
        .I5(integral1__22_n_7),
        .O(integral1_i_7__11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__12
       (.I0(integral1__22_n_4),
        .I1(integral1__31_n_6),
        .I2(integral1__43_n_6),
        .I3(integral1__31_n_5),
        .I4(integral1__43_n_5),
        .I5(integral1__23_n_7),
        .O(integral1_i_7__12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__13
       (.I0(integral1__23_n_4),
        .I1(integral1__32_n_6),
        .I2(integral1__44_n_6),
        .I3(integral1__32_n_5),
        .I4(integral1__44_n_5),
        .I5(integral1__24_n_7),
        .O(integral1_i_7__13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__14
       (.I0(integral1__24_n_4),
        .I1(integral1__33_n_6),
        .I2(integral1__45_n_6),
        .I3(integral1__33_n_5),
        .I4(integral1__45_n_5),
        .I5(integral1__25_n_7),
        .O(integral1_i_7__14_n_0));
  LUT5 #(
    .INIT(32'h87781EE1)) 
    integral1_i_7__15
       (.I0(integral1__34_n_6),
        .I1(integral1__46_n_6),
        .I2(integral1__34_n_5),
        .I3(integral1__46_n_5),
        .I4(integral1__25_n_0),
        .O(integral1_i_7__15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_7__16
       (.I0(integral1__52_n_4),
        .I1(integral1__52_n_7),
        .O(integral1_i_7__16_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_7__17
       (.I0(integral1__38_n_5),
        .I1(integral1__26_n_5),
        .I2(integral1__18_n_7),
        .I3(integral1_i_3__52_n_0),
        .O(integral1_i_7__17_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_7__18
       (.I0(integral1__39_n_5),
        .I1(integral1__27_n_5),
        .I2(integral1__19_n_7),
        .I3(integral1_i_3__53_n_0),
        .O(integral1_i_7__18_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__19
       (.I0(error[10]),
        .I1(error[6]),
        .I2(error[8]),
        .I3(error[7]),
        .I4(error[9]),
        .I5(error[11]),
        .O(integral1_i_7__19_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__2
       (.I0(error[19]),
        .I1(error[15]),
        .I2(error[13]),
        .I3(error[16]),
        .I4(error[14]),
        .I5(error[20]),
        .O(integral1_i_7__2_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__20
       (.I0(error[14]),
        .I1(error[10]),
        .I2(error[12]),
        .I3(error[11]),
        .I4(error[13]),
        .I5(error[15]),
        .O(integral1_i_7__20_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__21
       (.I0(error[18]),
        .I1(error[14]),
        .I2(error[16]),
        .I3(error[15]),
        .I4(error[17]),
        .I5(error[19]),
        .O(integral1_i_7__21_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__22
       (.I0(error[22]),
        .I1(error[18]),
        .I2(error[20]),
        .I3(error[19]),
        .I4(error[21]),
        .I5(error[23]),
        .O(integral1_i_7__22_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__23
       (.I0(error[26]),
        .I1(error[22]),
        .I2(error[24]),
        .I3(error[23]),
        .I4(error[25]),
        .I5(error[27]),
        .O(integral1_i_7__23_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__24
       (.I0(error[30]),
        .I1(error[26]),
        .I2(error[28]),
        .I3(error[27]),
        .I4(error[29]),
        .I5(error[31]),
        .O(integral1_i_7__24_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__25
       (.I0(error[6]),
        .I1(error[2]),
        .I2(error[4]),
        .I3(error[3]),
        .I4(error[5]),
        .I5(error[7]),
        .O(integral1_i_7__25_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__26
       (.I0(error[6]),
        .I1(error[3]),
        .I2(error[8]),
        .I3(error[9]),
        .I4(error[4]),
        .I5(error[7]),
        .O(integral1_i_7__26_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__27
       (.I0(error[10]),
        .I1(error[7]),
        .I2(error[12]),
        .I3(error[13]),
        .I4(error[8]),
        .I5(error[11]),
        .O(integral1_i_7__27_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__28
       (.I0(error[14]),
        .I1(error[11]),
        .I2(error[16]),
        .I3(error[17]),
        .I4(error[12]),
        .I5(error[15]),
        .O(integral1_i_7__28_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__29
       (.I0(error[18]),
        .I1(error[15]),
        .I2(error[20]),
        .I3(error[21]),
        .I4(error[16]),
        .I5(error[19]),
        .O(integral1_i_7__29_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__3
       (.I0(error[23]),
        .I1(error[19]),
        .I2(error[17]),
        .I3(error[20]),
        .I4(error[18]),
        .I5(error[24]),
        .O(integral1_i_7__3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__30
       (.I0(error[22]),
        .I1(error[19]),
        .I2(error[24]),
        .I3(error[25]),
        .I4(error[20]),
        .I5(error[23]),
        .O(integral1_i_7__30_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__31
       (.I0(error[26]),
        .I1(error[23]),
        .I2(error[28]),
        .I3(error[29]),
        .I4(error[24]),
        .I5(error[27]),
        .O(integral1_i_7__31_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    integral1_i_7__32
       (.I0(error[29]),
        .I1(error[26]),
        .I2(error[31]),
        .I3(error[27]),
        .I4(error[30]),
        .O(integral1_i_7__32_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_7__33
       (.I0(error[13]),
        .I1(integral1__15_n_7),
        .I2(integral1__15_n_6),
        .I3(error[14]),
        .O(integral1_i_7__33_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_7__34
       (.I0(error[17]),
        .I1(integral1__16_n_7),
        .I2(integral1__16_n_6),
        .I3(error[18]),
        .O(integral1_i_7__34_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_7__35
       (.I0(error[1]),
        .I1(integral1__37_n_6),
        .I2(integral1__37_n_5),
        .I3(integral1__17_n_7),
        .O(integral1_i_7__35_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__36
       (.I0(integral1__53_n_4),
        .I1(integral1__52_n_5),
        .I2(integral1__53_n_7),
        .I3(integral1__52_n_4),
        .I4(integral1__53_n_6),
        .I5(integral1__54_n_7),
        .O(integral1_i_7__36_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__37
       (.I0(integral1__54_n_4),
        .I1(integral1__53_n_5),
        .I2(integral1__54_n_7),
        .I3(integral1__53_n_4),
        .I4(integral1__54_n_6),
        .I5(integral1__55_n_7),
        .O(integral1_i_7__37_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__38
       (.I0(integral1__55_n_4),
        .I1(integral1__54_n_5),
        .I2(integral1__55_n_7),
        .I3(integral1__54_n_4),
        .I4(integral1__55_n_6),
        .I5(integral1__56_n_7),
        .O(integral1_i_7__38_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__39
       (.I0(integral1__56_n_4),
        .I1(integral1__55_n_5),
        .I2(integral1__56_n_7),
        .I3(integral1__55_n_4),
        .I4(integral1__56_n_6),
        .I5(integral1__57_n_7),
        .O(integral1_i_7__39_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__4
       (.I0(error[27]),
        .I1(error[23]),
        .I2(error[21]),
        .I3(error[24]),
        .I4(error[22]),
        .I5(error[28]),
        .O(integral1_i_7__4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_7__40
       (.I0(integral1__57_n_4),
        .I1(integral1__56_n_5),
        .I2(integral1__57_n_7),
        .I3(integral1__56_n_4),
        .I4(integral1__57_n_6),
        .I5(integral1__58_n_7),
        .O(integral1_i_7__40_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    integral1_i_7__41
       (.I0(integral1__58_n_5),
        .I1(integral1__57_n_6),
        .I2(integral1__57_n_4),
        .I3(integral1__58_n_7),
        .I4(integral1__57_n_5),
        .O(integral1_i_7__41_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__42
       (.I0(error[2]),
        .I1(integral1__52_n_6),
        .I2(integral1__52_n_5),
        .I3(error[3]),
        .O(integral1_i_7__42_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__43
       (.I0(error[6]),
        .I1(integral1__59_n_5),
        .I2(integral1__59_n_4),
        .I3(error[7]),
        .O(integral1_i_7__43_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__44
       (.I0(error[10]),
        .I1(integral1__60_n_5),
        .I2(integral1__60_n_4),
        .I3(error[11]),
        .O(integral1_i_7__44_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__45
       (.I0(error[14]),
        .I1(integral1__61_n_5),
        .I2(integral1__61_n_4),
        .I3(error[15]),
        .O(integral1_i_7__45_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__46
       (.I0(error[18]),
        .I1(integral1__62_n_5),
        .I2(integral1__62_n_4),
        .I3(error[19]),
        .O(integral1_i_7__46_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__47
       (.I0(error[22]),
        .I1(integral1__63_n_5),
        .I2(integral1__63_n_4),
        .I3(error[23]),
        .O(integral1_i_7__47_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_7__48
       (.I0(error[26]),
        .I1(integral1__64_n_5),
        .I2(integral1__64_n_4),
        .I3(error[27]),
        .O(integral1_i_7__48_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    integral1_i_7__49
       (.I0(error[2]),
        .I1(error[0]),
        .O(integral1_i_7__49_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    integral1_i_7__5
       (.I0(error[31]),
        .I1(error[27]),
        .I2(error[25]),
        .I3(error[26]),
        .I4(error[28]),
        .O(integral1_i_7__5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_7__50
       (.I0(error[21]),
        .I1(integral1__16_n_0),
        .I2(error[22]),
        .O(integral1_i_7__50_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_7__51
       (.I0(error[25]),
        .I1(integral1__16_n_0),
        .I2(error[26]),
        .O(integral1_i_7__51_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_7__52
       (.I0(error[28]),
        .I1(integral1__16_n_0),
        .I2(error[29]),
        .O(integral1_i_7__52_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__6
       (.I0(error[1]),
        .I1(integral1__5_n_7),
        .I2(integral1__12_n_7),
        .I3(integral1__5_n_6),
        .I4(integral1__12_n_6),
        .I5(error[2]),
        .O(integral1_i_7__6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__7
       (.I0(error[5]),
        .I1(integral1__6_n_7),
        .I2(integral1__13_n_7),
        .I3(integral1__6_n_6),
        .I4(integral1__13_n_6),
        .I5(error[6]),
        .O(integral1_i_7__7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__8
       (.I0(error[9]),
        .I1(integral1__7_n_7),
        .I2(integral1__14_n_7),
        .I3(integral1__7_n_6),
        .I4(integral1__14_n_6),
        .I5(error[10]),
        .O(integral1_i_7__8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_7__9
       (.I0(integral1__19_n_4),
        .I1(integral1__28_n_6),
        .I2(integral1__40_n_6),
        .I3(integral1__28_n_5),
        .I4(integral1__40_n_5),
        .I5(integral1__20_n_7),
        .O(integral1_i_7__9_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    integral1_i_8
       (.I0(error[3]),
        .I1(error[1]),
        .I2(error[7]),
        .I3(error[2]),
        .I4(error[0]),
        .O(integral1_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__0
       (.I0(error[10]),
        .I1(error[6]),
        .I2(error[4]),
        .I3(error[7]),
        .I4(error[5]),
        .I5(error[11]),
        .O(integral1_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__1
       (.I0(error[14]),
        .I1(error[10]),
        .I2(error[8]),
        .I3(error[11]),
        .I4(error[9]),
        .I5(error[15]),
        .O(integral1_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_8__10
       (.I0(integral1_i_4__45_n_0),
        .I1(integral1__28_n_6),
        .I2(integral1__40_n_6),
        .I3(integral1__19_n_4),
        .O(integral1_i_8__10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__11
       (.I0(integral1__20_n_5),
        .I1(integral1__29_n_7),
        .I2(integral1__41_n_7),
        .I3(integral1__29_n_6),
        .I4(integral1__41_n_6),
        .I5(integral1__20_n_4),
        .O(integral1_i_8__11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__12
       (.I0(integral1__21_n_5),
        .I1(integral1__30_n_7),
        .I2(integral1__42_n_7),
        .I3(integral1__30_n_6),
        .I4(integral1__42_n_6),
        .I5(integral1__21_n_4),
        .O(integral1_i_8__12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__13
       (.I0(integral1__22_n_5),
        .I1(integral1__31_n_7),
        .I2(integral1__43_n_7),
        .I3(integral1__31_n_6),
        .I4(integral1__43_n_6),
        .I5(integral1__22_n_4),
        .O(integral1_i_8__13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__14
       (.I0(integral1__23_n_5),
        .I1(integral1__32_n_7),
        .I2(integral1__44_n_7),
        .I3(integral1__32_n_6),
        .I4(integral1__44_n_6),
        .I5(integral1__23_n_4),
        .O(integral1_i_8__14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__15
       (.I0(integral1__24_n_5),
        .I1(integral1__33_n_7),
        .I2(integral1__45_n_7),
        .I3(integral1__33_n_6),
        .I4(integral1__45_n_6),
        .I5(integral1__24_n_4),
        .O(integral1_i_8__15_n_0));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    integral1_i_8__16
       (.I0(integral1__25_n_5),
        .I1(integral1__34_n_7),
        .I2(integral1__46_n_7),
        .I3(integral1__34_n_6),
        .I4(integral1__46_n_6),
        .I5(integral1__25_n_0),
        .O(integral1_i_8__16_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_8__17
       (.I0(integral1__38_n_6),
        .I1(integral1__26_n_6),
        .I2(integral1__17_n_4),
        .I3(integral1_i_4__43_n_0),
        .O(integral1_i_8__17_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    integral1_i_8__18
       (.I0(integral1__39_n_6),
        .I1(integral1__27_n_6),
        .I2(integral1__18_n_4),
        .I3(integral1_i_4__44_n_0),
        .O(integral1_i_8__18_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__19
       (.I0(error[9]),
        .I1(error[5]),
        .I2(error[7]),
        .I3(error[6]),
        .I4(error[8]),
        .I5(error[10]),
        .O(integral1_i_8__19_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__2
       (.I0(error[18]),
        .I1(error[14]),
        .I2(error[12]),
        .I3(error[15]),
        .I4(error[13]),
        .I5(error[19]),
        .O(integral1_i_8__2_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__20
       (.I0(error[13]),
        .I1(error[9]),
        .I2(error[11]),
        .I3(error[10]),
        .I4(error[12]),
        .I5(error[14]),
        .O(integral1_i_8__20_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__21
       (.I0(error[17]),
        .I1(error[13]),
        .I2(error[15]),
        .I3(error[14]),
        .I4(error[16]),
        .I5(error[18]),
        .O(integral1_i_8__21_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__22
       (.I0(error[21]),
        .I1(error[17]),
        .I2(error[19]),
        .I3(error[18]),
        .I4(error[20]),
        .I5(error[22]),
        .O(integral1_i_8__22_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__23
       (.I0(error[25]),
        .I1(error[21]),
        .I2(error[23]),
        .I3(error[22]),
        .I4(error[24]),
        .I5(error[26]),
        .O(integral1_i_8__23_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__24
       (.I0(error[29]),
        .I1(error[25]),
        .I2(error[27]),
        .I3(error[26]),
        .I4(error[28]),
        .I5(error[30]),
        .O(integral1_i_8__24_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__25
       (.I0(error[5]),
        .I1(error[1]),
        .I2(error[3]),
        .I3(error[4]),
        .I4(error[2]),
        .I5(error[6]),
        .O(integral1_i_8__25_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__26
       (.I0(error[5]),
        .I1(error[2]),
        .I2(error[7]),
        .I3(error[8]),
        .I4(error[3]),
        .I5(error[6]),
        .O(integral1_i_8__26_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__27
       (.I0(error[9]),
        .I1(error[6]),
        .I2(error[11]),
        .I3(error[12]),
        .I4(error[7]),
        .I5(error[10]),
        .O(integral1_i_8__27_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__28
       (.I0(error[13]),
        .I1(error[10]),
        .I2(error[15]),
        .I3(error[16]),
        .I4(error[11]),
        .I5(error[14]),
        .O(integral1_i_8__28_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__29
       (.I0(error[17]),
        .I1(error[14]),
        .I2(error[19]),
        .I3(error[20]),
        .I4(error[15]),
        .I5(error[18]),
        .O(integral1_i_8__29_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__3
       (.I0(error[22]),
        .I1(error[18]),
        .I2(error[16]),
        .I3(error[19]),
        .I4(error[17]),
        .I5(error[23]),
        .O(integral1_i_8__3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__30
       (.I0(error[21]),
        .I1(error[18]),
        .I2(error[23]),
        .I3(error[24]),
        .I4(error[19]),
        .I5(error[22]),
        .O(integral1_i_8__30_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__31
       (.I0(error[25]),
        .I1(error[22]),
        .I2(error[27]),
        .I3(error[28]),
        .I4(error[23]),
        .I5(error[26]),
        .O(integral1_i_8__31_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_8__32
       (.I0(error[16]),
        .I1(integral1__15_n_4),
        .I2(integral1__16_n_7),
        .I3(error[17]),
        .O(integral1_i_8__32_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    integral1_i_8__33
       (.I0(integral1__8_n_7),
        .I1(integral1__37_n_7),
        .I2(integral1__37_n_6),
        .I3(error[1]),
        .O(integral1_i_8__33_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__34
       (.I0(integral1__53_n_5),
        .I1(integral1__52_n_6),
        .I2(integral1__52_n_4),
        .I3(integral1__52_n_5),
        .I4(integral1__53_n_7),
        .I5(integral1__53_n_4),
        .O(integral1_i_8__34_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__35
       (.I0(integral1__54_n_5),
        .I1(integral1__53_n_6),
        .I2(integral1__53_n_4),
        .I3(integral1__53_n_5),
        .I4(integral1__54_n_7),
        .I5(integral1__54_n_4),
        .O(integral1_i_8__35_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__36
       (.I0(integral1__55_n_5),
        .I1(integral1__54_n_6),
        .I2(integral1__54_n_4),
        .I3(integral1__54_n_5),
        .I4(integral1__55_n_7),
        .I5(integral1__55_n_4),
        .O(integral1_i_8__36_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__37
       (.I0(integral1__56_n_5),
        .I1(integral1__55_n_6),
        .I2(integral1__55_n_4),
        .I3(integral1__55_n_5),
        .I4(integral1__56_n_7),
        .I5(integral1__56_n_4),
        .O(integral1_i_8__37_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    integral1_i_8__38
       (.I0(integral1__57_n_5),
        .I1(integral1__56_n_6),
        .I2(integral1__56_n_4),
        .I3(integral1__56_n_5),
        .I4(integral1__57_n_7),
        .I5(integral1__57_n_4),
        .O(integral1_i_8__38_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    integral1_i_8__39
       (.I0(error[1]),
        .I1(integral1__52_n_7),
        .I2(integral1__52_n_6),
        .I3(error[2]),
        .O(integral1_i_8__39_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__4
       (.I0(error[26]),
        .I1(error[22]),
        .I2(error[20]),
        .I3(error[23]),
        .I4(error[21]),
        .I5(error[27]),
        .O(integral1_i_8__4_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    integral1_i_8__40
       (.I0(error[5]),
        .I1(integral1__59_n_6),
        .I2(integral1__59_n_5),
        .I3(error[6]),
        .O(integral1_i_8__40_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_8__41
       (.I0(error[9]),
        .I1(integral1__60_n_6),
        .I2(integral1__60_n_5),
        .I3(error[10]),
        .O(integral1_i_8__41_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_8__42
       (.I0(error[13]),
        .I1(integral1__61_n_6),
        .I2(integral1__61_n_5),
        .I3(error[14]),
        .O(integral1_i_8__42_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_8__43
       (.I0(error[17]),
        .I1(integral1__62_n_6),
        .I2(integral1__62_n_5),
        .I3(error[18]),
        .O(integral1_i_8__43_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_8__44
       (.I0(error[21]),
        .I1(integral1__63_n_6),
        .I2(integral1__63_n_5),
        .I3(error[22]),
        .O(integral1_i_8__44_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    integral1_i_8__45
       (.I0(error[25]),
        .I1(integral1__64_n_6),
        .I2(integral1__64_n_5),
        .I3(error[26]),
        .O(integral1_i_8__45_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_8__46
       (.I0(error[20]),
        .I1(integral1__16_n_0),
        .I2(error[21]),
        .O(integral1_i_8__46_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    integral1_i_8__47
       (.I0(error[24]),
        .I1(integral1__16_n_0),
        .I2(error[25]),
        .O(integral1_i_8__47_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__5
       (.I0(error[30]),
        .I1(error[26]),
        .I2(error[24]),
        .I3(error[27]),
        .I4(error[25]),
        .I5(error[31]),
        .O(integral1_i_8__5_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    integral1_i_8__6
       (.I0(integral1__5_n_7),
        .I1(integral1__12_n_7),
        .I2(error[1]),
        .I3(integral1__4_n_4),
        .I4(integral1__11_n_4),
        .O(integral1_i_8__6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__7
       (.I0(error[4]),
        .I1(integral1__5_n_4),
        .I2(integral1__12_n_4),
        .I3(integral1__6_n_7),
        .I4(integral1__13_n_7),
        .I5(error[5]),
        .O(integral1_i_8__7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    integral1_i_8__8
       (.I0(error[8]),
        .I1(integral1__6_n_4),
        .I2(integral1__13_n_4),
        .I3(integral1__7_n_7),
        .I4(integral1__14_n_7),
        .I5(error[9]),
        .O(integral1_i_8__8_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    integral1_i_8__9
       (.I0(error[12]),
        .I1(integral1__7_n_0),
        .I2(integral1__14_n_4),
        .I3(integral1__15_n_7),
        .I4(error[13]),
        .O(integral1_i_8__9_n_0));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[11]_i_2 
       (.I0(integral_prev[11]),
        .I1(integral1__76_n_4),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__54_n_4),
        .O(\integral[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[11]_i_3 
       (.I0(integral_prev[10]),
        .I1(integral1__76_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__54_n_5),
        .O(\integral[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[11]_i_4 
       (.I0(integral_prev[9]),
        .I1(integral1__76_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__54_n_6),
        .O(\integral[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[11]_i_5 
       (.I0(integral_prev[8]),
        .I1(integral1__76_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__54_n_7),
        .O(\integral[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[15]_i_2 
       (.I0(integral_prev[15]),
        .I1(integral1__77_n_4),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__55_n_4),
        .O(\integral[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[15]_i_3 
       (.I0(integral_prev[14]),
        .I1(integral1__77_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__55_n_5),
        .O(\integral[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[15]_i_4 
       (.I0(integral_prev[13]),
        .I1(integral1__77_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__55_n_6),
        .O(\integral[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[15]_i_5 
       (.I0(integral_prev[12]),
        .I1(integral1__77_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__55_n_7),
        .O(\integral[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[19]_i_2 
       (.I0(integral_prev[19]),
        .I1(integral1__78_n_4),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__56_n_4),
        .O(\integral[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[19]_i_3 
       (.I0(integral_prev[18]),
        .I1(integral1__78_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__56_n_5),
        .O(\integral[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[19]_i_4 
       (.I0(integral_prev[17]),
        .I1(integral1__78_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__56_n_6),
        .O(\integral[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[19]_i_5 
       (.I0(integral_prev[16]),
        .I1(integral1__78_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__56_n_7),
        .O(\integral[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[23]_i_2 
       (.I0(integral_prev[23]),
        .I1(integral1__79_n_4),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__57_n_4),
        .O(\integral[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[23]_i_3 
       (.I0(integral_prev[22]),
        .I1(integral1__79_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__57_n_5),
        .O(\integral[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[23]_i_4 
       (.I0(integral_prev[21]),
        .I1(integral1__79_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__57_n_6),
        .O(\integral[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[23]_i_5 
       (.I0(integral_prev[20]),
        .I1(integral1__79_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__57_n_7),
        .O(\integral[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[27]_i_2 
       (.I0(integral_prev[26]),
        .I1(integral1__80_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__58_n_5),
        .O(\integral[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[27]_i_3 
       (.I0(integral_prev[25]),
        .I1(integral1__80_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__58_n_6),
        .O(\integral[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[27]_i_4 
       (.I0(integral_prev[24]),
        .I1(integral1__80_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__58_n_7),
        .O(\integral[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[3]_i_2 
       (.I0(integral_prev[3]),
        .I1(integral1__74_n_4),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__52_n_4),
        .O(\integral[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[3]_i_3 
       (.I0(integral_prev[2]),
        .I1(integral1__74_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__52_n_5),
        .O(\integral[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[3]_i_4 
       (.I0(integral_prev[1]),
        .I1(integral1__74_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__52_n_6),
        .O(\integral[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[3]_i_5 
       (.I0(integral_prev[0]),
        .I1(integral1__74_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__52_n_7),
        .O(\integral[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[7]_i_2 
       (.I0(integral_prev[7]),
        .I1(integral1__75_n_4),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__53_n_4),
        .O(\integral[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[7]_i_3 
       (.I0(integral_prev[6]),
        .I1(integral1__75_n_5),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__53_n_5),
        .O(\integral[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[7]_i_4 
       (.I0(integral_prev[5]),
        .I1(integral1__75_n_6),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__53_n_6),
        .O(\integral[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55556656AAAA66A6)) 
    \integral[7]_i_5 
       (.I0(integral_prev[4]),
        .I1(integral1__75_n_7),
        .I2(integral1__65_n_4),
        .I3(error[31]),
        .I4(integral1__73_n_2),
        .I5(integral1__53_n_7),
        .O(\integral[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[0]),
        .Q(integral_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[10]),
        .Q(integral_prev[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[11]),
        .Q(integral_prev[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[12]),
        .Q(integral_prev[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[13]),
        .Q(integral_prev[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[14]),
        .Q(integral_prev[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[15]),
        .Q(integral_prev[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[16]),
        .Q(integral_prev[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[17]),
        .Q(integral_prev[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[18]),
        .Q(integral_prev[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[19]),
        .Q(integral_prev[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[1]),
        .Q(integral_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[20]),
        .Q(integral_prev[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[21]),
        .Q(integral_prev[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[22]),
        .Q(integral_prev[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[23]),
        .Q(integral_prev[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[24]),
        .Q(integral_prev[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[25]),
        .Q(integral_prev[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[26]),
        .Q(integral_prev[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[27]),
        .Q(integral_prev[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[28]),
        .Q(integral_prev[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[29]),
        .Q(integral_prev[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[2]),
        .Q(integral_prev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[30]),
        .Q(integral_prev[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[31]),
        .Q(integral_prev[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[3]),
        .Q(integral_prev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[4]),
        .Q(integral_prev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[5]),
        .Q(integral_prev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[6]),
        .Q(integral_prev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[7]),
        .Q(integral_prev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[8]),
        .Q(integral_prev[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_prev_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(integral[9]),
        .Q(integral_prev[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[3]_i_1_n_7 ),
        .Q(integral[0]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[11]_i_1_n_5 ),
        .Q(integral[10]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[11]_i_1_n_4 ),
        .Q(integral[11]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[11]_i_1 
       (.CI(\integral_reg[7]_i_1_n_0 ),
        .CO({\integral_reg[11]_i_1_n_0 ,\integral_reg[11]_i_1_n_1 ,\integral_reg[11]_i_1_n_2 ,\integral_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(integral_prev[11:8]),
        .O({\integral_reg[11]_i_1_n_4 ,\integral_reg[11]_i_1_n_5 ,\integral_reg[11]_i_1_n_6 ,\integral_reg[11]_i_1_n_7 }),
        .S({\integral[11]_i_2_n_0 ,\integral[11]_i_3_n_0 ,\integral[11]_i_4_n_0 ,\integral[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[15]_i_1_n_7 ),
        .Q(integral[12]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[15]_i_1_n_6 ),
        .Q(integral[13]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[15]_i_1_n_5 ),
        .Q(integral[14]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[15]_i_1_n_4 ),
        .Q(integral[15]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[15]_i_1 
       (.CI(\integral_reg[11]_i_1_n_0 ),
        .CO({\integral_reg[15]_i_1_n_0 ,\integral_reg[15]_i_1_n_1 ,\integral_reg[15]_i_1_n_2 ,\integral_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(integral_prev[15:12]),
        .O({\integral_reg[15]_i_1_n_4 ,\integral_reg[15]_i_1_n_5 ,\integral_reg[15]_i_1_n_6 ,\integral_reg[15]_i_1_n_7 }),
        .S({\integral[15]_i_2_n_0 ,\integral[15]_i_3_n_0 ,\integral[15]_i_4_n_0 ,\integral[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[19]_i_1_n_7 ),
        .Q(integral[16]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[19]_i_1_n_6 ),
        .Q(integral[17]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[19]_i_1_n_5 ),
        .Q(integral[18]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[19]_i_1_n_4 ),
        .Q(integral[19]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[19]_i_1 
       (.CI(\integral_reg[15]_i_1_n_0 ),
        .CO({\integral_reg[19]_i_1_n_0 ,\integral_reg[19]_i_1_n_1 ,\integral_reg[19]_i_1_n_2 ,\integral_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(integral_prev[19:16]),
        .O({\integral_reg[19]_i_1_n_4 ,\integral_reg[19]_i_1_n_5 ,\integral_reg[19]_i_1_n_6 ,\integral_reg[19]_i_1_n_7 }),
        .S({\integral[19]_i_2_n_0 ,\integral[19]_i_3_n_0 ,\integral[19]_i_4_n_0 ,\integral[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[3]_i_1_n_6 ),
        .Q(integral[1]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[23]_i_1_n_7 ),
        .Q(integral[20]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[23]_i_1_n_6 ),
        .Q(integral[21]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[23]_i_1_n_5 ),
        .Q(integral[22]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[23]_i_1_n_4 ),
        .Q(integral[23]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[23]_i_1 
       (.CI(\integral_reg[19]_i_1_n_0 ),
        .CO({\integral_reg[23]_i_1_n_0 ,\integral_reg[23]_i_1_n_1 ,\integral_reg[23]_i_1_n_2 ,\integral_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(integral_prev[23:20]),
        .O({\integral_reg[23]_i_1_n_4 ,\integral_reg[23]_i_1_n_5 ,\integral_reg[23]_i_1_n_6 ,\integral_reg[23]_i_1_n_7 }),
        .S({\integral[23]_i_2_n_0 ,\integral[23]_i_3_n_0 ,\integral[23]_i_4_n_0 ,\integral[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[27]_i_1_n_7 ),
        .Q(integral[24]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[27]_i_1_n_6 ),
        .Q(integral[25]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[27]_i_1_n_5 ),
        .Q(integral[26]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[27]_i_1_n_4 ),
        .Q(integral[27]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[27]_i_1 
       (.CI(\integral_reg[23]_i_1_n_0 ),
        .CO({\integral_reg[27]_i_1_n_0 ,\integral_reg[27]_i_1_n_1 ,\integral_reg[27]_i_1_n_2 ,\integral_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,integral_prev[26:24]}),
        .O({\integral_reg[27]_i_1_n_4 ,\integral_reg[27]_i_1_n_5 ,\integral_reg[27]_i_1_n_6 ,\integral_reg[27]_i_1_n_7 }),
        .S({integral_prev[27],\integral[27]_i_2_n_0 ,\integral[27]_i_3_n_0 ,\integral[27]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[31]_i_1_n_7 ),
        .Q(integral[28]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[31]_i_1_n_6 ),
        .Q(integral[29]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[3]_i_1_n_5 ),
        .Q(integral[2]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[31]_i_1_n_5 ),
        .Q(integral[30]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[31]_i_1_n_4 ),
        .Q(integral[31]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[31]_i_1 
       (.CI(\integral_reg[27]_i_1_n_0 ),
        .CO({\NLW_integral_reg[31]_i_1_CO_UNCONNECTED [3],\integral_reg[31]_i_1_n_1 ,\integral_reg[31]_i_1_n_2 ,\integral_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\integral_reg[31]_i_1_n_4 ,\integral_reg[31]_i_1_n_5 ,\integral_reg[31]_i_1_n_6 ,\integral_reg[31]_i_1_n_7 }),
        .S(integral_prev[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[3]_i_1_n_4 ),
        .Q(integral[3]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\integral_reg[3]_i_1_n_0 ,\integral_reg[3]_i_1_n_1 ,\integral_reg[3]_i_1_n_2 ,\integral_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(integral_prev[3:0]),
        .O({\integral_reg[3]_i_1_n_4 ,\integral_reg[3]_i_1_n_5 ,\integral_reg[3]_i_1_n_6 ,\integral_reg[3]_i_1_n_7 }),
        .S({\integral[3]_i_2_n_0 ,\integral[3]_i_3_n_0 ,\integral[3]_i_4_n_0 ,\integral[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[7]_i_1_n_7 ),
        .Q(integral[4]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[7]_i_1_n_6 ),
        .Q(integral[5]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[7]_i_1_n_5 ),
        .Q(integral[6]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[7]_i_1_n_4 ),
        .Q(integral[7]),
        .R(new_target_angle_available_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \integral_reg[7]_i_1 
       (.CI(\integral_reg[3]_i_1_n_0 ),
        .CO({\integral_reg[7]_i_1_n_0 ,\integral_reg[7]_i_1_n_1 ,\integral_reg[7]_i_1_n_2 ,\integral_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(integral_prev[7:4]),
        .O({\integral_reg[7]_i_1_n_4 ,\integral_reg[7]_i_1_n_5 ,\integral_reg[7]_i_1_n_6 ,\integral_reg[7]_i_1_n_7 }),
        .S({\integral[7]_i_2_n_0 ,\integral[7]_i_3_n_0 ,\integral[7]_i_4_n_0 ,\integral[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[11]_i_1_n_7 ),
        .Q(integral[8]),
        .R(new_target_angle_available_0));
  FDRE #(
    .INIT(1'b0)) 
    \integral_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\integral_reg[11]_i_1_n_6 ),
        .Q(integral[9]),
        .R(new_target_angle_available_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_10 
       (.I0(\^i_term_reg [8]),
        .I1(\^d_term_reg [8]),
        .I2(\^p_term_reg [8]),
        .I3(\interim_velocity[0]_i_6_n_0 ),
        .O(\interim_velocity[0]_i_10_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_12 
       (.I0(\^i_term_reg [6]),
        .I1(\^d_term_reg [6]),
        .I2(\^p_term_reg [6]),
        .O(\interim_velocity[0]_i_12_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_13 
       (.I0(\^i_term_reg [5]),
        .I1(\^d_term_reg [5]),
        .I2(\^p_term_reg [5]),
        .O(\interim_velocity[0]_i_13_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_14 
       (.I0(\^i_term_reg [4]),
        .I1(\^d_term_reg [4]),
        .I2(\^p_term_reg [4]),
        .O(\interim_velocity[0]_i_14_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_15 
       (.I0(\^i_term_reg [3]),
        .I1(\^d_term_reg [3]),
        .I2(\^p_term_reg [3]),
        .O(\interim_velocity[0]_i_15_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_16 
       (.I0(\^i_term_reg [7]),
        .I1(\^d_term_reg [7]),
        .I2(\^p_term_reg [7]),
        .I3(\interim_velocity[0]_i_12_n_0 ),
        .O(\interim_velocity[0]_i_16_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_17 
       (.I0(\^i_term_reg [6]),
        .I1(\^d_term_reg [6]),
        .I2(\^p_term_reg [6]),
        .I3(\interim_velocity[0]_i_13_n_0 ),
        .O(\interim_velocity[0]_i_17_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_18 
       (.I0(\^i_term_reg [5]),
        .I1(\^d_term_reg [5]),
        .I2(\^p_term_reg [5]),
        .I3(\interim_velocity[0]_i_14_n_0 ),
        .O(\interim_velocity[0]_i_18_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_19 
       (.I0(\^i_term_reg [4]),
        .I1(\^d_term_reg [4]),
        .I2(\^p_term_reg [4]),
        .I3(\interim_velocity[0]_i_15_n_0 ),
        .O(\interim_velocity[0]_i_19_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_20 
       (.I0(\^i_term_reg [2]),
        .I1(\^d_term_reg [2]),
        .I2(\^p_term_reg [2]),
        .O(\interim_velocity[0]_i_20_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_21 
       (.I0(\^i_term_reg [1]),
        .I1(\^d_term_reg [1]),
        .I2(\^p_term_reg [1]),
        .O(\interim_velocity[0]_i_21_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_22 
       (.I0(\^i_term_reg [0]),
        .I1(\^d_term_reg [0]),
        .I2(\^p_term_reg [0]),
        .O(\interim_velocity[0]_i_22_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_23 
       (.I0(\^i_term_reg [3]),
        .I1(\^d_term_reg [3]),
        .I2(\^p_term_reg [3]),
        .I3(\interim_velocity[0]_i_20_n_0 ),
        .O(\interim_velocity[0]_i_23_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_24 
       (.I0(\^i_term_reg [2]),
        .I1(\^d_term_reg [2]),
        .I2(\^p_term_reg [2]),
        .I3(\interim_velocity[0]_i_21_n_0 ),
        .O(\interim_velocity[0]_i_24_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_25 
       (.I0(\^i_term_reg [1]),
        .I1(\^d_term_reg [1]),
        .I2(\^p_term_reg [1]),
        .I3(\interim_velocity[0]_i_22_n_0 ),
        .O(\interim_velocity[0]_i_25_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \interim_velocity[0]_i_26 
       (.I0(\^i_term_reg [0]),
        .I1(\^d_term_reg [0]),
        .I2(\^p_term_reg [0]),
        .O(\interim_velocity[0]_i_26_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_3 
       (.I0(\^i_term_reg [10]),
        .I1(\^d_term_reg [10]),
        .I2(\^p_term_reg [10]),
        .O(\interim_velocity[0]_i_3_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_4 
       (.I0(\^i_term_reg [9]),
        .I1(\^d_term_reg [9]),
        .I2(\^p_term_reg [9]),
        .O(\interim_velocity[0]_i_4_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_5 
       (.I0(\^i_term_reg [8]),
        .I1(\^d_term_reg [8]),
        .I2(\^p_term_reg [8]),
        .O(\interim_velocity[0]_i_5_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[0]_i_6 
       (.I0(\^i_term_reg [7]),
        .I1(\^d_term_reg [7]),
        .I2(\^p_term_reg [7]),
        .O(\interim_velocity[0]_i_6_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_7 
       (.I0(\^i_term_reg [11]),
        .I1(\^d_term_reg [11]),
        .I2(\^p_term_reg [11]),
        .I3(\interim_velocity[0]_i_3_n_0 ),
        .O(\interim_velocity[0]_i_7_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_8 
       (.I0(\^i_term_reg [10]),
        .I1(\^d_term_reg [10]),
        .I2(\^p_term_reg [10]),
        .I3(\interim_velocity[0]_i_4_n_0 ),
        .O(\interim_velocity[0]_i_8_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[0]_i_9 
       (.I0(\^i_term_reg [9]),
        .I1(\^d_term_reg [9]),
        .I2(\^p_term_reg [9]),
        .I3(\interim_velocity[0]_i_5_n_0 ),
        .O(\interim_velocity[0]_i_9_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[12]_i_2 
       (.I0(\^i_term_reg [22]),
        .I1(\^d_term_reg [22]),
        .I2(\^p_term_reg [22]),
        .O(\interim_velocity[12]_i_2_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[12]_i_3 
       (.I0(\^i_term_reg [21]),
        .I1(\^d_term_reg [21]),
        .I2(\^p_term_reg [21]),
        .O(\interim_velocity[12]_i_3_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[12]_i_4 
       (.I0(\^i_term_reg [20]),
        .I1(\^d_term_reg [20]),
        .I2(\^p_term_reg [20]),
        .O(\interim_velocity[12]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[12]_i_5 
       (.I0(\^i_term_reg [19]),
        .I1(\^d_term_reg [19]),
        .I2(\^p_term_reg [19]),
        .O(\interim_velocity[12]_i_5_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[12]_i_6 
       (.I0(\^i_term_reg [23]),
        .I1(\^d_term_reg [23]),
        .I2(\^p_term_reg [23]),
        .I3(\interim_velocity[12]_i_2_n_0 ),
        .O(\interim_velocity[12]_i_6_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[12]_i_7 
       (.I0(\^i_term_reg [22]),
        .I1(\^d_term_reg [22]),
        .I2(\^p_term_reg [22]),
        .I3(\interim_velocity[12]_i_3_n_0 ),
        .O(\interim_velocity[12]_i_7_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[12]_i_8 
       (.I0(\^i_term_reg [21]),
        .I1(\^d_term_reg [21]),
        .I2(\^p_term_reg [21]),
        .I3(\interim_velocity[12]_i_4_n_0 ),
        .O(\interim_velocity[12]_i_8_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[12]_i_9 
       (.I0(\^i_term_reg [20]),
        .I1(\^d_term_reg [20]),
        .I2(\^p_term_reg [20]),
        .I3(\interim_velocity[12]_i_5_n_0 ),
        .O(\interim_velocity[12]_i_9_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[16]_i_2 
       (.I0(\^i_term_reg [26]),
        .I1(\^d_term_reg [26]),
        .I2(\^p_term_reg [26]),
        .O(\interim_velocity[16]_i_2_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[16]_i_3 
       (.I0(\^i_term_reg [25]),
        .I1(\^d_term_reg [25]),
        .I2(\^p_term_reg [25]),
        .O(\interim_velocity[16]_i_3_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[16]_i_4 
       (.I0(\^i_term_reg [24]),
        .I1(\^d_term_reg [24]),
        .I2(\^p_term_reg [24]),
        .O(\interim_velocity[16]_i_4_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[16]_i_5 
       (.I0(\^i_term_reg [23]),
        .I1(\^d_term_reg [23]),
        .I2(\^p_term_reg [23]),
        .O(\interim_velocity[16]_i_5_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[16]_i_6 
       (.I0(\^i_term_reg [27]),
        .I1(\^d_term_reg [27]),
        .I2(\^p_term_reg [27]),
        .I3(\interim_velocity[16]_i_2_n_0 ),
        .O(\interim_velocity[16]_i_6_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[16]_i_7 
       (.I0(\^i_term_reg [26]),
        .I1(\^d_term_reg [26]),
        .I2(\^p_term_reg [26]),
        .I3(\interim_velocity[16]_i_3_n_0 ),
        .O(\interim_velocity[16]_i_7_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[16]_i_8 
       (.I0(\^i_term_reg [25]),
        .I1(\^d_term_reg [25]),
        .I2(\^p_term_reg [25]),
        .I3(\interim_velocity[16]_i_4_n_0 ),
        .O(\interim_velocity[16]_i_8_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[16]_i_9 
       (.I0(\^i_term_reg [24]),
        .I1(\^d_term_reg [24]),
        .I2(\^p_term_reg [24]),
        .I3(\interim_velocity[16]_i_5_n_0 ),
        .O(\interim_velocity[16]_i_9_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[20]_i_2 
       (.I0(\^i_term_reg [30]),
        .I1(\^d_term_reg [30]),
        .I2(\^p_term_reg [30]),
        .O(\interim_velocity[20]_i_2_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[20]_i_3 
       (.I0(\^i_term_reg [29]),
        .I1(\^d_term_reg [29]),
        .I2(\^p_term_reg [29]),
        .O(\interim_velocity[20]_i_3_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[20]_i_4 
       (.I0(\^i_term_reg [28]),
        .I1(\^d_term_reg [28]),
        .I2(\^p_term_reg [28]),
        .O(\interim_velocity[20]_i_4_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[20]_i_5 
       (.I0(\^i_term_reg [27]),
        .I1(\^d_term_reg [27]),
        .I2(\^p_term_reg [27]),
        .O(\interim_velocity[20]_i_5_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[20]_i_6 
       (.I0(\^i_term_reg [31]),
        .I1(\^d_term_reg [31]),
        .I2(\^p_term_reg [31]),
        .I3(\interim_velocity[20]_i_2_n_0 ),
        .O(\interim_velocity[20]_i_6_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[20]_i_7 
       (.I0(\^i_term_reg [30]),
        .I1(\^d_term_reg [30]),
        .I2(\^p_term_reg [30]),
        .I3(\interim_velocity[20]_i_3_n_0 ),
        .O(\interim_velocity[20]_i_7_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[20]_i_8 
       (.I0(\^i_term_reg [29]),
        .I1(\^d_term_reg [29]),
        .I2(\^p_term_reg [29]),
        .I3(\interim_velocity[20]_i_4_n_0 ),
        .O(\interim_velocity[20]_i_8_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[20]_i_9 
       (.I0(\^i_term_reg [28]),
        .I1(\^d_term_reg [28]),
        .I2(\^p_term_reg [28]),
        .I3(\interim_velocity[20]_i_5_n_0 ),
        .O(\interim_velocity[20]_i_9_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[24]_i_2 
       (.I0(\^i_term_reg [34]),
        .I1(\^d_term_reg [34]),
        .I2(\^p_term_reg [34]),
        .O(\interim_velocity[24]_i_2_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[24]_i_3 
       (.I0(\^i_term_reg [33]),
        .I1(\^d_term_reg [33]),
        .I2(\^p_term_reg [33]),
        .O(\interim_velocity[24]_i_3_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[24]_i_4 
       (.I0(\^i_term_reg [32]),
        .I1(\^d_term_reg [32]),
        .I2(\^p_term_reg [32]),
        .O(\interim_velocity[24]_i_4_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[24]_i_5 
       (.I0(\^i_term_reg [31]),
        .I1(\^d_term_reg [31]),
        .I2(\^p_term_reg [31]),
        .O(\interim_velocity[24]_i_5_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[24]_i_6 
       (.I0(\^i_term_reg [35]),
        .I1(\^d_term_reg [35]),
        .I2(\^p_term_reg [35]),
        .I3(\interim_velocity[24]_i_2_n_0 ),
        .O(\interim_velocity[24]_i_6_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[24]_i_7 
       (.I0(\^i_term_reg [34]),
        .I1(\^d_term_reg [34]),
        .I2(\^p_term_reg [34]),
        .I3(\interim_velocity[24]_i_3_n_0 ),
        .O(\interim_velocity[24]_i_7_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[24]_i_8 
       (.I0(\^i_term_reg [33]),
        .I1(\^d_term_reg [33]),
        .I2(\^p_term_reg [33]),
        .I3(\interim_velocity[24]_i_4_n_0 ),
        .O(\interim_velocity[24]_i_8_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[24]_i_9 
       (.I0(\^i_term_reg [32]),
        .I1(\^d_term_reg [32]),
        .I2(\^p_term_reg [32]),
        .I3(\interim_velocity[24]_i_5_n_0 ),
        .O(\interim_velocity[24]_i_9_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[28]_i_2 
       (.I0(\^i_term_reg [38]),
        .I1(\^d_term_reg [38]),
        .I2(\^p_term_reg [38]),
        .O(\interim_velocity[28]_i_2_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[28]_i_3 
       (.I0(\^i_term_reg [37]),
        .I1(\^d_term_reg [37]),
        .I2(\^p_term_reg [37]),
        .O(\interim_velocity[28]_i_3_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[28]_i_4 
       (.I0(\^i_term_reg [36]),
        .I1(\^d_term_reg [36]),
        .I2(\^p_term_reg [36]),
        .O(\interim_velocity[28]_i_4_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[28]_i_5 
       (.I0(\^i_term_reg [35]),
        .I1(\^d_term_reg [35]),
        .I2(\^p_term_reg [35]),
        .O(\interim_velocity[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[28]_i_6 
       (.I0(\interim_velocity[28]_i_2_n_0 ),
        .I1(\^d_term_reg [39]),
        .I2(\^i_term_reg [39]),
        .I3(\^p_term_reg [39]),
        .O(\interim_velocity[28]_i_6_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[28]_i_7 
       (.I0(\^i_term_reg [38]),
        .I1(\^d_term_reg [38]),
        .I2(\^p_term_reg [38]),
        .I3(\interim_velocity[28]_i_3_n_0 ),
        .O(\interim_velocity[28]_i_7_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[28]_i_8 
       (.I0(\^i_term_reg [37]),
        .I1(\^d_term_reg [37]),
        .I2(\^p_term_reg [37]),
        .I3(\interim_velocity[28]_i_4_n_0 ),
        .O(\interim_velocity[28]_i_8_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[28]_i_9 
       (.I0(\^i_term_reg [36]),
        .I1(\^d_term_reg [36]),
        .I2(\^p_term_reg [36]),
        .I3(\interim_velocity[28]_i_5_n_0 ),
        .O(\interim_velocity[28]_i_9_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[4]_i_2 
       (.I0(\^i_term_reg [14]),
        .I1(\^d_term_reg [14]),
        .I2(\^p_term_reg [14]),
        .O(\interim_velocity[4]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[4]_i_3 
       (.I0(\^i_term_reg [13]),
        .I1(\^d_term_reg [13]),
        .I2(\^p_term_reg [13]),
        .O(\interim_velocity[4]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[4]_i_4 
       (.I0(\^i_term_reg [12]),
        .I1(\^d_term_reg [12]),
        .I2(\^p_term_reg [12]),
        .O(\interim_velocity[4]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[4]_i_5 
       (.I0(\^i_term_reg [11]),
        .I1(\^d_term_reg [11]),
        .I2(\^p_term_reg [11]),
        .O(\interim_velocity[4]_i_5_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[4]_i_6 
       (.I0(\^i_term_reg [15]),
        .I1(\^d_term_reg [15]),
        .I2(\^p_term_reg [15]),
        .I3(\interim_velocity[4]_i_2_n_0 ),
        .O(\interim_velocity[4]_i_6_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[4]_i_7 
       (.I0(\^i_term_reg [14]),
        .I1(\^d_term_reg [14]),
        .I2(\^p_term_reg [14]),
        .I3(\interim_velocity[4]_i_3_n_0 ),
        .O(\interim_velocity[4]_i_7_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[4]_i_8 
       (.I0(\^i_term_reg [13]),
        .I1(\^d_term_reg [13]),
        .I2(\^p_term_reg [13]),
        .I3(\interim_velocity[4]_i_4_n_0 ),
        .O(\interim_velocity[4]_i_8_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[4]_i_9 
       (.I0(\^i_term_reg [12]),
        .I1(\^d_term_reg [12]),
        .I2(\^p_term_reg [12]),
        .I3(\interim_velocity[4]_i_5_n_0 ),
        .O(\interim_velocity[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \interim_velocity[72]_i_2 
       (.I0(\^i_term_reg [40]),
        .I1(\^d_term_reg [40]),
        .I2(\^p_term_reg [40]),
        .O(\interim_velocity[72]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \interim_velocity[72]_i_3 
       (.I0(\^p_term_reg [40]),
        .I1(\^d_term_reg [40]),
        .I2(\^i_term_reg [40]),
        .O(\interim_velocity[72]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7E)) 
    \interim_velocity[72]_i_4 
       (.I0(\^p_term_reg [40]),
        .I1(\^i_term_reg [40]),
        .I2(\^d_term_reg [40]),
        .O(\interim_velocity[72]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \interim_velocity[72]_i_5 
       (.I0(\^p_term_reg [40]),
        .I1(\^d_term_reg [40]),
        .I2(\^i_term_reg [40]),
        .I3(\^p_term_reg [39]),
        .I4(\^d_term_reg [39]),
        .I5(\^i_term_reg [39]),
        .O(\interim_velocity[72]_i_5_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[8]_i_2 
       (.I0(\^i_term_reg [18]),
        .I1(\^d_term_reg [18]),
        .I2(\^p_term_reg [18]),
        .O(\interim_velocity[8]_i_2_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[8]_i_3 
       (.I0(\^i_term_reg [17]),
        .I1(\^d_term_reg [17]),
        .I2(\^p_term_reg [17]),
        .O(\interim_velocity[8]_i_3_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[8]_i_4 
       (.I0(\^i_term_reg [16]),
        .I1(\^d_term_reg [16]),
        .I2(\^p_term_reg [16]),
        .O(\interim_velocity[8]_i_4_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \interim_velocity[8]_i_5 
       (.I0(\^i_term_reg [15]),
        .I1(\^d_term_reg [15]),
        .I2(\^p_term_reg [15]),
        .O(\interim_velocity[8]_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[8]_i_6 
       (.I0(\^i_term_reg [19]),
        .I1(\^d_term_reg [19]),
        .I2(\^p_term_reg [19]),
        .I3(\interim_velocity[8]_i_2_n_0 ),
        .O(\interim_velocity[8]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[8]_i_7 
       (.I0(\^i_term_reg [18]),
        .I1(\^d_term_reg [18]),
        .I2(\^p_term_reg [18]),
        .I3(\interim_velocity[8]_i_3_n_0 ),
        .O(\interim_velocity[8]_i_7_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[8]_i_8 
       (.I0(\^i_term_reg [17]),
        .I1(\^d_term_reg [17]),
        .I2(\^p_term_reg [17]),
        .I3(\interim_velocity[8]_i_4_n_0 ),
        .O(\interim_velocity[8]_i_8_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \interim_velocity[8]_i_9 
       (.I0(\^i_term_reg [16]),
        .I1(\^d_term_reg [16]),
        .I2(\^p_term_reg [16]),
        .I3(\interim_velocity[8]_i_5_n_0 ),
        .O(\interim_velocity[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[0]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[0]_i_1 
       (.CI(\interim_velocity_reg[0]_i_2_n_0 ),
        .CO({\interim_velocity_reg[0]_i_1_n_0 ,\interim_velocity_reg[0]_i_1_n_1 ,\interim_velocity_reg[0]_i_1_n_2 ,\interim_velocity_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[0]_i_3_n_0 ,\interim_velocity[0]_i_4_n_0 ,\interim_velocity[0]_i_5_n_0 ,\interim_velocity[0]_i_6_n_0 }),
        .O({\interim_velocity_reg[0]_i_1_n_4 ,\NLW_interim_velocity_reg[0]_i_1_O_UNCONNECTED [2:0]}),
        .S({\interim_velocity[0]_i_7_n_0 ,\interim_velocity[0]_i_8_n_0 ,\interim_velocity[0]_i_9_n_0 ,\interim_velocity[0]_i_10_n_0 }));
  CARRY4 \interim_velocity_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\interim_velocity_reg[0]_i_11_n_0 ,\interim_velocity_reg[0]_i_11_n_1 ,\interim_velocity_reg[0]_i_11_n_2 ,\interim_velocity_reg[0]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[0]_i_20_n_0 ,\interim_velocity[0]_i_21_n_0 ,\interim_velocity[0]_i_22_n_0 ,1'b0}),
        .O(\NLW_interim_velocity_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\interim_velocity[0]_i_23_n_0 ,\interim_velocity[0]_i_24_n_0 ,\interim_velocity[0]_i_25_n_0 ,\interim_velocity[0]_i_26_n_0 }));
  CARRY4 \interim_velocity_reg[0]_i_2 
       (.CI(\interim_velocity_reg[0]_i_11_n_0 ),
        .CO({\interim_velocity_reg[0]_i_2_n_0 ,\interim_velocity_reg[0]_i_2_n_1 ,\interim_velocity_reg[0]_i_2_n_2 ,\interim_velocity_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[0]_i_12_n_0 ,\interim_velocity[0]_i_13_n_0 ,\interim_velocity[0]_i_14_n_0 ,\interim_velocity[0]_i_15_n_0 }),
        .O(\NLW_interim_velocity_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\interim_velocity[0]_i_16_n_0 ,\interim_velocity[0]_i_17_n_0 ,\interim_velocity[0]_i_18_n_0 ,\interim_velocity[0]_i_19_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[12]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[12]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[12]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[12]_i_1 
       (.CI(\interim_velocity_reg[8]_i_1_n_0 ),
        .CO({\interim_velocity_reg[12]_i_1_n_0 ,\interim_velocity_reg[12]_i_1_n_1 ,\interim_velocity_reg[12]_i_1_n_2 ,\interim_velocity_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[12]_i_2_n_0 ,\interim_velocity[12]_i_3_n_0 ,\interim_velocity[12]_i_4_n_0 ,\interim_velocity[12]_i_5_n_0 }),
        .O({\interim_velocity_reg[12]_i_1_n_4 ,\interim_velocity_reg[12]_i_1_n_5 ,\interim_velocity_reg[12]_i_1_n_6 ,\interim_velocity_reg[12]_i_1_n_7 }),
        .S({\interim_velocity[12]_i_6_n_0 ,\interim_velocity[12]_i_7_n_0 ,\interim_velocity[12]_i_8_n_0 ,\interim_velocity[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[16]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[16]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[16]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[16]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[16]_i_1 
       (.CI(\interim_velocity_reg[12]_i_1_n_0 ),
        .CO({\interim_velocity_reg[16]_i_1_n_0 ,\interim_velocity_reg[16]_i_1_n_1 ,\interim_velocity_reg[16]_i_1_n_2 ,\interim_velocity_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[16]_i_2_n_0 ,\interim_velocity[16]_i_3_n_0 ,\interim_velocity[16]_i_4_n_0 ,\interim_velocity[16]_i_5_n_0 }),
        .O({\interim_velocity_reg[16]_i_1_n_4 ,\interim_velocity_reg[16]_i_1_n_5 ,\interim_velocity_reg[16]_i_1_n_6 ,\interim_velocity_reg[16]_i_1_n_7 }),
        .S({\interim_velocity[16]_i_6_n_0 ,\interim_velocity[16]_i_7_n_0 ,\interim_velocity[16]_i_8_n_0 ,\interim_velocity[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[20]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[20]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[20]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[4]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[20]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[20]_i_1 
       (.CI(\interim_velocity_reg[16]_i_1_n_0 ),
        .CO({\interim_velocity_reg[20]_i_1_n_0 ,\interim_velocity_reg[20]_i_1_n_1 ,\interim_velocity_reg[20]_i_1_n_2 ,\interim_velocity_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[20]_i_2_n_0 ,\interim_velocity[20]_i_3_n_0 ,\interim_velocity[20]_i_4_n_0 ,\interim_velocity[20]_i_5_n_0 }),
        .O({\interim_velocity_reg[20]_i_1_n_4 ,\interim_velocity_reg[20]_i_1_n_5 ,\interim_velocity_reg[20]_i_1_n_6 ,\interim_velocity_reg[20]_i_1_n_7 }),
        .S({\interim_velocity[20]_i_6_n_0 ,\interim_velocity[20]_i_7_n_0 ,\interim_velocity[20]_i_8_n_0 ,\interim_velocity[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[24]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[24]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[24]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[24]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[24]_i_1 
       (.CI(\interim_velocity_reg[20]_i_1_n_0 ),
        .CO({\interim_velocity_reg[24]_i_1_n_0 ,\interim_velocity_reg[24]_i_1_n_1 ,\interim_velocity_reg[24]_i_1_n_2 ,\interim_velocity_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[24]_i_2_n_0 ,\interim_velocity[24]_i_3_n_0 ,\interim_velocity[24]_i_4_n_0 ,\interim_velocity[24]_i_5_n_0 }),
        .O({\interim_velocity_reg[24]_i_1_n_4 ,\interim_velocity_reg[24]_i_1_n_5 ,\interim_velocity_reg[24]_i_1_n_6 ,\interim_velocity_reg[24]_i_1_n_7 }),
        .S({\interim_velocity[24]_i_6_n_0 ,\interim_velocity[24]_i_7_n_0 ,\interim_velocity[24]_i_8_n_0 ,\interim_velocity[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[28]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[28]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[28]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[28]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[28] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[28]_i_1 
       (.CI(\interim_velocity_reg[24]_i_1_n_0 ),
        .CO({\interim_velocity_reg[28]_i_1_n_0 ,\interim_velocity_reg[28]_i_1_n_1 ,\interim_velocity_reg[28]_i_1_n_2 ,\interim_velocity_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[28]_i_2_n_0 ,\interim_velocity[28]_i_3_n_0 ,\interim_velocity[28]_i_4_n_0 ,\interim_velocity[28]_i_5_n_0 }),
        .O({\interim_velocity_reg[28]_i_1_n_4 ,\interim_velocity_reg[28]_i_1_n_5 ,\interim_velocity_reg[28]_i_1_n_6 ,\interim_velocity_reg[28]_i_1_n_7 }),
        .S({\interim_velocity[28]_i_6_n_0 ,\interim_velocity[28]_i_7_n_0 ,\interim_velocity[28]_i_8_n_0 ,\interim_velocity[28]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[72]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[4]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[72]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[4]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[4]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[4]_i_1 
       (.CI(\interim_velocity_reg[0]_i_1_n_0 ),
        .CO({\interim_velocity_reg[4]_i_1_n_0 ,\interim_velocity_reg[4]_i_1_n_1 ,\interim_velocity_reg[4]_i_1_n_2 ,\interim_velocity_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[4]_i_2_n_0 ,\interim_velocity[4]_i_3_n_0 ,\interim_velocity[4]_i_4_n_0 ,\interim_velocity[4]_i_5_n_0 }),
        .O({\interim_velocity_reg[4]_i_1_n_4 ,\interim_velocity_reg[4]_i_1_n_5 ,\interim_velocity_reg[4]_i_1_n_6 ,\interim_velocity_reg[4]_i_1_n_7 }),
        .S({\interim_velocity[4]_i_6_n_0 ,\interim_velocity[4]_i_7_n_0 ,\interim_velocity[4]_i_8_n_0 ,\interim_velocity[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[8]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[8]_i_1_n_6 ),
        .Q(\interim_velocity_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[72] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in0),
        .Q(\interim_velocity_reg_n_0_[72] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[72]_i_1 
       (.CI(\interim_velocity_reg[28]_i_1_n_0 ),
        .CO({\NLW_interim_velocity_reg[72]_i_1_CO_UNCONNECTED [3:2],\interim_velocity_reg[72]_i_1_n_2 ,\interim_velocity_reg[72]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\interim_velocity[72]_i_2_n_0 ,\interim_velocity[72]_i_3_n_0 }),
        .O({\NLW_interim_velocity_reg[72]_i_1_O_UNCONNECTED [3],p_0_in0,\interim_velocity_reg[72]_i_1_n_6 ,\interim_velocity_reg[72]_i_1_n_7 }),
        .S({1'b0,1'b1,\interim_velocity[72]_i_4_n_0 ,\interim_velocity[72]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[8]_i_1_n_5 ),
        .Q(\interim_velocity_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[8]_i_1_n_4 ),
        .Q(\interim_velocity_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \interim_velocity_reg[8]_i_1 
       (.CI(\interim_velocity_reg[4]_i_1_n_0 ),
        .CO({\interim_velocity_reg[8]_i_1_n_0 ,\interim_velocity_reg[8]_i_1_n_1 ,\interim_velocity_reg[8]_i_1_n_2 ,\interim_velocity_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\interim_velocity[8]_i_2_n_0 ,\interim_velocity[8]_i_3_n_0 ,\interim_velocity[8]_i_4_n_0 ,\interim_velocity[8]_i_5_n_0 }),
        .O({\interim_velocity_reg[8]_i_1_n_4 ,\interim_velocity_reg[8]_i_1_n_5 ,\interim_velocity_reg[8]_i_1_n_6 ,\interim_velocity_reg[8]_i_1_n_7 }),
        .S({\interim_velocity[8]_i_6_n_0 ,\interim_velocity[8]_i_7_n_0 ,\interim_velocity[8]_i_8_n_0 ,\interim_velocity[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\interim_velocity_reg[12]_i_1_n_7 ),
        .Q(\interim_velocity_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \nv_flag[0]_i_1 
       (.I0(\velocity1_inferred__0/i__carry__8_n_3 ),
        .I1(velocity1_carry__8_n_3),
        .O(\nv_flag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nv_flag_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\nv_flag[0]_i_1_n_0 ),
        .Q(new_velocity_available_0),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_term0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,error0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_term0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,kp_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({p_term0_n_6,p_term0_n_7,p_term0_n_8,p_term0_n_9,p_term0_n_10,p_term0_n_11,p_term0_n_12,p_term0_n_13,p_term0_n_14,p_term0_n_15,p_term0_n_16,p_term0_n_17,p_term0_n_18,p_term0_n_19,p_term0_n_20,p_term0_n_21,p_term0_n_22,p_term0_n_23}),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_term0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_term0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(sys_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_term0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_term0_OVERFLOW_UNCONNECTED),
        .P({p_term0_n_58,p_term0_n_59,p_term0_n_60,p_term0_n_61,p_term0_n_62,p_term0_n_63,p_term0_n_64,p_term0_n_65,p_term0_n_66,p_term0_n_67,p_term0_n_68,p_term0_n_69,p_term0_n_70,p_term0_n_71,p_term0_n_72,p_term0_n_73,p_term0_n_74,p_term0_n_75,p_term0_n_76,p_term0_n_77,p_term0_n_78,p_term0_n_79,p_term0_n_80,p_term0_n_81,p_term0_n_82,p_term0_n_83,p_term0_n_84,p_term0_n_85,p_term0_n_86,p_term0_n_87,p_term0_n_88,p_term0_n_89,p_term0_n_90,p_term0_n_91,p_term0_n_92,p_term0_n_93,p_term0_n_94,p_term0_n_95,p_term0_n_96,p_term0_n_97,p_term0_n_98,p_term0_n_99,p_term0_n_100,p_term0_n_101,p_term0_n_102,p_term0_n_103,p_term0_n_104,p_term0_n_105}),
        .PATTERNBDETECT(NLW_p_term0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_term0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p_term0_n_106,p_term0_n_107,p_term0_n_108,p_term0_n_109,p_term0_n_110,p_term0_n_111,p_term0_n_112,p_term0_n_113,p_term0_n_114,p_term0_n_115,p_term0_n_116,p_term0_n_117,p_term0_n_118,p_term0_n_119,p_term0_n_120,p_term0_n_121,p_term0_n_122,p_term0_n_123,p_term0_n_124,p_term0_n_125,p_term0_n_126,p_term0_n_127,p_term0_n_128,p_term0_n_129,p_term0_n_130,p_term0_n_131,p_term0_n_132,p_term0_n_133,p_term0_n_134,p_term0_n_135,p_term0_n_136,p_term0_n_137,p_term0_n_138,p_term0_n_139,p_term0_n_140,p_term0_n_141,p_term0_n_142,p_term0_n_143,p_term0_n_144,p_term0_n_145,p_term0_n_146,p_term0_n_147,p_term0_n_148,p_term0_n_149,p_term0_n_150,p_term0_n_151,p_term0_n_152,p_term0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_term0_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_term_reg
       (.A({error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31],error0[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_term_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({p_term0_n_6,p_term0_n_7,p_term0_n_8,p_term0_n_9,p_term0_n_10,p_term0_n_11,p_term0_n_12,p_term0_n_13,p_term0_n_14,p_term0_n_15,p_term0_n_16,p_term0_n_17,p_term0_n_18,p_term0_n_19,p_term0_n_20,p_term0_n_21,p_term0_n_22,p_term0_n_23}),
        .BCOUT(NLW_p_term_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_term_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_term_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(sys_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_term_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_term_reg_OVERFLOW_UNCONNECTED),
        .P({p_term_reg_n_58,p_term_reg_n_59,p_term_reg_n_60,p_term_reg_n_61,p_term_reg_n_62,p_term_reg_n_63,p_term_reg_n_64,p_term_reg_n_65,p_term_reg_n_66,p_term_reg_n_67,p_term_reg_n_68,p_term_reg_n_69,p_term_reg_n_70,p_term_reg_n_71,p_term_reg_n_72,p_term_reg_n_73,p_term_reg_n_74,p_term_reg_n_75,p_term_reg_n_76,p_term_reg_n_77,p_term_reg_n_78,p_term_reg_n_79,p_term_reg_n_80,p_term_reg_n_81,\^p_term_reg [40:17]}),
        .PATTERNBDETECT(NLW_p_term_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_term_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({p_term0_n_106,p_term0_n_107,p_term0_n_108,p_term0_n_109,p_term0_n_110,p_term0_n_111,p_term0_n_112,p_term0_n_113,p_term0_n_114,p_term0_n_115,p_term0_n_116,p_term0_n_117,p_term0_n_118,p_term0_n_119,p_term0_n_120,p_term0_n_121,p_term0_n_122,p_term0_n_123,p_term0_n_124,p_term0_n_125,p_term0_n_126,p_term0_n_127,p_term0_n_128,p_term0_n_129,p_term0_n_130,p_term0_n_131,p_term0_n_132,p_term0_n_133,p_term0_n_134,p_term0_n_135,p_term0_n_136,p_term0_n_137,p_term0_n_138,p_term0_n_139,p_term0_n_140,p_term0_n_141,p_term0_n_142,p_term0_n_143,p_term0_n_144,p_term0_n_145,p_term0_n_146,p_term0_n_147,p_term0_n_148,p_term0_n_149,p_term0_n_150,p_term0_n_151,p_term0_n_152,p_term0_n_153}),
        .PCOUT(NLW_p_term_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_term_reg_UNDERFLOW_UNCONNECTED));
  FDRE \p_term_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_105),
        .Q(\^p_term_reg [0]),
        .R(1'b0));
  FDRE \p_term_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_95),
        .Q(\^p_term_reg [10]),
        .R(1'b0));
  FDRE \p_term_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_94),
        .Q(\^p_term_reg [11]),
        .R(1'b0));
  FDRE \p_term_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_93),
        .Q(\^p_term_reg [12]),
        .R(1'b0));
  FDRE \p_term_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_92),
        .Q(\^p_term_reg [13]),
        .R(1'b0));
  FDRE \p_term_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_91),
        .Q(\^p_term_reg [14]),
        .R(1'b0));
  FDRE \p_term_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_90),
        .Q(\^p_term_reg [15]),
        .R(1'b0));
  FDRE \p_term_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_89),
        .Q(\^p_term_reg [16]),
        .R(1'b0));
  FDRE \p_term_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_104),
        .Q(\^p_term_reg [1]),
        .R(1'b0));
  FDRE \p_term_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_103),
        .Q(\^p_term_reg [2]),
        .R(1'b0));
  FDRE \p_term_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_102),
        .Q(\^p_term_reg [3]),
        .R(1'b0));
  FDRE \p_term_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_101),
        .Q(\^p_term_reg [4]),
        .R(1'b0));
  FDRE \p_term_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_100),
        .Q(\^p_term_reg [5]),
        .R(1'b0));
  FDRE \p_term_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_99),
        .Q(\^p_term_reg [6]),
        .R(1'b0));
  FDRE \p_term_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_98),
        .Q(\^p_term_reg [7]),
        .R(1'b0));
  FDRE \p_term_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_97),
        .Q(\^p_term_reg [8]),
        .R(1'b0));
  FDRE \p_term_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_term0_n_96),
        .Q(\^p_term_reg [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[0] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[0]),
        .Q(saved_target_angle[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[10] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[10]),
        .Q(saved_target_angle[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[11] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[11]),
        .Q(saved_target_angle[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[12] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[12]),
        .Q(saved_target_angle[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[13] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[13]),
        .Q(saved_target_angle[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[14] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[14]),
        .Q(saved_target_angle[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[15] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[15]),
        .Q(saved_target_angle[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[16] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[16]),
        .Q(saved_target_angle[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[17] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[17]),
        .Q(saved_target_angle[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[18] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[18]),
        .Q(saved_target_angle[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[19] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[19]),
        .Q(saved_target_angle[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[1] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[1]),
        .Q(saved_target_angle[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[20] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[20]),
        .Q(saved_target_angle[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[21] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[21]),
        .Q(saved_target_angle[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[22] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[22]),
        .Q(saved_target_angle[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[23] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[23]),
        .Q(saved_target_angle[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[24] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[24]),
        .Q(saved_target_angle[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[25] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[25]),
        .Q(saved_target_angle[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[26] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[26]),
        .Q(saved_target_angle[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[27] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[27]),
        .Q(saved_target_angle[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[28] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[28]),
        .Q(saved_target_angle[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[29] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[29]),
        .Q(saved_target_angle[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[2] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[2]),
        .Q(saved_target_angle[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[30] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[30]),
        .Q(saved_target_angle[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[31] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[31]),
        .Q(saved_target_angle[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[3] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[3]),
        .Q(saved_target_angle[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[4] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[4]),
        .Q(saved_target_angle[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[5] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[5]),
        .Q(saved_target_angle[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[6] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[6]),
        .Q(saved_target_angle[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[7] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[7]),
        .Q(saved_target_angle[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[8] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[8]),
        .Q(saved_target_angle[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \saved_target_angle_reg[9] 
       (.C(sys_clk),
        .CE(new_target_angle_available_0),
        .D(target_angle_0[9]),
        .Q(saved_target_angle[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry
       (.CI(1'b0),
        .CO({velocity1_carry_n_0,velocity1_carry_n_1,velocity1_carry_n_2,velocity1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry_i_1_n_0,velocity2[5],velocity1_carry_i_3_n_0,velocity1_carry_i_4_n_0}),
        .O(NLW_velocity1_carry_O_UNCONNECTED[3:0]),
        .S({velocity1_carry_i_5_n_0,velocity1_carry_i_6_n_0,velocity1_carry_i_7_n_0,velocity1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__0
       (.CI(velocity1_carry_n_0),
        .CO({velocity1_carry__0_n_0,velocity1_carry__0_n_1,velocity1_carry__0_n_2,velocity1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__0_i_1_n_0,velocity1_carry__0_i_2_n_0,velocity1_carry__0_i_3_n_0,velocity1_carry__0_i_4_n_0}),
        .O(NLW_velocity1_carry__0_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__0_i_5_n_0,velocity1_carry__0_i_6_n_0,velocity1_carry__0_i_7_n_0,velocity1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__0_i_1
       (.I0(velocity2[14]),
        .I1(velocity2[15]),
        .O(velocity1_carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__0_i_10
       (.CI(velocity1_carry_i_2_n_0),
        .CO({velocity1_carry__0_i_10_n_0,velocity1_carry__0_i_10_n_1,velocity1_carry__0_i_10_n_2,velocity1_carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[11] ,\interim_velocity_reg_n_0_[10] ,\interim_velocity_reg_n_0_[9] ,\interim_velocity_reg_n_0_[8] }),
        .O(velocity2[11:8]),
        .S({velocity1_carry__0_i_15_n_0,velocity1_carry__0_i_16_n_0,velocity1_carry__0_i_17_n_0,velocity1_carry__0_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_11
       (.I0(\interim_velocity_reg_n_0_[15] ),
        .I1(output_velocity_0[15]),
        .O(velocity1_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_12
       (.I0(\interim_velocity_reg_n_0_[14] ),
        .I1(output_velocity_0[14]),
        .O(velocity1_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_13
       (.I0(\interim_velocity_reg_n_0_[13] ),
        .I1(output_velocity_0[13]),
        .O(velocity1_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_14
       (.I0(\interim_velocity_reg_n_0_[12] ),
        .I1(output_velocity_0[12]),
        .O(velocity1_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_15
       (.I0(\interim_velocity_reg_n_0_[11] ),
        .I1(output_velocity_0[11]),
        .O(velocity1_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_16
       (.I0(\interim_velocity_reg_n_0_[10] ),
        .I1(output_velocity_0[10]),
        .O(velocity1_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_17
       (.I0(\interim_velocity_reg_n_0_[9] ),
        .I1(output_velocity_0[9]),
        .O(velocity1_carry__0_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__0_i_18
       (.I0(\interim_velocity_reg_n_0_[8] ),
        .I1(output_velocity_0[8]),
        .O(velocity1_carry__0_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__0_i_2
       (.I0(velocity2[12]),
        .I1(velocity2[13]),
        .O(velocity1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__0_i_3
       (.I0(velocity2[10]),
        .I1(velocity2[11]),
        .O(velocity1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__0_i_4
       (.I0(velocity2[8]),
        .I1(velocity2[9]),
        .O(velocity1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__0_i_5
       (.I0(velocity2[14]),
        .I1(velocity2[15]),
        .O(velocity1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__0_i_6
       (.I0(velocity2[12]),
        .I1(velocity2[13]),
        .O(velocity1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__0_i_7
       (.I0(velocity2[10]),
        .I1(velocity2[11]),
        .O(velocity1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__0_i_8
       (.I0(velocity2[8]),
        .I1(velocity2[9]),
        .O(velocity1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__0_i_9
       (.CI(velocity1_carry__0_i_10_n_0),
        .CO({velocity1_carry__0_i_9_n_0,velocity1_carry__0_i_9_n_1,velocity1_carry__0_i_9_n_2,velocity1_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[15] ,\interim_velocity_reg_n_0_[14] ,\interim_velocity_reg_n_0_[13] ,\interim_velocity_reg_n_0_[12] }),
        .O(velocity2[15:12]),
        .S({velocity1_carry__0_i_11_n_0,velocity1_carry__0_i_12_n_0,velocity1_carry__0_i_13_n_0,velocity1_carry__0_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__1
       (.CI(velocity1_carry__0_n_0),
        .CO({velocity1_carry__1_n_0,velocity1_carry__1_n_1,velocity1_carry__1_n_2,velocity1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__1_i_1_n_0,velocity1_carry__1_i_2_n_0,velocity1_carry__1_i_3_n_0,velocity1_carry__1_i_4_n_0}),
        .O(NLW_velocity1_carry__1_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__1_i_5_n_0,velocity1_carry__1_i_6_n_0,velocity1_carry__1_i_7_n_0,velocity1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__1_i_1
       (.I0(velocity2[22]),
        .I1(velocity2[23]),
        .O(velocity1_carry__1_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__1_i_10
       (.CI(velocity1_carry__0_i_9_n_0),
        .CO({velocity1_carry__1_i_10_n_0,velocity1_carry__1_i_10_n_1,velocity1_carry__1_i_10_n_2,velocity1_carry__1_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[19] ,\interim_velocity_reg_n_0_[18] ,\interim_velocity_reg_n_0_[17] ,\interim_velocity_reg_n_0_[16] }),
        .O(velocity2[19:16]),
        .S({velocity1_carry__1_i_15_n_0,velocity1_carry__1_i_16_n_0,velocity1_carry__1_i_17_n_0,velocity1_carry__1_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_11
       (.I0(\interim_velocity_reg_n_0_[23] ),
        .I1(output_velocity_0[23]),
        .O(velocity1_carry__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_12
       (.I0(\interim_velocity_reg_n_0_[22] ),
        .I1(output_velocity_0[22]),
        .O(velocity1_carry__1_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_13
       (.I0(\interim_velocity_reg_n_0_[21] ),
        .I1(output_velocity_0[21]),
        .O(velocity1_carry__1_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_14
       (.I0(\interim_velocity_reg_n_0_[20] ),
        .I1(output_velocity_0[20]),
        .O(velocity1_carry__1_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_15
       (.I0(\interim_velocity_reg_n_0_[19] ),
        .I1(output_velocity_0[19]),
        .O(velocity1_carry__1_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_16
       (.I0(\interim_velocity_reg_n_0_[18] ),
        .I1(output_velocity_0[18]),
        .O(velocity1_carry__1_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_17
       (.I0(\interim_velocity_reg_n_0_[17] ),
        .I1(output_velocity_0[17]),
        .O(velocity1_carry__1_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__1_i_18
       (.I0(\interim_velocity_reg_n_0_[16] ),
        .I1(output_velocity_0[16]),
        .O(velocity1_carry__1_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__1_i_2
       (.I0(velocity2[20]),
        .I1(velocity2[21]),
        .O(velocity1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__1_i_3
       (.I0(velocity2[18]),
        .I1(velocity2[19]),
        .O(velocity1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__1_i_4
       (.I0(velocity2[16]),
        .I1(velocity2[17]),
        .O(velocity1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__1_i_5
       (.I0(velocity2[22]),
        .I1(velocity2[23]),
        .O(velocity1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__1_i_6
       (.I0(velocity2[20]),
        .I1(velocity2[21]),
        .O(velocity1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__1_i_7
       (.I0(velocity2[18]),
        .I1(velocity2[19]),
        .O(velocity1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__1_i_8
       (.I0(velocity2[16]),
        .I1(velocity2[17]),
        .O(velocity1_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__1_i_9
       (.CI(velocity1_carry__1_i_10_n_0),
        .CO({velocity1_carry__1_i_9_n_0,velocity1_carry__1_i_9_n_1,velocity1_carry__1_i_9_n_2,velocity1_carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[23] ,\interim_velocity_reg_n_0_[22] ,\interim_velocity_reg_n_0_[21] ,\interim_velocity_reg_n_0_[20] }),
        .O(velocity2[23:20]),
        .S({velocity1_carry__1_i_11_n_0,velocity1_carry__1_i_12_n_0,velocity1_carry__1_i_13_n_0,velocity1_carry__1_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__2
       (.CI(velocity1_carry__1_n_0),
        .CO({velocity1_carry__2_n_0,velocity1_carry__2_n_1,velocity1_carry__2_n_2,velocity1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__2_i_1_n_0,velocity1_carry__2_i_2_n_0,velocity1_carry__2_i_3_n_0,velocity1_carry__2_i_4_n_0}),
        .O(NLW_velocity1_carry__2_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__2_i_5_n_0,velocity1_carry__2_i_6_n_0,velocity1_carry__2_i_7_n_0,velocity1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__2_i_1
       (.I0(velocity2[30]),
        .I1(velocity2[31]),
        .O(velocity1_carry__2_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__2_i_10
       (.CI(velocity1_carry__1_i_9_n_0),
        .CO({velocity1_carry__2_i_10_n_0,velocity1_carry__2_i_10_n_1,velocity1_carry__2_i_10_n_2,velocity1_carry__2_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[27] ,\interim_velocity_reg_n_0_[26] ,\interim_velocity_reg_n_0_[25] ,\interim_velocity_reg_n_0_[24] }),
        .O(velocity2[27:24]),
        .S({velocity1_carry__2_i_15_n_0,velocity1_carry__2_i_16_n_0,velocity1_carry__2_i_17_n_0,velocity1_carry__2_i_18_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .I1(output_velocity_0[31]),
        .O(velocity1_carry__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_12
       (.I0(\interim_velocity_reg_n_0_[30] ),
        .I1(output_velocity_0[30]),
        .O(velocity1_carry__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_13
       (.I0(\interim_velocity_reg_n_0_[29] ),
        .I1(output_velocity_0[29]),
        .O(velocity1_carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_14
       (.I0(\interim_velocity_reg_n_0_[28] ),
        .I1(output_velocity_0[28]),
        .O(velocity1_carry__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_15
       (.I0(\interim_velocity_reg_n_0_[27] ),
        .I1(output_velocity_0[27]),
        .O(velocity1_carry__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_16
       (.I0(\interim_velocity_reg_n_0_[26] ),
        .I1(output_velocity_0[26]),
        .O(velocity1_carry__2_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_17
       (.I0(\interim_velocity_reg_n_0_[25] ),
        .I1(output_velocity_0[25]),
        .O(velocity1_carry__2_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry__2_i_18
       (.I0(\interim_velocity_reg_n_0_[24] ),
        .I1(output_velocity_0[24]),
        .O(velocity1_carry__2_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__2_i_2
       (.I0(velocity2[28]),
        .I1(velocity2[29]),
        .O(velocity1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__2_i_3
       (.I0(velocity2[26]),
        .I1(velocity2[27]),
        .O(velocity1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__2_i_4
       (.I0(velocity2[24]),
        .I1(velocity2[25]),
        .O(velocity1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__2_i_5
       (.I0(velocity2[30]),
        .I1(velocity2[31]),
        .O(velocity1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__2_i_6
       (.I0(velocity2[28]),
        .I1(velocity2[29]),
        .O(velocity1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__2_i_7
       (.I0(velocity2[26]),
        .I1(velocity2[27]),
        .O(velocity1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__2_i_8
       (.I0(velocity2[24]),
        .I1(velocity2[25]),
        .O(velocity1_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__2_i_9
       (.CI(velocity1_carry__2_i_10_n_0),
        .CO({velocity1_carry__2_i_9_n_0,velocity1_carry__2_i_9_n_1,velocity1_carry__2_i_9_n_2,velocity1_carry__2_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[30] ,\interim_velocity_reg_n_0_[29] ,\interim_velocity_reg_n_0_[28] }),
        .O(velocity2[31:28]),
        .S({velocity1_carry__2_i_11_n_0,velocity1_carry__2_i_12_n_0,velocity1_carry__2_i_13_n_0,velocity1_carry__2_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__3
       (.CI(velocity1_carry__2_n_0),
        .CO({velocity1_carry__3_n_0,velocity1_carry__3_n_1,velocity1_carry__3_n_2,velocity1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__3_i_1_n_0,velocity1_carry__3_i_2_n_0,velocity1_carry__3_i_3_n_0,velocity1_carry__3_i_4_n_0}),
        .O(NLW_velocity1_carry__3_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__3_i_5_n_0,velocity1_carry__3_i_6_n_0,velocity1_carry__3_i_7_n_0,velocity1_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__3_i_1
       (.I0(velocity2[38]),
        .I1(velocity2[39]),
        .O(velocity1_carry__3_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__3_i_10
       (.CI(velocity1_carry__2_i_9_n_0),
        .CO({velocity1_carry__3_i_10_n_0,velocity1_carry__3_i_10_n_1,velocity1_carry__3_i_10_n_2,velocity1_carry__3_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[35:32]),
        .S({velocity1_carry__3_i_15_n_0,velocity1_carry__3_i_16_n_0,velocity1_carry__3_i_17_n_0,velocity1_carry__3_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__3_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__3_i_2
       (.I0(velocity2[36]),
        .I1(velocity2[37]),
        .O(velocity1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__3_i_3
       (.I0(velocity2[34]),
        .I1(velocity2[35]),
        .O(velocity1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__3_i_4
       (.I0(velocity2[32]),
        .I1(velocity2[33]),
        .O(velocity1_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__3_i_5
       (.I0(velocity2[38]),
        .I1(velocity2[39]),
        .O(velocity1_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__3_i_6
       (.I0(velocity2[36]),
        .I1(velocity2[37]),
        .O(velocity1_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__3_i_7
       (.I0(velocity2[34]),
        .I1(velocity2[35]),
        .O(velocity1_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__3_i_8
       (.I0(velocity2[32]),
        .I1(velocity2[33]),
        .O(velocity1_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__3_i_9
       (.CI(velocity1_carry__3_i_10_n_0),
        .CO({velocity1_carry__3_i_9_n_0,velocity1_carry__3_i_9_n_1,velocity1_carry__3_i_9_n_2,velocity1_carry__3_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[39:36]),
        .S({velocity1_carry__3_i_11_n_0,velocity1_carry__3_i_12_n_0,velocity1_carry__3_i_13_n_0,velocity1_carry__3_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__4
       (.CI(velocity1_carry__3_n_0),
        .CO({velocity1_carry__4_n_0,velocity1_carry__4_n_1,velocity1_carry__4_n_2,velocity1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__4_i_1_n_0,velocity1_carry__4_i_2_n_0,velocity1_carry__4_i_3_n_0,velocity1_carry__4_i_4_n_0}),
        .O(NLW_velocity1_carry__4_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__4_i_5_n_0,velocity1_carry__4_i_6_n_0,velocity1_carry__4_i_7_n_0,velocity1_carry__4_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__4_i_1
       (.I0(velocity2[46]),
        .I1(velocity2[47]),
        .O(velocity1_carry__4_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__4_i_10
       (.CI(velocity1_carry__3_i_9_n_0),
        .CO({velocity1_carry__4_i_10_n_0,velocity1_carry__4_i_10_n_1,velocity1_carry__4_i_10_n_2,velocity1_carry__4_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[43:40]),
        .S({velocity1_carry__4_i_15_n_0,velocity1_carry__4_i_16_n_0,velocity1_carry__4_i_17_n_0,velocity1_carry__4_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__4_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__4_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__4_i_2
       (.I0(velocity2[44]),
        .I1(velocity2[45]),
        .O(velocity1_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__4_i_3
       (.I0(velocity2[42]),
        .I1(velocity2[43]),
        .O(velocity1_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__4_i_4
       (.I0(velocity2[40]),
        .I1(velocity2[41]),
        .O(velocity1_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__4_i_5
       (.I0(velocity2[46]),
        .I1(velocity2[47]),
        .O(velocity1_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__4_i_6
       (.I0(velocity2[44]),
        .I1(velocity2[45]),
        .O(velocity1_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__4_i_7
       (.I0(velocity2[42]),
        .I1(velocity2[43]),
        .O(velocity1_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__4_i_8
       (.I0(velocity2[40]),
        .I1(velocity2[41]),
        .O(velocity1_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__4_i_9
       (.CI(velocity1_carry__4_i_10_n_0),
        .CO({velocity1_carry__4_i_9_n_0,velocity1_carry__4_i_9_n_1,velocity1_carry__4_i_9_n_2,velocity1_carry__4_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[47:44]),
        .S({velocity1_carry__4_i_11_n_0,velocity1_carry__4_i_12_n_0,velocity1_carry__4_i_13_n_0,velocity1_carry__4_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__5
       (.CI(velocity1_carry__4_n_0),
        .CO({velocity1_carry__5_n_0,velocity1_carry__5_n_1,velocity1_carry__5_n_2,velocity1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__5_i_1_n_0,velocity1_carry__5_i_2_n_0,velocity1_carry__5_i_3_n_0,velocity1_carry__5_i_4_n_0}),
        .O(NLW_velocity1_carry__5_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__5_i_5_n_0,velocity1_carry__5_i_6_n_0,velocity1_carry__5_i_7_n_0,velocity1_carry__5_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__5_i_1
       (.I0(velocity2[54]),
        .I1(velocity2[55]),
        .O(velocity1_carry__5_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__5_i_10
       (.CI(velocity1_carry__4_i_9_n_0),
        .CO({velocity1_carry__5_i_10_n_0,velocity1_carry__5_i_10_n_1,velocity1_carry__5_i_10_n_2,velocity1_carry__5_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[51:48]),
        .S({velocity1_carry__5_i_15_n_0,velocity1_carry__5_i_16_n_0,velocity1_carry__5_i_17_n_0,velocity1_carry__5_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__5_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__5_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__5_i_2
       (.I0(velocity2[52]),
        .I1(velocity2[53]),
        .O(velocity1_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__5_i_3
       (.I0(velocity2[50]),
        .I1(velocity2[51]),
        .O(velocity1_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__5_i_4
       (.I0(velocity2[48]),
        .I1(velocity2[49]),
        .O(velocity1_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__5_i_5
       (.I0(velocity2[54]),
        .I1(velocity2[55]),
        .O(velocity1_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__5_i_6
       (.I0(velocity2[52]),
        .I1(velocity2[53]),
        .O(velocity1_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__5_i_7
       (.I0(velocity2[50]),
        .I1(velocity2[51]),
        .O(velocity1_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__5_i_8
       (.I0(velocity2[48]),
        .I1(velocity2[49]),
        .O(velocity1_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__5_i_9
       (.CI(velocity1_carry__5_i_10_n_0),
        .CO({velocity1_carry__5_i_9_n_0,velocity1_carry__5_i_9_n_1,velocity1_carry__5_i_9_n_2,velocity1_carry__5_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[55:52]),
        .S({velocity1_carry__5_i_11_n_0,velocity1_carry__5_i_12_n_0,velocity1_carry__5_i_13_n_0,velocity1_carry__5_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__6
       (.CI(velocity1_carry__5_n_0),
        .CO({velocity1_carry__6_n_0,velocity1_carry__6_n_1,velocity1_carry__6_n_2,velocity1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__6_i_1_n_0,velocity1_carry__6_i_2_n_0,velocity1_carry__6_i_3_n_0,velocity1_carry__6_i_4_n_0}),
        .O(NLW_velocity1_carry__6_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__6_i_5_n_0,velocity1_carry__6_i_6_n_0,velocity1_carry__6_i_7_n_0,velocity1_carry__6_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__6_i_1
       (.I0(velocity2[62]),
        .I1(velocity2[63]),
        .O(velocity1_carry__6_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__6_i_10
       (.CI(velocity1_carry__5_i_9_n_0),
        .CO({velocity1_carry__6_i_10_n_0,velocity1_carry__6_i_10_n_1,velocity1_carry__6_i_10_n_2,velocity1_carry__6_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[59:56]),
        .S({velocity1_carry__6_i_15_n_0,velocity1_carry__6_i_16_n_0,velocity1_carry__6_i_17_n_0,velocity1_carry__6_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__6_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__6_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__6_i_2
       (.I0(velocity2[60]),
        .I1(velocity2[61]),
        .O(velocity1_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__6_i_3
       (.I0(velocity2[58]),
        .I1(velocity2[59]),
        .O(velocity1_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__6_i_4
       (.I0(velocity2[56]),
        .I1(velocity2[57]),
        .O(velocity1_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__6_i_5
       (.I0(velocity2[62]),
        .I1(velocity2[63]),
        .O(velocity1_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__6_i_6
       (.I0(velocity2[60]),
        .I1(velocity2[61]),
        .O(velocity1_carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__6_i_7
       (.I0(velocity2[58]),
        .I1(velocity2[59]),
        .O(velocity1_carry__6_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__6_i_8
       (.I0(velocity2[56]),
        .I1(velocity2[57]),
        .O(velocity1_carry__6_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__6_i_9
       (.CI(velocity1_carry__6_i_10_n_0),
        .CO({velocity1_carry__6_i_9_n_0,velocity1_carry__6_i_9_n_1,velocity1_carry__6_i_9_n_2,velocity1_carry__6_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[63:60]),
        .S({velocity1_carry__6_i_11_n_0,velocity1_carry__6_i_12_n_0,velocity1_carry__6_i_13_n_0,velocity1_carry__6_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__7
       (.CI(velocity1_carry__6_n_0),
        .CO({velocity1_carry__7_n_0,velocity1_carry__7_n_1,velocity1_carry__7_n_2,velocity1_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry__7_i_1_n_0,velocity1_carry__7_i_2_n_0,velocity1_carry__7_i_3_n_0,velocity1_carry__7_i_4_n_0}),
        .O(NLW_velocity1_carry__7_O_UNCONNECTED[3:0]),
        .S({velocity1_carry__7_i_5_n_0,velocity1_carry__7_i_6_n_0,velocity1_carry__7_i_7_n_0,velocity1_carry__7_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__7_i_1
       (.I0(velocity2[70]),
        .I1(velocity2[71]),
        .O(velocity1_carry__7_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__7_i_10
       (.CI(velocity1_carry__6_i_9_n_0),
        .CO({velocity1_carry__7_i_10_n_0,velocity1_carry__7_i_10_n_1,velocity1_carry__7_i_10_n_2,velocity1_carry__7_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[67:64]),
        .S({velocity1_carry__7_i_15_n_0,velocity1_carry__7_i_16_n_0,velocity1_carry__7_i_17_n_0,velocity1_carry__7_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_12
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_13
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_14
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_15
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_16
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_17
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__7_i_18
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__7_i_18_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__7_i_2
       (.I0(velocity2[68]),
        .I1(velocity2[69]),
        .O(velocity1_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__7_i_3
       (.I0(velocity2[66]),
        .I1(velocity2[67]),
        .O(velocity1_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__7_i_4
       (.I0(velocity2[64]),
        .I1(velocity2[65]),
        .O(velocity1_carry__7_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__7_i_5
       (.I0(velocity2[70]),
        .I1(velocity2[71]),
        .O(velocity1_carry__7_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__7_i_6
       (.I0(velocity2[68]),
        .I1(velocity2[69]),
        .O(velocity1_carry__7_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__7_i_7
       (.I0(velocity2[66]),
        .I1(velocity2[67]),
        .O(velocity1_carry__7_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__7_i_8
       (.I0(velocity2[64]),
        .I1(velocity2[65]),
        .O(velocity1_carry__7_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__7_i_9
       (.CI(velocity1_carry__7_i_10_n_0),
        .CO({velocity1_carry__7_i_9_n_0,velocity1_carry__7_i_9_n_1,velocity1_carry__7_i_9_n_2,velocity1_carry__7_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] }),
        .O(velocity2[71:68]),
        .S({velocity1_carry__7_i_11_n_0,velocity1_carry__7_i_12_n_0,velocity1_carry__7_i_13_n_0,velocity1_carry__7_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry__8
       (.CI(velocity1_carry__7_n_0),
        .CO({NLW_velocity1_carry__8_CO_UNCONNECTED[3:1],velocity1_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,velocity1_carry__8_i_1_n_0}),
        .O(NLW_velocity1_carry__8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,velocity1_carry__8_i_2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry__8_i_1
       (.I0(velocity2[72]),
        .I1(velocity2[73]),
        .O(velocity1_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry__8_i_2
       (.I0(velocity2[72]),
        .I1(velocity2[73]),
        .O(velocity1_carry__8_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry__8_i_3
       (.CI(velocity1_carry__7_i_9_n_0),
        .CO({NLW_velocity1_carry__8_i_3_CO_UNCONNECTED[3:1],velocity1_carry__8_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\interim_velocity_reg_n_0_[72] }),
        .O({NLW_velocity1_carry__8_i_3_O_UNCONNECTED[3:2],velocity2[73:72]}),
        .S({1'b0,1'b0,velocity1_carry__8_i_4_n_0,velocity1_carry__8_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__8_i_4
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__8_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__8_i_5
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(velocity1_carry__8_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry_i_1
       (.I0(velocity2[6]),
        .I1(velocity2[7]),
        .O(velocity1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_10
       (.I0(\interim_velocity_reg_n_0_[7] ),
        .I1(output_velocity_0[7]),
        .O(velocity1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_11
       (.I0(\interim_velocity_reg_n_0_[6] ),
        .I1(output_velocity_0[6]),
        .O(velocity1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_12
       (.I0(\interim_velocity_reg_n_0_[5] ),
        .I1(output_velocity_0[5]),
        .O(velocity1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_13
       (.I0(\interim_velocity_reg_n_0_[4] ),
        .I1(output_velocity_0[4]),
        .O(velocity1_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_14
       (.I0(\interim_velocity_reg_n_0_[3] ),
        .I1(output_velocity_0[3]),
        .O(velocity1_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_15
       (.I0(\interim_velocity_reg_n_0_[2] ),
        .I1(output_velocity_0[2]),
        .O(velocity1_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_16
       (.I0(\interim_velocity_reg_n_0_[1] ),
        .I1(output_velocity_0[1]),
        .O(velocity1_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    velocity1_carry_i_17
       (.I0(\interim_velocity_reg_n_0_[0] ),
        .I1(output_velocity_0[0]),
        .O(velocity1_carry_i_17_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry_i_2
       (.CI(velocity1_carry_i_9_n_0),
        .CO({velocity1_carry_i_2_n_0,velocity1_carry_i_2_n_1,velocity1_carry_i_2_n_2,velocity1_carry_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({\interim_velocity_reg_n_0_[7] ,\interim_velocity_reg_n_0_[6] ,\interim_velocity_reg_n_0_[5] ,\interim_velocity_reg_n_0_[4] }),
        .O(velocity2[7:4]),
        .S({velocity1_carry_i_10_n_0,velocity1_carry_i_11_n_0,velocity1_carry_i_12_n_0,velocity1_carry_i_13_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry_i_3
       (.I0(velocity2[2]),
        .I1(velocity2[3]),
        .O(velocity1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    velocity1_carry_i_4
       (.I0(velocity2[0]),
        .I1(velocity2[1]),
        .O(velocity1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry_i_5
       (.I0(velocity2[6]),
        .I1(velocity2[7]),
        .O(velocity1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    velocity1_carry_i_6
       (.I0(velocity2[4]),
        .I1(velocity2[5]),
        .O(velocity1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry_i_7
       (.I0(velocity2[2]),
        .I1(velocity2[3]),
        .O(velocity1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    velocity1_carry_i_8
       (.I0(velocity2[0]),
        .I1(velocity2[1]),
        .O(velocity1_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry_i_9
       (.CI(1'b0),
        .CO({velocity1_carry_i_9_n_0,velocity1_carry_i_9_n_1,velocity1_carry_i_9_n_2,velocity1_carry_i_9_n_3}),
        .CYINIT(1'b1),
        .DI({\interim_velocity_reg_n_0_[3] ,\interim_velocity_reg_n_0_[2] ,\interim_velocity_reg_n_0_[1] ,\interim_velocity_reg_n_0_[0] }),
        .O(velocity2[3:0]),
        .S({velocity1_carry_i_14_n_0,velocity1_carry_i_15_n_0,velocity1_carry_i_16_n_0,velocity1_carry_i_17_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\velocity1_inferred__0/i__carry_n_0 ,\velocity1_inferred__0/i__carry_n_1 ,\velocity1_inferred__0/i__carry_n_2 ,\velocity1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_6,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__0 
       (.CI(\velocity1_inferred__0/i__carry_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__0_n_0 ,\velocity1_inferred__0/i__carry__0_n_1 ,\velocity1_inferred__0/i__carry__0_n_2 ,\velocity1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__1 
       (.CI(\velocity1_inferred__0/i__carry__0_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__1_n_0 ,\velocity1_inferred__0/i__carry__1_n_1 ,\velocity1_inferred__0/i__carry__1_n_2 ,\velocity1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__2 
       (.CI(\velocity1_inferred__0/i__carry__1_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__2_n_0 ,\velocity1_inferred__0/i__carry__2_n_1 ,\velocity1_inferred__0/i__carry__2_n_2 ,\velocity1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__3 
       (.CI(\velocity1_inferred__0/i__carry__2_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__3_n_0 ,\velocity1_inferred__0/i__carry__3_n_1 ,\velocity1_inferred__0/i__carry__3_n_2 ,\velocity1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__3_O_UNCONNECTED [3:0]),
        .S({i__carry__3_i_5_n_0,i__carry__3_i_6_n_0,i__carry__3_i_7_n_0,i__carry__3_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__4 
       (.CI(\velocity1_inferred__0/i__carry__3_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__4_n_0 ,\velocity1_inferred__0/i__carry__4_n_1 ,\velocity1_inferred__0/i__carry__4_n_2 ,\velocity1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__4_O_UNCONNECTED [3:0]),
        .S({i__carry__4_i_5_n_0,i__carry__4_i_6_n_0,i__carry__4_i_7_n_0,i__carry__4_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__5 
       (.CI(\velocity1_inferred__0/i__carry__4_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__5_n_0 ,\velocity1_inferred__0/i__carry__5_n_1 ,\velocity1_inferred__0/i__carry__5_n_2 ,\velocity1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__5_O_UNCONNECTED [3:0]),
        .S({i__carry__5_i_5_n_0,i__carry__5_i_6_n_0,i__carry__5_i_7_n_0,i__carry__5_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__6 
       (.CI(\velocity1_inferred__0/i__carry__5_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__6_n_0 ,\velocity1_inferred__0/i__carry__6_n_1 ,\velocity1_inferred__0/i__carry__6_n_2 ,\velocity1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__6_O_UNCONNECTED [3:0]),
        .S({i__carry__6_i_5_n_0,i__carry__6_i_6_n_0,i__carry__6_i_7_n_0,i__carry__6_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__7 
       (.CI(\velocity1_inferred__0/i__carry__6_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__7_n_0 ,\velocity1_inferred__0/i__carry__7_n_1 ,\velocity1_inferred__0/i__carry__7_n_2 ,\velocity1_inferred__0/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__7_i_1_n_0,i__carry__7_i_2_n_0,i__carry__7_i_3_n_0,i__carry__7_i_4_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__7_O_UNCONNECTED [3:0]),
        .S({i__carry__7_i_5_n_0,i__carry__7_i_6_n_0,i__carry__7_i_7_n_0,i__carry__7_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__8 
       (.CI(\velocity1_inferred__0/i__carry__7_n_0 ),
        .CO({\NLW_velocity1_inferred__0/i__carry__8_CO_UNCONNECTED [3:1],\velocity1_inferred__0/i__carry__8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__8_i_1_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry__8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__8_i_2_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[0] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[0] ),
        .Q(output_velocity_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[10] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[10] ),
        .Q(output_velocity_0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[11] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[11] ),
        .Q(output_velocity_0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[12] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[12] ),
        .Q(output_velocity_0[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[13] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[13] ),
        .Q(output_velocity_0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[14] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[14] ),
        .Q(output_velocity_0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[15] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[15] ),
        .Q(output_velocity_0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[16] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[16] ),
        .Q(output_velocity_0[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[17] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[17] ),
        .Q(output_velocity_0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[18] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[18] ),
        .Q(output_velocity_0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[19] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[19] ),
        .Q(output_velocity_0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[1] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[1] ),
        .Q(output_velocity_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[20] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[20] ),
        .Q(output_velocity_0[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[21] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[21] ),
        .Q(output_velocity_0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[22] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[22] ),
        .Q(output_velocity_0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[23] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[23] ),
        .Q(output_velocity_0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[24] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[24] ),
        .Q(output_velocity_0[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[25] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[25] ),
        .Q(output_velocity_0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[26] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[26] ),
        .Q(output_velocity_0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[27] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[27] ),
        .Q(output_velocity_0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[28] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[28] ),
        .Q(output_velocity_0[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[29] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[29] ),
        .Q(output_velocity_0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[2] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[2] ),
        .Q(output_velocity_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[30] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[30] ),
        .Q(output_velocity_0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[31] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[72] ),
        .Q(output_velocity_0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[3] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[3] ),
        .Q(output_velocity_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[4] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[4] ),
        .Q(output_velocity_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[5] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[5] ),
        .Q(output_velocity_0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[6] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[6] ),
        .Q(output_velocity_0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[7] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[7] ),
        .Q(output_velocity_0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[8] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[8] ),
        .Q(output_velocity_0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \velocity_reg[9] 
       (.C(sys_clk),
        .CE(\nv_flag[0]_i_1_n_0 ),
        .D(\interim_velocity_reg_n_0_[9] ),
        .Q(output_velocity_0[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t
   (output_velocity_0,
    new_velocity_available_0,
    angle_0,
    new_target_angle_available_0,
    target_angle_0,
    sys_clk,
    ki_0,
    kd_0,
    kp_0);
  output [31:0]output_velocity_0;
  output [0:0]new_velocity_available_0;
  input [31:0]angle_0;
  input [0:0]new_target_angle_available_0;
  input [31:0]target_angle_0;
  input [0:0]sys_clk;
  input [7:0]ki_0;
  input [7:0]kd_0;
  input [7:0]kp_0;

  wire [31:0]angle_0;
  wire [7:0]kd_0;
  wire [7:0]ki_0;
  wire [7:0]kp_0;
  wire [0:0]new_target_angle_available_0;
  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire [0:0]sys_clk;
  wire [31:0]target_angle_0;

  (* X_CORE_INFO = "pid_calc,Vivado 2021.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_pid_calc_0_0 pid_calc_0
       (.Q(output_velocity_0),
        .angle_0(angle_0),
        .kd_0(kd_0),
        .ki_0(ki_0),
        .kp_0(kp_0),
        .new_target_angle_available_0(new_target_angle_available_0),
        .new_velocity_available_0(new_velocity_available_0),
        .sys_clk(sys_clk),
        .target_angle_0(target_angle_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_pid_calc_0_0
   (Q,
    new_velocity_available_0,
    angle_0,
    new_target_angle_available_0,
    target_angle_0,
    sys_clk,
    ki_0,
    kd_0,
    kp_0);
  output [31:0]Q;
  output [0:0]new_velocity_available_0;
  input [31:0]angle_0;
  input [0:0]new_target_angle_available_0;
  input [31:0]target_angle_0;
  input [0:0]sys_clk;
  input [7:0]ki_0;
  input [7:0]kd_0;
  input [7:0]kp_0;

  wire [31:0]Q;
  wire [31:0]angle_0;
  wire [7:0]kd_0;
  wire [7:0]ki_0;
  wire [7:0]kp_0;
  wire [0:0]new_target_angle_available_0;
  wire [0:0]new_velocity_available_0;
  wire [0:0]sys_clk;
  wire [31:0]target_angle_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_calc inst
       (.angle_0(angle_0),
        .kd_0(kd_0),
        .ki_0(ki_0),
        .kp_0(kp_0),
        .new_target_angle_available_0(new_target_angle_available_0),
        .new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(Q),
        .sys_clk(sys_clk),
        .target_angle_0(target_angle_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_wrapper
   (output_velocity_0,
    new_velocity_available_0,
    angle_0,
    new_target_angle_available_0,
    target_angle_0,
    sys_clk,
    ki_0,
    kd_0,
    kp_0);
  output [31:0]output_velocity_0;
  output [0:0]new_velocity_available_0;
  input [31:0]angle_0;
  input [0:0]new_target_angle_available_0;
  input [31:0]target_angle_0;
  input [0:0]sys_clk;
  input [7:0]ki_0;
  input [7:0]kd_0;
  input [7:0]kp_0;

  wire [31:0]angle_0;
  wire [7:0]kd_0;
  wire [7:0]ki_0;
  wire [7:0]kp_0;
  wire [0:0]new_target_angle_available_0;
  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire [0:0]sys_clk;
  wire [31:0]target_angle_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t pid_compressed_t_i
       (.angle_0(angle_0),
        .kd_0(kd_0),
        .ki_0(ki_0),
        .kp_0(kp_0),
        .new_target_angle_available_0(new_target_angle_available_0),
        .new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(output_velocity_0),
        .sys_clk(sys_clk),
        .target_angle_0(target_angle_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
