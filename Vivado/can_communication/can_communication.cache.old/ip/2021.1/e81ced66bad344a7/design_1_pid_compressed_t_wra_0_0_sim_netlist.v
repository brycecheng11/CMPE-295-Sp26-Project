// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Oct  1 14:47:51 2026
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

  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire [0:0]sys_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_wrapper inst
       (.new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(output_velocity_0),
        .sys_clk(sys_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_calc
   (output_velocity_0,
    new_velocity_available_0,
    sys_clk);
  output [31:0]output_velocity_0;
  output [0:0]new_velocity_available_0;
  input [0:0]sys_clk;

  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_5_n_1;
  wire i__carry__0_i_5_n_2;
  wire i__carry__0_i_5_n_3;
  wire i__carry__0_i_5_n_4;
  wire i__carry__0_i_5_n_5;
  wire i__carry__0_i_5_n_6;
  wire i__carry__0_i_5_n_7;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_6_n_1;
  wire i__carry__0_i_6_n_2;
  wire i__carry__0_i_6_n_3;
  wire i__carry__0_i_6_n_4;
  wire i__carry__0_i_6_n_5;
  wire i__carry__0_i_6_n_6;
  wire i__carry__0_i_6_n_7;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_10_n_0;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_12_n_0;
  wire i__carry__1_i_13_n_0;
  wire i__carry__1_i_14_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_5_n_1;
  wire i__carry__1_i_5_n_2;
  wire i__carry__1_i_5_n_3;
  wire i__carry__1_i_5_n_4;
  wire i__carry__1_i_5_n_5;
  wire i__carry__1_i_5_n_6;
  wire i__carry__1_i_5_n_7;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_6_n_1;
  wire i__carry__1_i_6_n_2;
  wire i__carry__1_i_6_n_3;
  wire i__carry__1_i_6_n_4;
  wire i__carry__1_i_6_n_5;
  wire i__carry__1_i_6_n_6;
  wire i__carry__1_i_6_n_7;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__2_i_10_n_0;
  wire i__carry__2_i_11_n_0;
  wire i__carry__2_i_12_n_0;
  wire i__carry__2_i_13_n_0;
  wire i__carry__2_i_14_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_5_n_1;
  wire i__carry__2_i_5_n_2;
  wire i__carry__2_i_5_n_3;
  wire i__carry__2_i_5_n_4;
  wire i__carry__2_i_5_n_5;
  wire i__carry__2_i_5_n_6;
  wire i__carry__2_i_5_n_7;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_6_n_1;
  wire i__carry__2_i_6_n_2;
  wire i__carry__2_i_6_n_3;
  wire i__carry__2_i_6_n_4;
  wire i__carry__2_i_6_n_5;
  wire i__carry__2_i_6_n_6;
  wire i__carry__2_i_6_n_7;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__2_i_9_n_0;
  wire i__carry__3_i_10_n_0;
  wire i__carry__3_i_11_n_0;
  wire i__carry__3_i_12_n_0;
  wire i__carry__3_i_13_n_0;
  wire i__carry__3_i_14_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_5_n_1;
  wire i__carry__3_i_5_n_2;
  wire i__carry__3_i_5_n_3;
  wire i__carry__3_i_5_n_4;
  wire i__carry__3_i_5_n_5;
  wire i__carry__3_i_5_n_6;
  wire i__carry__3_i_5_n_7;
  wire i__carry__3_i_6_n_0;
  wire i__carry__3_i_6_n_1;
  wire i__carry__3_i_6_n_2;
  wire i__carry__3_i_6_n_3;
  wire i__carry__3_i_6_n_4;
  wire i__carry__3_i_6_n_5;
  wire i__carry__3_i_6_n_6;
  wire i__carry__3_i_6_n_7;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_8_n_0;
  wire i__carry__3_i_9_n_0;
  wire i__carry__4_i_10_n_0;
  wire i__carry__4_i_11_n_0;
  wire i__carry__4_i_12_n_0;
  wire i__carry__4_i_13_n_0;
  wire i__carry__4_i_14_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__4_i_5_n_0;
  wire i__carry__4_i_5_n_1;
  wire i__carry__4_i_5_n_2;
  wire i__carry__4_i_5_n_3;
  wire i__carry__4_i_5_n_4;
  wire i__carry__4_i_5_n_5;
  wire i__carry__4_i_5_n_6;
  wire i__carry__4_i_5_n_7;
  wire i__carry__4_i_6_n_0;
  wire i__carry__4_i_6_n_1;
  wire i__carry__4_i_6_n_2;
  wire i__carry__4_i_6_n_3;
  wire i__carry__4_i_6_n_4;
  wire i__carry__4_i_6_n_5;
  wire i__carry__4_i_6_n_6;
  wire i__carry__4_i_6_n_7;
  wire i__carry__4_i_7_n_0;
  wire i__carry__4_i_8_n_0;
  wire i__carry__4_i_9_n_0;
  wire i__carry__5_i_10_n_0;
  wire i__carry__5_i_11_n_0;
  wire i__carry__5_i_12_n_0;
  wire i__carry__5_i_13_n_0;
  wire i__carry__5_i_14_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__5_i_5_n_0;
  wire i__carry__5_i_5_n_1;
  wire i__carry__5_i_5_n_2;
  wire i__carry__5_i_5_n_3;
  wire i__carry__5_i_5_n_4;
  wire i__carry__5_i_5_n_5;
  wire i__carry__5_i_5_n_6;
  wire i__carry__5_i_5_n_7;
  wire i__carry__5_i_6_n_0;
  wire i__carry__5_i_6_n_1;
  wire i__carry__5_i_6_n_2;
  wire i__carry__5_i_6_n_3;
  wire i__carry__5_i_6_n_4;
  wire i__carry__5_i_6_n_5;
  wire i__carry__5_i_6_n_6;
  wire i__carry__5_i_6_n_7;
  wire i__carry__5_i_7_n_0;
  wire i__carry__5_i_8_n_0;
  wire i__carry__5_i_9_n_0;
  wire i__carry__6_i_10_n_0;
  wire i__carry__6_i_11_n_0;
  wire i__carry__6_i_12_n_0;
  wire i__carry__6_i_13_n_0;
  wire i__carry__6_i_14_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__6_i_5_n_0;
  wire i__carry__6_i_5_n_1;
  wire i__carry__6_i_5_n_2;
  wire i__carry__6_i_5_n_3;
  wire i__carry__6_i_5_n_4;
  wire i__carry__6_i_5_n_5;
  wire i__carry__6_i_5_n_6;
  wire i__carry__6_i_5_n_7;
  wire i__carry__6_i_6_n_0;
  wire i__carry__6_i_6_n_1;
  wire i__carry__6_i_6_n_2;
  wire i__carry__6_i_6_n_3;
  wire i__carry__6_i_6_n_4;
  wire i__carry__6_i_6_n_5;
  wire i__carry__6_i_6_n_6;
  wire i__carry__6_i_6_n_7;
  wire i__carry__6_i_7_n_0;
  wire i__carry__6_i_8_n_0;
  wire i__carry__6_i_9_n_0;
  wire i__carry__7_i_10_n_0;
  wire i__carry__7_i_11_n_0;
  wire i__carry__7_i_1_n_0;
  wire i__carry__7_i_2_n_0;
  wire i__carry__7_i_3_n_0;
  wire i__carry__7_i_4_n_3;
  wire i__carry__7_i_4_n_6;
  wire i__carry__7_i_4_n_7;
  wire i__carry__7_i_5_n_0;
  wire i__carry__7_i_5_n_1;
  wire i__carry__7_i_5_n_2;
  wire i__carry__7_i_5_n_3;
  wire i__carry__7_i_5_n_4;
  wire i__carry__7_i_5_n_5;
  wire i__carry__7_i_5_n_6;
  wire i__carry__7_i_5_n_7;
  wire i__carry__7_i_6_n_0;
  wire i__carry__7_i_7_n_0;
  wire i__carry__7_i_8_n_0;
  wire i__carry__7_i_9_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_6_n_1;
  wire i__carry_i_6_n_2;
  wire i__carry_i_6_n_3;
  wire i__carry_i_6_n_4;
  wire i__carry_i_6_n_5;
  wire i__carry_i_6_n_6;
  wire i__carry_i_6_n_7;
  wire i__carry_i_7_n_0;
  wire i__carry_i_7_n_1;
  wire i__carry_i_7_n_2;
  wire i__carry_i_7_n_3;
  wire i__carry_i_7_n_4;
  wire i__carry_i_7_n_5;
  wire i__carry_i_7_n_6;
  wire i__carry_i_7_n_7;
  wire i__carry_i_8_n_0;
  wire i__carry_i_8_n_1;
  wire i__carry_i_8_n_2;
  wire i__carry_i_8_n_3;
  wire i__carry_i_9_n_0;
  wire interim_velocity1__0_i_10_n_0;
  wire interim_velocity1__0_i_11_n_0;
  wire interim_velocity1__0_i_12_n_0;
  wire interim_velocity1__0_i_13_n_0;
  wire interim_velocity1__0_i_14_n_0;
  wire interim_velocity1__0_i_1_n_0;
  wire interim_velocity1__0_i_1_n_1;
  wire interim_velocity1__0_i_1_n_2;
  wire interim_velocity1__0_i_1_n_3;
  wire interim_velocity1__0_i_1_n_4;
  wire interim_velocity1__0_i_1_n_5;
  wire interim_velocity1__0_i_1_n_6;
  wire interim_velocity1__0_i_1_n_7;
  wire interim_velocity1__0_i_2_n_0;
  wire interim_velocity1__0_i_2_n_1;
  wire interim_velocity1__0_i_2_n_2;
  wire interim_velocity1__0_i_2_n_3;
  wire interim_velocity1__0_i_2_n_4;
  wire interim_velocity1__0_i_2_n_5;
  wire interim_velocity1__0_i_2_n_6;
  wire interim_velocity1__0_i_2_n_7;
  wire interim_velocity1__0_i_3_n_0;
  wire interim_velocity1__0_i_4_n_0;
  wire interim_velocity1__0_i_5_n_0;
  wire interim_velocity1__0_i_6_n_0;
  wire interim_velocity1__0_i_7_n_0;
  wire interim_velocity1__0_i_8_n_0;
  wire interim_velocity1__0_i_9_n_0;
  wire interim_velocity1__0_n_100;
  wire interim_velocity1__0_n_101;
  wire interim_velocity1__0_n_102;
  wire interim_velocity1__0_n_103;
  wire interim_velocity1__0_n_104;
  wire interim_velocity1__0_n_105;
  wire interim_velocity1__0_n_106;
  wire interim_velocity1__0_n_107;
  wire interim_velocity1__0_n_108;
  wire interim_velocity1__0_n_109;
  wire interim_velocity1__0_n_110;
  wire interim_velocity1__0_n_111;
  wire interim_velocity1__0_n_112;
  wire interim_velocity1__0_n_113;
  wire interim_velocity1__0_n_114;
  wire interim_velocity1__0_n_115;
  wire interim_velocity1__0_n_116;
  wire interim_velocity1__0_n_117;
  wire interim_velocity1__0_n_118;
  wire interim_velocity1__0_n_119;
  wire interim_velocity1__0_n_120;
  wire interim_velocity1__0_n_121;
  wire interim_velocity1__0_n_122;
  wire interim_velocity1__0_n_123;
  wire interim_velocity1__0_n_124;
  wire interim_velocity1__0_n_125;
  wire interim_velocity1__0_n_126;
  wire interim_velocity1__0_n_127;
  wire interim_velocity1__0_n_128;
  wire interim_velocity1__0_n_129;
  wire interim_velocity1__0_n_130;
  wire interim_velocity1__0_n_131;
  wire interim_velocity1__0_n_132;
  wire interim_velocity1__0_n_133;
  wire interim_velocity1__0_n_134;
  wire interim_velocity1__0_n_135;
  wire interim_velocity1__0_n_136;
  wire interim_velocity1__0_n_137;
  wire interim_velocity1__0_n_138;
  wire interim_velocity1__0_n_139;
  wire interim_velocity1__0_n_140;
  wire interim_velocity1__0_n_141;
  wire interim_velocity1__0_n_142;
  wire interim_velocity1__0_n_143;
  wire interim_velocity1__0_n_144;
  wire interim_velocity1__0_n_145;
  wire interim_velocity1__0_n_146;
  wire interim_velocity1__0_n_147;
  wire interim_velocity1__0_n_148;
  wire interim_velocity1__0_n_149;
  wire interim_velocity1__0_n_150;
  wire interim_velocity1__0_n_151;
  wire interim_velocity1__0_n_152;
  wire interim_velocity1__0_n_153;
  wire interim_velocity1__0_n_24;
  wire interim_velocity1__0_n_25;
  wire interim_velocity1__0_n_26;
  wire interim_velocity1__0_n_27;
  wire interim_velocity1__0_n_28;
  wire interim_velocity1__0_n_29;
  wire interim_velocity1__0_n_30;
  wire interim_velocity1__0_n_31;
  wire interim_velocity1__0_n_32;
  wire interim_velocity1__0_n_33;
  wire interim_velocity1__0_n_34;
  wire interim_velocity1__0_n_35;
  wire interim_velocity1__0_n_36;
  wire interim_velocity1__0_n_37;
  wire interim_velocity1__0_n_38;
  wire interim_velocity1__0_n_39;
  wire interim_velocity1__0_n_40;
  wire interim_velocity1__0_n_41;
  wire interim_velocity1__0_n_42;
  wire interim_velocity1__0_n_43;
  wire interim_velocity1__0_n_44;
  wire interim_velocity1__0_n_45;
  wire interim_velocity1__0_n_46;
  wire interim_velocity1__0_n_47;
  wire interim_velocity1__0_n_48;
  wire interim_velocity1__0_n_49;
  wire interim_velocity1__0_n_50;
  wire interim_velocity1__0_n_51;
  wire interim_velocity1__0_n_52;
  wire interim_velocity1__0_n_53;
  wire interim_velocity1__0_n_58;
  wire interim_velocity1__0_n_59;
  wire interim_velocity1__0_n_60;
  wire interim_velocity1__0_n_61;
  wire interim_velocity1__0_n_62;
  wire interim_velocity1__0_n_63;
  wire interim_velocity1__0_n_64;
  wire interim_velocity1__0_n_65;
  wire interim_velocity1__0_n_66;
  wire interim_velocity1__0_n_67;
  wire interim_velocity1__0_n_68;
  wire interim_velocity1__0_n_69;
  wire interim_velocity1__0_n_70;
  wire interim_velocity1__0_n_71;
  wire interim_velocity1__0_n_72;
  wire interim_velocity1__0_n_73;
  wire interim_velocity1__0_n_74;
  wire interim_velocity1__0_n_75;
  wire interim_velocity1__0_n_76;
  wire interim_velocity1__0_n_77;
  wire interim_velocity1__0_n_78;
  wire interim_velocity1__0_n_79;
  wire interim_velocity1__0_n_80;
  wire interim_velocity1__0_n_81;
  wire interim_velocity1__0_n_82;
  wire interim_velocity1__0_n_83;
  wire interim_velocity1__0_n_84;
  wire interim_velocity1__0_n_85;
  wire interim_velocity1__0_n_86;
  wire interim_velocity1__0_n_87;
  wire interim_velocity1__0_n_88;
  wire interim_velocity1__0_n_89;
  wire interim_velocity1__0_n_90;
  wire interim_velocity1__0_n_91;
  wire interim_velocity1__0_n_92;
  wire interim_velocity1__0_n_93;
  wire interim_velocity1__0_n_94;
  wire interim_velocity1__0_n_95;
  wire interim_velocity1__0_n_96;
  wire interim_velocity1__0_n_97;
  wire interim_velocity1__0_n_98;
  wire interim_velocity1__0_n_99;
  wire interim_velocity1__1_n_100;
  wire interim_velocity1__1_n_101;
  wire interim_velocity1__1_n_102;
  wire interim_velocity1__1_n_103;
  wire interim_velocity1__1_n_104;
  wire interim_velocity1__1_n_105;
  wire interim_velocity1__1_n_58;
  wire interim_velocity1__1_n_59;
  wire interim_velocity1__1_n_60;
  wire interim_velocity1__1_n_61;
  wire interim_velocity1__1_n_62;
  wire interim_velocity1__1_n_63;
  wire interim_velocity1__1_n_64;
  wire interim_velocity1__1_n_65;
  wire interim_velocity1__1_n_66;
  wire interim_velocity1__1_n_67;
  wire interim_velocity1__1_n_68;
  wire interim_velocity1__1_n_69;
  wire interim_velocity1__1_n_70;
  wire interim_velocity1__1_n_71;
  wire interim_velocity1__1_n_72;
  wire interim_velocity1__1_n_73;
  wire interim_velocity1__1_n_74;
  wire interim_velocity1__1_n_75;
  wire interim_velocity1__1_n_76;
  wire interim_velocity1__1_n_77;
  wire interim_velocity1__1_n_78;
  wire interim_velocity1__1_n_79;
  wire interim_velocity1__1_n_80;
  wire interim_velocity1__1_n_81;
  wire interim_velocity1__1_n_82;
  wire interim_velocity1__1_n_83;
  wire interim_velocity1__1_n_84;
  wire interim_velocity1__1_n_85;
  wire interim_velocity1__1_n_86;
  wire interim_velocity1__1_n_87;
  wire interim_velocity1__1_n_88;
  wire interim_velocity1__1_n_89;
  wire interim_velocity1__1_n_90;
  wire interim_velocity1__1_n_91;
  wire interim_velocity1__1_n_92;
  wire interim_velocity1__1_n_93;
  wire interim_velocity1__1_n_94;
  wire interim_velocity1__1_n_95;
  wire interim_velocity1__1_n_96;
  wire interim_velocity1__1_n_97;
  wire interim_velocity1__1_n_98;
  wire interim_velocity1__1_n_99;
  wire interim_velocity1__2_i_10_n_0;
  wire interim_velocity1__2_i_11_n_0;
  wire interim_velocity1__2_i_12_n_0;
  wire interim_velocity1__2_i_13_n_0;
  wire interim_velocity1__2_i_14_n_0;
  wire interim_velocity1__2_i_15_n_0;
  wire interim_velocity1__2_i_16_n_0;
  wire interim_velocity1__2_i_17_n_0;
  wire interim_velocity1__2_i_18_n_0;
  wire interim_velocity1__2_i_19_n_0;
  wire interim_velocity1__2_i_1_n_0;
  wire interim_velocity1__2_i_1_n_1;
  wire interim_velocity1__2_i_1_n_2;
  wire interim_velocity1__2_i_1_n_3;
  wire interim_velocity1__2_i_1_n_4;
  wire interim_velocity1__2_i_1_n_5;
  wire interim_velocity1__2_i_1_n_6;
  wire interim_velocity1__2_i_1_n_7;
  wire interim_velocity1__2_i_2_n_0;
  wire interim_velocity1__2_i_2_n_1;
  wire interim_velocity1__2_i_2_n_2;
  wire interim_velocity1__2_i_2_n_3;
  wire interim_velocity1__2_i_2_n_4;
  wire interim_velocity1__2_i_2_n_5;
  wire interim_velocity1__2_i_2_n_6;
  wire interim_velocity1__2_i_2_n_7;
  wire interim_velocity1__2_i_3_n_0;
  wire interim_velocity1__2_i_3_n_1;
  wire interim_velocity1__2_i_3_n_2;
  wire interim_velocity1__2_i_3_n_3;
  wire interim_velocity1__2_i_3_n_4;
  wire interim_velocity1__2_i_3_n_5;
  wire interim_velocity1__2_i_3_n_6;
  wire interim_velocity1__2_i_3_n_7;
  wire interim_velocity1__2_i_4_n_0;
  wire interim_velocity1__2_i_4_n_1;
  wire interim_velocity1__2_i_4_n_2;
  wire interim_velocity1__2_i_4_n_3;
  wire interim_velocity1__2_i_4_n_4;
  wire interim_velocity1__2_i_4_n_5;
  wire interim_velocity1__2_i_4_n_6;
  wire interim_velocity1__2_i_4_n_7;
  wire interim_velocity1__2_i_5_n_0;
  wire interim_velocity1__2_i_6_n_0;
  wire interim_velocity1__2_i_7_n_0;
  wire interim_velocity1__2_i_8_n_0;
  wire interim_velocity1__2_i_9_n_0;
  wire interim_velocity1__2_n_100;
  wire interim_velocity1__2_n_101;
  wire interim_velocity1__2_n_102;
  wire interim_velocity1__2_n_103;
  wire interim_velocity1__2_n_104;
  wire interim_velocity1__2_n_105;
  wire interim_velocity1__2_n_106;
  wire interim_velocity1__2_n_107;
  wire interim_velocity1__2_n_108;
  wire interim_velocity1__2_n_109;
  wire interim_velocity1__2_n_110;
  wire interim_velocity1__2_n_111;
  wire interim_velocity1__2_n_112;
  wire interim_velocity1__2_n_113;
  wire interim_velocity1__2_n_114;
  wire interim_velocity1__2_n_115;
  wire interim_velocity1__2_n_116;
  wire interim_velocity1__2_n_117;
  wire interim_velocity1__2_n_118;
  wire interim_velocity1__2_n_119;
  wire interim_velocity1__2_n_120;
  wire interim_velocity1__2_n_121;
  wire interim_velocity1__2_n_122;
  wire interim_velocity1__2_n_123;
  wire interim_velocity1__2_n_124;
  wire interim_velocity1__2_n_125;
  wire interim_velocity1__2_n_126;
  wire interim_velocity1__2_n_127;
  wire interim_velocity1__2_n_128;
  wire interim_velocity1__2_n_129;
  wire interim_velocity1__2_n_130;
  wire interim_velocity1__2_n_131;
  wire interim_velocity1__2_n_132;
  wire interim_velocity1__2_n_133;
  wire interim_velocity1__2_n_134;
  wire interim_velocity1__2_n_135;
  wire interim_velocity1__2_n_136;
  wire interim_velocity1__2_n_137;
  wire interim_velocity1__2_n_138;
  wire interim_velocity1__2_n_139;
  wire interim_velocity1__2_n_140;
  wire interim_velocity1__2_n_141;
  wire interim_velocity1__2_n_142;
  wire interim_velocity1__2_n_143;
  wire interim_velocity1__2_n_144;
  wire interim_velocity1__2_n_145;
  wire interim_velocity1__2_n_146;
  wire interim_velocity1__2_n_147;
  wire interim_velocity1__2_n_148;
  wire interim_velocity1__2_n_149;
  wire interim_velocity1__2_n_150;
  wire interim_velocity1__2_n_151;
  wire interim_velocity1__2_n_152;
  wire interim_velocity1__2_n_153;
  wire interim_velocity1__2_n_24;
  wire interim_velocity1__2_n_25;
  wire interim_velocity1__2_n_26;
  wire interim_velocity1__2_n_27;
  wire interim_velocity1__2_n_28;
  wire interim_velocity1__2_n_29;
  wire interim_velocity1__2_n_30;
  wire interim_velocity1__2_n_31;
  wire interim_velocity1__2_n_32;
  wire interim_velocity1__2_n_33;
  wire interim_velocity1__2_n_34;
  wire interim_velocity1__2_n_35;
  wire interim_velocity1__2_n_36;
  wire interim_velocity1__2_n_37;
  wire interim_velocity1__2_n_38;
  wire interim_velocity1__2_n_39;
  wire interim_velocity1__2_n_40;
  wire interim_velocity1__2_n_41;
  wire interim_velocity1__2_n_42;
  wire interim_velocity1__2_n_43;
  wire interim_velocity1__2_n_44;
  wire interim_velocity1__2_n_45;
  wire interim_velocity1__2_n_46;
  wire interim_velocity1__2_n_47;
  wire interim_velocity1__2_n_48;
  wire interim_velocity1__2_n_49;
  wire interim_velocity1__2_n_50;
  wire interim_velocity1__2_n_51;
  wire interim_velocity1__2_n_52;
  wire interim_velocity1__2_n_53;
  wire interim_velocity1__2_n_58;
  wire interim_velocity1__2_n_59;
  wire interim_velocity1__2_n_60;
  wire interim_velocity1__2_n_61;
  wire interim_velocity1__2_n_62;
  wire interim_velocity1__2_n_63;
  wire interim_velocity1__2_n_64;
  wire interim_velocity1__2_n_65;
  wire interim_velocity1__2_n_66;
  wire interim_velocity1__2_n_67;
  wire interim_velocity1__2_n_68;
  wire interim_velocity1__2_n_69;
  wire interim_velocity1__2_n_70;
  wire interim_velocity1__2_n_71;
  wire interim_velocity1__2_n_72;
  wire interim_velocity1__2_n_73;
  wire interim_velocity1__2_n_74;
  wire interim_velocity1__2_n_75;
  wire interim_velocity1__2_n_76;
  wire interim_velocity1__2_n_77;
  wire interim_velocity1__2_n_78;
  wire interim_velocity1__2_n_79;
  wire interim_velocity1__2_n_80;
  wire interim_velocity1__2_n_81;
  wire interim_velocity1__2_n_82;
  wire interim_velocity1__2_n_83;
  wire interim_velocity1__2_n_84;
  wire interim_velocity1__2_n_85;
  wire interim_velocity1__2_n_86;
  wire interim_velocity1__2_n_87;
  wire interim_velocity1__2_n_88;
  wire interim_velocity1__2_n_89;
  wire interim_velocity1__2_n_90;
  wire interim_velocity1__2_n_91;
  wire interim_velocity1__2_n_92;
  wire interim_velocity1__2_n_93;
  wire interim_velocity1__2_n_94;
  wire interim_velocity1__2_n_95;
  wire interim_velocity1__2_n_96;
  wire interim_velocity1__2_n_97;
  wire interim_velocity1__2_n_98;
  wire interim_velocity1__2_n_99;
  wire interim_velocity1__3_i_10_n_0;
  wire interim_velocity1__3_i_11_n_0;
  wire interim_velocity1__3_i_12_n_0;
  wire interim_velocity1__3_i_13_n_0;
  wire interim_velocity1__3_i_14_n_0;
  wire interim_velocity1__3_i_15_n_0;
  wire interim_velocity1__3_i_16_n_0;
  wire interim_velocity1__3_i_17_n_0;
  wire interim_velocity1__3_i_18_n_0;
  wire interim_velocity1__3_i_19_n_0;
  wire interim_velocity1__3_i_1_n_0;
  wire interim_velocity1__3_i_1_n_1;
  wire interim_velocity1__3_i_1_n_2;
  wire interim_velocity1__3_i_1_n_3;
  wire interim_velocity1__3_i_1_n_4;
  wire interim_velocity1__3_i_1_n_5;
  wire interim_velocity1__3_i_1_n_6;
  wire interim_velocity1__3_i_1_n_7;
  wire interim_velocity1__3_i_20_n_0;
  wire interim_velocity1__3_i_21_n_0;
  wire interim_velocity1__3_i_2_n_0;
  wire interim_velocity1__3_i_2_n_1;
  wire interim_velocity1__3_i_2_n_2;
  wire interim_velocity1__3_i_2_n_3;
  wire interim_velocity1__3_i_2_n_4;
  wire interim_velocity1__3_i_2_n_5;
  wire interim_velocity1__3_i_2_n_6;
  wire interim_velocity1__3_i_2_n_7;
  wire interim_velocity1__3_i_3_n_0;
  wire interim_velocity1__3_i_3_n_1;
  wire interim_velocity1__3_i_3_n_2;
  wire interim_velocity1__3_i_3_n_3;
  wire interim_velocity1__3_i_3_n_4;
  wire interim_velocity1__3_i_3_n_5;
  wire interim_velocity1__3_i_3_n_6;
  wire interim_velocity1__3_i_3_n_7;
  wire interim_velocity1__3_i_4_n_0;
  wire interim_velocity1__3_i_4_n_1;
  wire interim_velocity1__3_i_4_n_2;
  wire interim_velocity1__3_i_4_n_3;
  wire interim_velocity1__3_i_4_n_4;
  wire interim_velocity1__3_i_4_n_5;
  wire interim_velocity1__3_i_4_n_6;
  wire interim_velocity1__3_i_4_n_7;
  wire interim_velocity1__3_i_5_n_0;
  wire interim_velocity1__3_i_6_n_0;
  wire interim_velocity1__3_i_7_n_0;
  wire interim_velocity1__3_i_8_n_0;
  wire interim_velocity1__3_i_9_n_0;
  wire interim_velocity1__3_n_100;
  wire interim_velocity1__3_n_101;
  wire interim_velocity1__3_n_102;
  wire interim_velocity1__3_n_103;
  wire interim_velocity1__3_n_104;
  wire interim_velocity1__3_n_105;
  wire interim_velocity1__3_n_58;
  wire interim_velocity1__3_n_59;
  wire interim_velocity1__3_n_60;
  wire interim_velocity1__3_n_61;
  wire interim_velocity1__3_n_62;
  wire interim_velocity1__3_n_63;
  wire interim_velocity1__3_n_64;
  wire interim_velocity1__3_n_65;
  wire interim_velocity1__3_n_66;
  wire interim_velocity1__3_n_67;
  wire interim_velocity1__3_n_68;
  wire interim_velocity1__3_n_69;
  wire interim_velocity1__3_n_70;
  wire interim_velocity1__3_n_71;
  wire interim_velocity1__3_n_72;
  wire interim_velocity1__3_n_73;
  wire interim_velocity1__3_n_74;
  wire interim_velocity1__3_n_75;
  wire interim_velocity1__3_n_76;
  wire interim_velocity1__3_n_77;
  wire interim_velocity1__3_n_78;
  wire interim_velocity1__3_n_79;
  wire interim_velocity1__3_n_80;
  wire interim_velocity1__3_n_81;
  wire interim_velocity1__3_n_82;
  wire interim_velocity1__3_n_83;
  wire interim_velocity1__3_n_84;
  wire interim_velocity1__3_n_85;
  wire interim_velocity1__3_n_86;
  wire interim_velocity1__3_n_87;
  wire interim_velocity1__3_n_88;
  wire interim_velocity1__3_n_89;
  wire interim_velocity1__3_n_90;
  wire interim_velocity1__3_n_91;
  wire interim_velocity1__3_n_92;
  wire interim_velocity1__3_n_93;
  wire interim_velocity1__3_n_94;
  wire interim_velocity1__3_n_95;
  wire interim_velocity1__3_n_96;
  wire interim_velocity1__3_n_97;
  wire interim_velocity1__3_n_98;
  wire interim_velocity1__3_n_99;
  wire interim_velocity1_i_2_n_0;
  wire interim_velocity1_n_100;
  wire interim_velocity1_n_101;
  wire interim_velocity1_n_102;
  wire interim_velocity1_n_103;
  wire interim_velocity1_n_104;
  wire interim_velocity1_n_105;
  wire interim_velocity1_n_58;
  wire interim_velocity1_n_59;
  wire interim_velocity1_n_60;
  wire interim_velocity1_n_61;
  wire interim_velocity1_n_62;
  wire interim_velocity1_n_63;
  wire interim_velocity1_n_64;
  wire interim_velocity1_n_65;
  wire interim_velocity1_n_66;
  wire interim_velocity1_n_67;
  wire interim_velocity1_n_68;
  wire interim_velocity1_n_69;
  wire interim_velocity1_n_70;
  wire interim_velocity1_n_71;
  wire interim_velocity1_n_72;
  wire interim_velocity1_n_73;
  wire interim_velocity1_n_74;
  wire interim_velocity1_n_75;
  wire interim_velocity1_n_76;
  wire interim_velocity1_n_77;
  wire interim_velocity1_n_78;
  wire interim_velocity1_n_79;
  wire interim_velocity1_n_80;
  wire interim_velocity1_n_81;
  wire interim_velocity1_n_82;
  wire interim_velocity1_n_83;
  wire interim_velocity1_n_84;
  wire interim_velocity1_n_85;
  wire interim_velocity1_n_86;
  wire interim_velocity1_n_87;
  wire interim_velocity1_n_88;
  wire interim_velocity1_n_89;
  wire interim_velocity1_n_90;
  wire interim_velocity1_n_91;
  wire interim_velocity1_n_92;
  wire interim_velocity1_n_93;
  wire interim_velocity1_n_94;
  wire interim_velocity1_n_95;
  wire interim_velocity1_n_96;
  wire interim_velocity1_n_97;
  wire interim_velocity1_n_98;
  wire interim_velocity1_n_99;
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
  wire \interim_velocity_reg_n_0_[31] ;
  wire \interim_velocity_reg_n_0_[32] ;
  wire \interim_velocity_reg_n_0_[33] ;
  wire \interim_velocity_reg_n_0_[34] ;
  wire \interim_velocity_reg_n_0_[35] ;
  wire \interim_velocity_reg_n_0_[36] ;
  wire \interim_velocity_reg_n_0_[37] ;
  wire \interim_velocity_reg_n_0_[38] ;
  wire \interim_velocity_reg_n_0_[39] ;
  wire \interim_velocity_reg_n_0_[3] ;
  wire \interim_velocity_reg_n_0_[40] ;
  wire \interim_velocity_reg_n_0_[4] ;
  wire \interim_velocity_reg_n_0_[5] ;
  wire \interim_velocity_reg_n_0_[6] ;
  wire \interim_velocity_reg_n_0_[72] ;
  wire \interim_velocity_reg_n_0_[7] ;
  wire \interim_velocity_reg_n_0_[8] ;
  wire \interim_velocity_reg_n_0_[9] ;
  wire [0:0]new_velocity_available_0;
  wire \nv_flag[0]_i_1_n_0 ;
  wire [31:0]output_velocity_0;
  wire p_0_in0;
  wire [0:0]sys_clk;
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
  wire \velocity1_inferred__0/i__carry__7_n_1 ;
  wire \velocity1_inferred__0/i__carry__7_n_2 ;
  wire \velocity1_inferred__0/i__carry__7_n_3 ;
  wire \velocity1_inferred__0/i__carry_n_0 ;
  wire \velocity1_inferred__0/i__carry_n_1 ;
  wire \velocity1_inferred__0/i__carry_n_2 ;
  wire \velocity1_inferred__0/i__carry_n_3 ;
  wire [73:0]velocity2;
  wire [3:1]NLW_i__carry__7_i_4_CO_UNCONNECTED;
  wire [3:2]NLW_i__carry__7_i_4_O_UNCONNECTED;
  wire [3:0]NLW_i__carry_i_8_O_UNCONNECTED;
  wire NLW_interim_velocity1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_interim_velocity1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_interim_velocity1_OVERFLOW_UNCONNECTED;
  wire NLW_interim_velocity1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_interim_velocity1_PATTERNDETECT_UNCONNECTED;
  wire NLW_interim_velocity1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_interim_velocity1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_interim_velocity1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_interim_velocity1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_interim_velocity1_PCOUT_UNCONNECTED;
  wire NLW_interim_velocity1__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_interim_velocity1__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_interim_velocity1__0_OVERFLOW_UNCONNECTED;
  wire NLW_interim_velocity1__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_interim_velocity1__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_interim_velocity1__0_CARRYOUT_UNCONNECTED;
  wire NLW_interim_velocity1__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_interim_velocity1__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_interim_velocity1__1_OVERFLOW_UNCONNECTED;
  wire NLW_interim_velocity1__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_interim_velocity1__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_interim_velocity1__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_interim_velocity1__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_interim_velocity1__1_PCOUT_UNCONNECTED;
  wire NLW_interim_velocity1__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_interim_velocity1__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_interim_velocity1__2_OVERFLOW_UNCONNECTED;
  wire NLW_interim_velocity1__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__2_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_interim_velocity1__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_interim_velocity1__2_CARRYOUT_UNCONNECTED;
  wire NLW_interim_velocity1__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_interim_velocity1__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_interim_velocity1__3_OVERFLOW_UNCONNECTED;
  wire NLW_interim_velocity1__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_interim_velocity1__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_interim_velocity1__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_interim_velocity1__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_interim_velocity1__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_interim_velocity1__3_PCOUT_UNCONNECTED;
  wire [3:0]NLW_interim_velocity1_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_interim_velocity1_i_1_O_UNCONNECTED;
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
  wire [3:3]\NLW_velocity1_inferred__0/i__carry__7_CO_UNCONNECTED ;
  wire [3:0]\NLW_velocity1_inferred__0/i__carry__7_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(i__carry__0_i_5_n_5),
        .I1(i__carry__0_i_5_n_4),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_10
       (.I0(output_velocity_0[16]),
        .I1(\interim_velocity_reg_n_0_[16] ),
        .O(i__carry__0_i_10_n_0));
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
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(i__carry__0_i_5_n_7),
        .I1(i__carry__0_i_5_n_6),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(i__carry__0_i_6_n_5),
        .I1(i__carry__0_i_6_n_4),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(i__carry__0_i_6_n_7),
        .I1(i__carry__0_i_6_n_6),
        .O(i__carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_5
       (.CI(i__carry__0_i_6_n_0),
        .CO({i__carry__0_i_5_n_0,i__carry__0_i_5_n_1,i__carry__0_i_5_n_2,i__carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[19:16]),
        .O({i__carry__0_i_5_n_4,i__carry__0_i_5_n_5,i__carry__0_i_5_n_6,i__carry__0_i_5_n_7}),
        .S({i__carry__0_i_7_n_0,i__carry__0_i_8_n_0,i__carry__0_i_9_n_0,i__carry__0_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_6
       (.CI(i__carry_i_7_n_0),
        .CO({i__carry__0_i_6_n_0,i__carry__0_i_6_n_1,i__carry__0_i_6_n_2,i__carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[15:12]),
        .O({i__carry__0_i_6_n_4,i__carry__0_i_6_n_5,i__carry__0_i_6_n_6,i__carry__0_i_6_n_7}),
        .S({i__carry__0_i_11_n_0,i__carry__0_i_12_n_0,i__carry__0_i_13_n_0,i__carry__0_i_14_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_7
       (.I0(output_velocity_0[19]),
        .I1(\interim_velocity_reg_n_0_[19] ),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_8
       (.I0(output_velocity_0[18]),
        .I1(\interim_velocity_reg_n_0_[18] ),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_9
       (.I0(output_velocity_0[17]),
        .I1(\interim_velocity_reg_n_0_[17] ),
        .O(i__carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(i__carry__1_i_5_n_5),
        .I1(i__carry__1_i_5_n_4),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_10
       (.I0(output_velocity_0[24]),
        .I1(\interim_velocity_reg_n_0_[24] ),
        .O(i__carry__1_i_10_n_0));
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
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(i__carry__1_i_5_n_7),
        .I1(i__carry__1_i_5_n_6),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(i__carry__1_i_6_n_5),
        .I1(i__carry__1_i_6_n_4),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(i__carry__1_i_6_n_7),
        .I1(i__carry__1_i_6_n_6),
        .O(i__carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__1_i_5
       (.CI(i__carry__1_i_6_n_0),
        .CO({i__carry__1_i_5_n_0,i__carry__1_i_5_n_1,i__carry__1_i_5_n_2,i__carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[27:24]),
        .O({i__carry__1_i_5_n_4,i__carry__1_i_5_n_5,i__carry__1_i_5_n_6,i__carry__1_i_5_n_7}),
        .S({i__carry__1_i_7_n_0,i__carry__1_i_8_n_0,i__carry__1_i_9_n_0,i__carry__1_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__1_i_6
       (.CI(i__carry__0_i_5_n_0),
        .CO({i__carry__1_i_6_n_0,i__carry__1_i_6_n_1,i__carry__1_i_6_n_2,i__carry__1_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[23:20]),
        .O({i__carry__1_i_6_n_4,i__carry__1_i_6_n_5,i__carry__1_i_6_n_6,i__carry__1_i_6_n_7}),
        .S({i__carry__1_i_11_n_0,i__carry__1_i_12_n_0,i__carry__1_i_13_n_0,i__carry__1_i_14_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_7
       (.I0(output_velocity_0[27]),
        .I1(\interim_velocity_reg_n_0_[27] ),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_8
       (.I0(output_velocity_0[26]),
        .I1(\interim_velocity_reg_n_0_[26] ),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_9
       (.I0(output_velocity_0[25]),
        .I1(\interim_velocity_reg_n_0_[25] ),
        .O(i__carry__1_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_1
       (.I0(i__carry__2_i_5_n_5),
        .I1(i__carry__2_i_5_n_4),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_10
       (.I0(\interim_velocity_reg_n_0_[32] ),
        .O(i__carry__2_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_11
       (.I0(output_velocity_0[31]),
        .I1(\interim_velocity_reg_n_0_[31] ),
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
    .INIT(4'h1)) 
    i__carry__2_i_2
       (.I0(i__carry__2_i_5_n_7),
        .I1(i__carry__2_i_5_n_6),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_3
       (.I0(i__carry__2_i_6_n_5),
        .I1(i__carry__2_i_6_n_4),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__2_i_4
       (.I0(i__carry__2_i_6_n_7),
        .I1(i__carry__2_i_6_n_6),
        .O(i__carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__2_i_5
       (.CI(i__carry__2_i_6_n_0),
        .CO({i__carry__2_i_5_n_0,i__carry__2_i_5_n_1,i__carry__2_i_5_n_2,i__carry__2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__2_i_5_n_4,i__carry__2_i_5_n_5,i__carry__2_i_5_n_6,i__carry__2_i_5_n_7}),
        .S({i__carry__2_i_7_n_0,i__carry__2_i_8_n_0,i__carry__2_i_9_n_0,i__carry__2_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__2_i_6
       (.CI(i__carry__1_i_5_n_0),
        .CO({i__carry__2_i_6_n_0,i__carry__2_i_6_n_1,i__carry__2_i_6_n_2,i__carry__2_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[31:28]),
        .O({i__carry__2_i_6_n_4,i__carry__2_i_6_n_5,i__carry__2_i_6_n_6,i__carry__2_i_6_n_7}),
        .S({i__carry__2_i_11_n_0,i__carry__2_i_12_n_0,i__carry__2_i_13_n_0,i__carry__2_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_7
       (.I0(\interim_velocity_reg_n_0_[35] ),
        .O(i__carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_8
       (.I0(\interim_velocity_reg_n_0_[34] ),
        .O(i__carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_9
       (.I0(\interim_velocity_reg_n_0_[33] ),
        .O(i__carry__2_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_1
       (.I0(i__carry__3_i_5_n_5),
        .I1(i__carry__3_i_5_n_4),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_10
       (.I0(\interim_velocity_reg_n_0_[40] ),
        .O(i__carry__3_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_11
       (.I0(\interim_velocity_reg_n_0_[39] ),
        .O(i__carry__3_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_12
       (.I0(\interim_velocity_reg_n_0_[38] ),
        .O(i__carry__3_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_13
       (.I0(\interim_velocity_reg_n_0_[37] ),
        .O(i__carry__3_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_14
       (.I0(\interim_velocity_reg_n_0_[36] ),
        .O(i__carry__3_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_2
       (.I0(i__carry__3_i_5_n_7),
        .I1(i__carry__3_i_5_n_6),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_3
       (.I0(i__carry__3_i_6_n_5),
        .I1(i__carry__3_i_6_n_4),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__3_i_4
       (.I0(i__carry__3_i_6_n_7),
        .I1(i__carry__3_i_6_n_6),
        .O(i__carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__3_i_5
       (.CI(i__carry__3_i_6_n_0),
        .CO({i__carry__3_i_5_n_0,i__carry__3_i_5_n_1,i__carry__3_i_5_n_2,i__carry__3_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__3_i_5_n_4,i__carry__3_i_5_n_5,i__carry__3_i_5_n_6,i__carry__3_i_5_n_7}),
        .S({i__carry__3_i_7_n_0,i__carry__3_i_8_n_0,i__carry__3_i_9_n_0,i__carry__3_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__3_i_6
       (.CI(i__carry__2_i_5_n_0),
        .CO({i__carry__3_i_6_n_0,i__carry__3_i_6_n_1,i__carry__3_i_6_n_2,i__carry__3_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__3_i_6_n_4,i__carry__3_i_6_n_5,i__carry__3_i_6_n_6,i__carry__3_i_6_n_7}),
        .S({i__carry__3_i_11_n_0,i__carry__3_i_12_n_0,i__carry__3_i_13_n_0,i__carry__3_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_7
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_8
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_9
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__3_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_1
       (.I0(i__carry__4_i_5_n_5),
        .I1(i__carry__4_i_5_n_4),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_10
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_10_n_0));
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
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_2
       (.I0(i__carry__4_i_5_n_7),
        .I1(i__carry__4_i_5_n_6),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_3
       (.I0(i__carry__4_i_6_n_5),
        .I1(i__carry__4_i_6_n_4),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__4_i_4
       (.I0(i__carry__4_i_6_n_7),
        .I1(i__carry__4_i_6_n_6),
        .O(i__carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__4_i_5
       (.CI(i__carry__4_i_6_n_0),
        .CO({i__carry__4_i_5_n_0,i__carry__4_i_5_n_1,i__carry__4_i_5_n_2,i__carry__4_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__4_i_5_n_4,i__carry__4_i_5_n_5,i__carry__4_i_5_n_6,i__carry__4_i_5_n_7}),
        .S({i__carry__4_i_7_n_0,i__carry__4_i_8_n_0,i__carry__4_i_9_n_0,i__carry__4_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__4_i_6
       (.CI(i__carry__3_i_5_n_0),
        .CO({i__carry__4_i_6_n_0,i__carry__4_i_6_n_1,i__carry__4_i_6_n_2,i__carry__4_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__4_i_6_n_4,i__carry__4_i_6_n_5,i__carry__4_i_6_n_6,i__carry__4_i_6_n_7}),
        .S({i__carry__4_i_11_n_0,i__carry__4_i_12_n_0,i__carry__4_i_13_n_0,i__carry__4_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_7
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_8
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_9
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__4_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_1
       (.I0(i__carry__5_i_5_n_5),
        .I1(i__carry__5_i_5_n_4),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_10
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_10_n_0));
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
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_2
       (.I0(i__carry__5_i_5_n_7),
        .I1(i__carry__5_i_5_n_6),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_3
       (.I0(i__carry__5_i_6_n_5),
        .I1(i__carry__5_i_6_n_4),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__5_i_4
       (.I0(i__carry__5_i_6_n_7),
        .I1(i__carry__5_i_6_n_6),
        .O(i__carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__5_i_5
       (.CI(i__carry__5_i_6_n_0),
        .CO({i__carry__5_i_5_n_0,i__carry__5_i_5_n_1,i__carry__5_i_5_n_2,i__carry__5_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__5_i_5_n_4,i__carry__5_i_5_n_5,i__carry__5_i_5_n_6,i__carry__5_i_5_n_7}),
        .S({i__carry__5_i_7_n_0,i__carry__5_i_8_n_0,i__carry__5_i_9_n_0,i__carry__5_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__5_i_6
       (.CI(i__carry__4_i_5_n_0),
        .CO({i__carry__5_i_6_n_0,i__carry__5_i_6_n_1,i__carry__5_i_6_n_2,i__carry__5_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__5_i_6_n_4,i__carry__5_i_6_n_5,i__carry__5_i_6_n_6,i__carry__5_i_6_n_7}),
        .S({i__carry__5_i_11_n_0,i__carry__5_i_12_n_0,i__carry__5_i_13_n_0,i__carry__5_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_7
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_8
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_9
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__5_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_1
       (.I0(i__carry__6_i_5_n_5),
        .I1(i__carry__6_i_5_n_4),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_10
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_10_n_0));
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
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_2
       (.I0(i__carry__6_i_5_n_7),
        .I1(i__carry__6_i_5_n_6),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_3
       (.I0(i__carry__6_i_6_n_5),
        .I1(i__carry__6_i_6_n_4),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_4
       (.I0(i__carry__6_i_6_n_7),
        .I1(i__carry__6_i_6_n_6),
        .O(i__carry__6_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__6_i_5
       (.CI(i__carry__6_i_6_n_0),
        .CO({i__carry__6_i_5_n_0,i__carry__6_i_5_n_1,i__carry__6_i_5_n_2,i__carry__6_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__6_i_5_n_4,i__carry__6_i_5_n_5,i__carry__6_i_5_n_6,i__carry__6_i_5_n_7}),
        .S({i__carry__6_i_7_n_0,i__carry__6_i_8_n_0,i__carry__6_i_9_n_0,i__carry__6_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__6_i_6
       (.CI(i__carry__5_i_5_n_0),
        .CO({i__carry__6_i_6_n_0,i__carry__6_i_6_n_1,i__carry__6_i_6_n_2,i__carry__6_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__6_i_6_n_4,i__carry__6_i_6_n_5,i__carry__6_i_6_n_6,i__carry__6_i_6_n_7}),
        .S({i__carry__6_i_11_n_0,i__carry__6_i_12_n_0,i__carry__6_i_13_n_0,i__carry__6_i_14_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_7
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_8
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_9
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__6_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_1
       (.I0(i__carry__7_i_4_n_7),
        .I1(i__carry__7_i_4_n_6),
        .O(i__carry__7_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_10
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_11
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_2
       (.I0(i__carry__7_i_5_n_5),
        .I1(i__carry__7_i_5_n_4),
        .O(i__carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__7_i_3
       (.I0(i__carry__7_i_5_n_7),
        .I1(i__carry__7_i_5_n_6),
        .O(i__carry__7_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__7_i_4
       (.CI(i__carry__7_i_5_n_0),
        .CO({NLW_i__carry__7_i_4_CO_UNCONNECTED[3:1],i__carry__7_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__7_i_4_O_UNCONNECTED[3:2],i__carry__7_i_4_n_6,i__carry__7_i_4_n_7}),
        .S({1'b0,1'b0,i__carry__7_i_6_n_0,i__carry__7_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__7_i_5
       (.CI(i__carry__6_i_5_n_0),
        .CO({i__carry__7_i_5_n_0,i__carry__7_i_5_n_1,i__carry__7_i_5_n_2,i__carry__7_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__7_i_5_n_4,i__carry__7_i_5_n_5,i__carry__7_i_5_n_6,i__carry__7_i_5_n_7}),
        .S({i__carry__7_i_8_n_0,i__carry__7_i_9_n_0,i__carry__7_i_10_n_0,i__carry__7_i_11_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_6
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_7
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_8
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__7_i_9
       (.I0(\interim_velocity_reg_n_0_[72] ),
        .O(i__carry__7_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(i__carry_i_6_n_7),
        .I1(i__carry_i_6_n_6),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_10
       (.I0(output_velocity_0[6]),
        .I1(\interim_velocity_reg_n_0_[6] ),
        .O(i__carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_11
       (.I0(output_velocity_0[5]),
        .I1(\interim_velocity_reg_n_0_[5] ),
        .O(i__carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_12
       (.I0(output_velocity_0[4]),
        .I1(\interim_velocity_reg_n_0_[4] ),
        .O(i__carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_13
       (.I0(output_velocity_0[11]),
        .I1(\interim_velocity_reg_n_0_[11] ),
        .O(i__carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_14
       (.I0(output_velocity_0[10]),
        .I1(\interim_velocity_reg_n_0_[10] ),
        .O(i__carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_15
       (.I0(output_velocity_0[9]),
        .I1(\interim_velocity_reg_n_0_[9] ),
        .O(i__carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_16
       (.I0(output_velocity_0[8]),
        .I1(\interim_velocity_reg_n_0_[8] ),
        .O(i__carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_17
       (.I0(output_velocity_0[3]),
        .I1(\interim_velocity_reg_n_0_[3] ),
        .O(i__carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_18
       (.I0(output_velocity_0[2]),
        .I1(\interim_velocity_reg_n_0_[2] ),
        .O(i__carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_19
       (.I0(output_velocity_0[1]),
        .I1(\interim_velocity_reg_n_0_[1] ),
        .O(i__carry_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2
       (.I0(i__carry_i_7_n_5),
        .I1(i__carry_i_7_n_4),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_20
       (.I0(output_velocity_0[0]),
        .I1(\interim_velocity_reg_n_0_[0] ),
        .O(i__carry_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(i__carry_i_7_n_7),
        .I1(i__carry_i_7_n_6),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(i__carry_i_6_n_5),
        .I1(i__carry_i_6_n_4),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(i__carry_i_6_n_7),
        .I1(i__carry_i_6_n_6),
        .O(i__carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_6
       (.CI(i__carry_i_8_n_0),
        .CO({i__carry_i_6_n_0,i__carry_i_6_n_1,i__carry_i_6_n_2,i__carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[7:4]),
        .O({i__carry_i_6_n_4,i__carry_i_6_n_5,i__carry_i_6_n_6,i__carry_i_6_n_7}),
        .S({i__carry_i_9_n_0,i__carry_i_10_n_0,i__carry_i_11_n_0,i__carry_i_12_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_7
       (.CI(i__carry_i_6_n_0),
        .CO({i__carry_i_7_n_0,i__carry_i_7_n_1,i__carry_i_7_n_2,i__carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI(output_velocity_0[11:8]),
        .O({i__carry_i_7_n_4,i__carry_i_7_n_5,i__carry_i_7_n_6,i__carry_i_7_n_7}),
        .S({i__carry_i_13_n_0,i__carry_i_14_n_0,i__carry_i_15_n_0,i__carry_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_8
       (.CI(1'b0),
        .CO({i__carry_i_8_n_0,i__carry_i_8_n_1,i__carry_i_8_n_2,i__carry_i_8_n_3}),
        .CYINIT(1'b1),
        .DI(output_velocity_0[3:0]),
        .O(NLW_i__carry_i_8_O_UNCONNECTED[3:0]),
        .S({i__carry_i_17_n_0,i__carry_i_18_n_0,i__carry_i_19_n_0,i__carry_i_20_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_9
       (.I0(output_velocity_0[7]),
        .I1(\interim_velocity_reg_n_0_[7] ),
        .O(i__carry_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    interim_velocity1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_interim_velocity1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_interim_velocity1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_interim_velocity1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_interim_velocity1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .MULTSIGNOUT(NLW_interim_velocity1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_interim_velocity1_OVERFLOW_UNCONNECTED),
        .P({interim_velocity1_n_58,interim_velocity1_n_59,interim_velocity1_n_60,interim_velocity1_n_61,interim_velocity1_n_62,interim_velocity1_n_63,interim_velocity1_n_64,interim_velocity1_n_65,interim_velocity1_n_66,interim_velocity1_n_67,interim_velocity1_n_68,interim_velocity1_n_69,interim_velocity1_n_70,interim_velocity1_n_71,interim_velocity1_n_72,interim_velocity1_n_73,interim_velocity1_n_74,interim_velocity1_n_75,interim_velocity1_n_76,interim_velocity1_n_77,interim_velocity1_n_78,interim_velocity1_n_79,interim_velocity1_n_80,interim_velocity1_n_81,interim_velocity1_n_82,interim_velocity1_n_83,interim_velocity1_n_84,interim_velocity1_n_85,interim_velocity1_n_86,interim_velocity1_n_87,interim_velocity1_n_88,interim_velocity1_n_89,interim_velocity1_n_90,interim_velocity1_n_91,interim_velocity1_n_92,interim_velocity1_n_93,interim_velocity1_n_94,interim_velocity1_n_95,interim_velocity1_n_96,interim_velocity1_n_97,interim_velocity1_n_98,interim_velocity1_n_99,interim_velocity1_n_100,interim_velocity1_n_101,interim_velocity1_n_102,interim_velocity1_n_103,interim_velocity1_n_104,interim_velocity1_n_105}),
        .PATTERNBDETECT(NLW_interim_velocity1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_interim_velocity1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_interim_velocity1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_interim_velocity1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x21 5}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    interim_velocity1__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({interim_velocity1__0_n_24,interim_velocity1__0_n_25,interim_velocity1__0_n_26,interim_velocity1__0_n_27,interim_velocity1__0_n_28,interim_velocity1__0_n_29,interim_velocity1__0_n_30,interim_velocity1__0_n_31,interim_velocity1__0_n_32,interim_velocity1__0_n_33,interim_velocity1__0_n_34,interim_velocity1__0_n_35,interim_velocity1__0_n_36,interim_velocity1__0_n_37,interim_velocity1__0_n_38,interim_velocity1__0_n_39,interim_velocity1__0_n_40,interim_velocity1__0_n_41,interim_velocity1__0_n_42,interim_velocity1__0_n_43,interim_velocity1__0_n_44,interim_velocity1__0_n_45,interim_velocity1__0_n_46,interim_velocity1__0_n_47,interim_velocity1__0_n_48,interim_velocity1__0_n_49,interim_velocity1__0_n_50,interim_velocity1__0_n_51,interim_velocity1__0_n_52,interim_velocity1__0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,interim_velocity1__0_i_1_n_4,interim_velocity1__0_i_1_n_5,interim_velocity1__0_i_1_n_6,interim_velocity1__0_i_1_n_7,interim_velocity1__0_i_2_n_4,interim_velocity1__0_i_2_n_5,interim_velocity1__0_i_2_n_6}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_interim_velocity1__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_interim_velocity1__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_interim_velocity1__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .MULTSIGNOUT(NLW_interim_velocity1__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_interim_velocity1__0_OVERFLOW_UNCONNECTED),
        .P({interim_velocity1__0_n_58,interim_velocity1__0_n_59,interim_velocity1__0_n_60,interim_velocity1__0_n_61,interim_velocity1__0_n_62,interim_velocity1__0_n_63,interim_velocity1__0_n_64,interim_velocity1__0_n_65,interim_velocity1__0_n_66,interim_velocity1__0_n_67,interim_velocity1__0_n_68,interim_velocity1__0_n_69,interim_velocity1__0_n_70,interim_velocity1__0_n_71,interim_velocity1__0_n_72,interim_velocity1__0_n_73,interim_velocity1__0_n_74,interim_velocity1__0_n_75,interim_velocity1__0_n_76,interim_velocity1__0_n_77,interim_velocity1__0_n_78,interim_velocity1__0_n_79,interim_velocity1__0_n_80,interim_velocity1__0_n_81,interim_velocity1__0_n_82,interim_velocity1__0_n_83,interim_velocity1__0_n_84,interim_velocity1__0_n_85,interim_velocity1__0_n_86,interim_velocity1__0_n_87,interim_velocity1__0_n_88,interim_velocity1__0_n_89,interim_velocity1__0_n_90,interim_velocity1__0_n_91,interim_velocity1__0_n_92,interim_velocity1__0_n_93,interim_velocity1__0_n_94,interim_velocity1__0_n_95,interim_velocity1__0_n_96,interim_velocity1__0_n_97,interim_velocity1__0_n_98,interim_velocity1__0_n_99,interim_velocity1__0_n_100,interim_velocity1__0_n_101,interim_velocity1__0_n_102,interim_velocity1__0_n_103,interim_velocity1__0_n_104,interim_velocity1__0_n_105}),
        .PATTERNBDETECT(NLW_interim_velocity1__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_interim_velocity1__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({interim_velocity1__0_n_106,interim_velocity1__0_n_107,interim_velocity1__0_n_108,interim_velocity1__0_n_109,interim_velocity1__0_n_110,interim_velocity1__0_n_111,interim_velocity1__0_n_112,interim_velocity1__0_n_113,interim_velocity1__0_n_114,interim_velocity1__0_n_115,interim_velocity1__0_n_116,interim_velocity1__0_n_117,interim_velocity1__0_n_118,interim_velocity1__0_n_119,interim_velocity1__0_n_120,interim_velocity1__0_n_121,interim_velocity1__0_n_122,interim_velocity1__0_n_123,interim_velocity1__0_n_124,interim_velocity1__0_n_125,interim_velocity1__0_n_126,interim_velocity1__0_n_127,interim_velocity1__0_n_128,interim_velocity1__0_n_129,interim_velocity1__0_n_130,interim_velocity1__0_n_131,interim_velocity1__0_n_132,interim_velocity1__0_n_133,interim_velocity1__0_n_134,interim_velocity1__0_n_135,interim_velocity1__0_n_136,interim_velocity1__0_n_137,interim_velocity1__0_n_138,interim_velocity1__0_n_139,interim_velocity1__0_n_140,interim_velocity1__0_n_141,interim_velocity1__0_n_142,interim_velocity1__0_n_143,interim_velocity1__0_n_144,interim_velocity1__0_n_145,interim_velocity1__0_n_146,interim_velocity1__0_n_147,interim_velocity1__0_n_148,interim_velocity1__0_n_149,interim_velocity1__0_n_150,interim_velocity1__0_n_151,interim_velocity1__0_n_152,interim_velocity1__0_n_153}),
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
        .UNDERFLOW(NLW_interim_velocity1__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__0_i_1
       (.CI(interim_velocity1__0_i_2_n_0),
        .CO({interim_velocity1__0_i_1_n_0,interim_velocity1__0_i_1_n_1,interim_velocity1__0_i_1_n_2,interim_velocity1__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__0_i_3_n_0,interim_velocity1__0_i_4_n_0,interim_velocity1__0_i_5_n_0,interim_velocity1__0_i_6_n_0}),
        .O({interim_velocity1__0_i_1_n_4,interim_velocity1__0_i_1_n_5,interim_velocity1__0_i_1_n_6,interim_velocity1__0_i_1_n_7}),
        .S({interim_velocity1__0_i_7_n_0,interim_velocity1__0_i_8_n_0,interim_velocity1__0_i_9_n_0,interim_velocity1__0_i_10_n_0}));
  LUT4 #(
    .INIT(16'h1EE1)) 
    interim_velocity1__0_i_10
       (.I0(interim_velocity1_n_105),
        .I1(interim_velocity1__1_n_88),
        .I2(interim_velocity1_n_104),
        .I3(interim_velocity1__1_n_87),
        .O(interim_velocity1__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    interim_velocity1__0_i_11
       (.I0(interim_velocity1_n_105),
        .I1(interim_velocity1__1_n_88),
        .I2(interim_velocity1__1_n_89),
        .O(interim_velocity1__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    interim_velocity1__0_i_12
       (.I0(interim_velocity1__1_n_90),
        .I1(interim_velocity1__1_n_89),
        .O(interim_velocity1__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    interim_velocity1__0_i_13
       (.I0(interim_velocity1__1_n_91),
        .I1(interim_velocity1__1_n_90),
        .O(interim_velocity1__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    interim_velocity1__0_i_14
       (.I0(interim_velocity1__1_n_92),
        .I1(interim_velocity1__1_n_91),
        .O(interim_velocity1__0_i_14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__0_i_2
       (.CI(interim_velocity1__3_i_1_n_0),
        .CO({interim_velocity1__0_i_2_n_0,interim_velocity1__0_i_2_n_1,interim_velocity1__0_i_2_n_2,interim_velocity1__0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__1_n_89,interim_velocity1__1_n_90,interim_velocity1__1_n_91,interim_velocity1__1_n_92}),
        .O({interim_velocity1__0_i_2_n_4,interim_velocity1__0_i_2_n_5,interim_velocity1__0_i_2_n_6,interim_velocity1__0_i_2_n_7}),
        .S({interim_velocity1__0_i_11_n_0,interim_velocity1__0_i_12_n_0,interim_velocity1__0_i_13_n_0,interim_velocity1__0_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    interim_velocity1__0_i_3
       (.I0(interim_velocity1__1_n_85),
        .I1(interim_velocity1_n_102),
        .O(interim_velocity1__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    interim_velocity1__0_i_4
       (.I0(interim_velocity1__1_n_86),
        .I1(interim_velocity1_n_103),
        .O(interim_velocity1__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    interim_velocity1__0_i_5
       (.I0(interim_velocity1__1_n_87),
        .I1(interim_velocity1_n_104),
        .O(interim_velocity1__0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    interim_velocity1__0_i_6
       (.I0(interim_velocity1__1_n_88),
        .I1(interim_velocity1_n_105),
        .O(interim_velocity1__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    interim_velocity1__0_i_7
       (.I0(interim_velocity1_n_102),
        .I1(interim_velocity1__1_n_85),
        .I2(interim_velocity1_n_101),
        .I3(interim_velocity1__1_n_84),
        .O(interim_velocity1__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    interim_velocity1__0_i_8
       (.I0(interim_velocity1_n_103),
        .I1(interim_velocity1__1_n_86),
        .I2(interim_velocity1_n_102),
        .I3(interim_velocity1__1_n_85),
        .O(interim_velocity1__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    interim_velocity1__0_i_9
       (.I0(interim_velocity1_n_104),
        .I1(interim_velocity1__1_n_87),
        .I2(interim_velocity1_n_103),
        .I3(interim_velocity1__1_n_86),
        .O(interim_velocity1__0_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
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
    interim_velocity1__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({interim_velocity1__0_n_24,interim_velocity1__0_n_25,interim_velocity1__0_n_26,interim_velocity1__0_n_27,interim_velocity1__0_n_28,interim_velocity1__0_n_29,interim_velocity1__0_n_30,interim_velocity1__0_n_31,interim_velocity1__0_n_32,interim_velocity1__0_n_33,interim_velocity1__0_n_34,interim_velocity1__0_n_35,interim_velocity1__0_n_36,interim_velocity1__0_n_37,interim_velocity1__0_n_38,interim_velocity1__0_n_39,interim_velocity1__0_n_40,interim_velocity1__0_n_41,interim_velocity1__0_n_42,interim_velocity1__0_n_43,interim_velocity1__0_n_44,interim_velocity1__0_n_45,interim_velocity1__0_n_46,interim_velocity1__0_n_47,interim_velocity1__0_n_48,interim_velocity1__0_n_49,interim_velocity1__0_n_50,interim_velocity1__0_n_51,interim_velocity1__0_n_52,interim_velocity1__0_n_53}),
        .ACOUT(NLW_interim_velocity1__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0,p_0_in0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_interim_velocity1__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_interim_velocity1__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_interim_velocity1__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .MULTSIGNOUT(NLW_interim_velocity1__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_interim_velocity1__1_OVERFLOW_UNCONNECTED),
        .P({interim_velocity1__1_n_58,interim_velocity1__1_n_59,interim_velocity1__1_n_60,interim_velocity1__1_n_61,interim_velocity1__1_n_62,interim_velocity1__1_n_63,interim_velocity1__1_n_64,interim_velocity1__1_n_65,interim_velocity1__1_n_66,interim_velocity1__1_n_67,interim_velocity1__1_n_68,interim_velocity1__1_n_69,interim_velocity1__1_n_70,interim_velocity1__1_n_71,interim_velocity1__1_n_72,interim_velocity1__1_n_73,interim_velocity1__1_n_74,interim_velocity1__1_n_75,interim_velocity1__1_n_76,interim_velocity1__1_n_77,interim_velocity1__1_n_78,interim_velocity1__1_n_79,interim_velocity1__1_n_80,interim_velocity1__1_n_81,interim_velocity1__1_n_82,interim_velocity1__1_n_83,interim_velocity1__1_n_84,interim_velocity1__1_n_85,interim_velocity1__1_n_86,interim_velocity1__1_n_87,interim_velocity1__1_n_88,interim_velocity1__1_n_89,interim_velocity1__1_n_90,interim_velocity1__1_n_91,interim_velocity1__1_n_92,interim_velocity1__1_n_93,interim_velocity1__1_n_94,interim_velocity1__1_n_95,interim_velocity1__1_n_96,interim_velocity1__1_n_97,interim_velocity1__1_n_98,interim_velocity1__1_n_99,interim_velocity1__1_n_100,interim_velocity1__1_n_101,interim_velocity1__1_n_102,interim_velocity1__1_n_103,interim_velocity1__1_n_104,interim_velocity1__1_n_105}),
        .PATTERNBDETECT(NLW_interim_velocity1__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_interim_velocity1__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({interim_velocity1__0_n_106,interim_velocity1__0_n_107,interim_velocity1__0_n_108,interim_velocity1__0_n_109,interim_velocity1__0_n_110,interim_velocity1__0_n_111,interim_velocity1__0_n_112,interim_velocity1__0_n_113,interim_velocity1__0_n_114,interim_velocity1__0_n_115,interim_velocity1__0_n_116,interim_velocity1__0_n_117,interim_velocity1__0_n_118,interim_velocity1__0_n_119,interim_velocity1__0_n_120,interim_velocity1__0_n_121,interim_velocity1__0_n_122,interim_velocity1__0_n_123,interim_velocity1__0_n_124,interim_velocity1__0_n_125,interim_velocity1__0_n_126,interim_velocity1__0_n_127,interim_velocity1__0_n_128,interim_velocity1__0_n_129,interim_velocity1__0_n_130,interim_velocity1__0_n_131,interim_velocity1__0_n_132,interim_velocity1__0_n_133,interim_velocity1__0_n_134,interim_velocity1__0_n_135,interim_velocity1__0_n_136,interim_velocity1__0_n_137,interim_velocity1__0_n_138,interim_velocity1__0_n_139,interim_velocity1__0_n_140,interim_velocity1__0_n_141,interim_velocity1__0_n_142,interim_velocity1__0_n_143,interim_velocity1__0_n_144,interim_velocity1__0_n_145,interim_velocity1__0_n_146,interim_velocity1__0_n_147,interim_velocity1__0_n_148,interim_velocity1__0_n_149,interim_velocity1__0_n_150,interim_velocity1__0_n_151,interim_velocity1__0_n_152,interim_velocity1__0_n_153}),
        .PCOUT(NLW_interim_velocity1__1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_interim_velocity1__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x21 5}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
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
    interim_velocity1__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({interim_velocity1__2_n_24,interim_velocity1__2_n_25,interim_velocity1__2_n_26,interim_velocity1__2_n_27,interim_velocity1__2_n_28,interim_velocity1__2_n_29,interim_velocity1__2_n_30,interim_velocity1__2_n_31,interim_velocity1__2_n_32,interim_velocity1__2_n_33,interim_velocity1__2_n_34,interim_velocity1__2_n_35,interim_velocity1__2_n_36,interim_velocity1__2_n_37,interim_velocity1__2_n_38,interim_velocity1__2_n_39,interim_velocity1__2_n_40,interim_velocity1__2_n_41,interim_velocity1__2_n_42,interim_velocity1__2_n_43,interim_velocity1__2_n_44,interim_velocity1__2_n_45,interim_velocity1__2_n_46,interim_velocity1__2_n_47,interim_velocity1__2_n_48,interim_velocity1__2_n_49,interim_velocity1__2_n_50,interim_velocity1__2_n_51,interim_velocity1__2_n_52,interim_velocity1__2_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,interim_velocity1__2_i_1_n_4,interim_velocity1__2_i_1_n_5,interim_velocity1__2_i_1_n_6,interim_velocity1__2_i_1_n_7,interim_velocity1__2_i_2_n_4,interim_velocity1__2_i_2_n_5,interim_velocity1__2_i_2_n_6,interim_velocity1__2_i_2_n_7,interim_velocity1__2_i_3_n_4,interim_velocity1__2_i_3_n_5,interim_velocity1__2_i_3_n_6,interim_velocity1__2_i_3_n_7,interim_velocity1__2_i_4_n_4,interim_velocity1__2_i_4_n_5,interim_velocity1__2_i_4_n_6,interim_velocity1__2_i_4_n_7,interim_velocity1__3_n_90}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_interim_velocity1__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_interim_velocity1__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_interim_velocity1__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .MULTSIGNOUT(NLW_interim_velocity1__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_interim_velocity1__2_OVERFLOW_UNCONNECTED),
        .P({interim_velocity1__2_n_58,interim_velocity1__2_n_59,interim_velocity1__2_n_60,interim_velocity1__2_n_61,interim_velocity1__2_n_62,interim_velocity1__2_n_63,interim_velocity1__2_n_64,interim_velocity1__2_n_65,interim_velocity1__2_n_66,interim_velocity1__2_n_67,interim_velocity1__2_n_68,interim_velocity1__2_n_69,interim_velocity1__2_n_70,interim_velocity1__2_n_71,interim_velocity1__2_n_72,interim_velocity1__2_n_73,interim_velocity1__2_n_74,interim_velocity1__2_n_75,interim_velocity1__2_n_76,interim_velocity1__2_n_77,interim_velocity1__2_n_78,interim_velocity1__2_n_79,interim_velocity1__2_n_80,interim_velocity1__2_n_81,interim_velocity1__2_n_82,interim_velocity1__2_n_83,interim_velocity1__2_n_84,interim_velocity1__2_n_85,interim_velocity1__2_n_86,interim_velocity1__2_n_87,interim_velocity1__2_n_88,interim_velocity1__2_n_89,interim_velocity1__2_n_90,interim_velocity1__2_n_91,interim_velocity1__2_n_92,interim_velocity1__2_n_93,interim_velocity1__2_n_94,interim_velocity1__2_n_95,interim_velocity1__2_n_96,interim_velocity1__2_n_97,interim_velocity1__2_n_98,interim_velocity1__2_n_99,interim_velocity1__2_n_100,interim_velocity1__2_n_101,interim_velocity1__2_n_102,interim_velocity1__2_n_103,interim_velocity1__2_n_104,interim_velocity1__2_n_105}),
        .PATTERNBDETECT(NLW_interim_velocity1__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_interim_velocity1__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({interim_velocity1__2_n_106,interim_velocity1__2_n_107,interim_velocity1__2_n_108,interim_velocity1__2_n_109,interim_velocity1__2_n_110,interim_velocity1__2_n_111,interim_velocity1__2_n_112,interim_velocity1__2_n_113,interim_velocity1__2_n_114,interim_velocity1__2_n_115,interim_velocity1__2_n_116,interim_velocity1__2_n_117,interim_velocity1__2_n_118,interim_velocity1__2_n_119,interim_velocity1__2_n_120,interim_velocity1__2_n_121,interim_velocity1__2_n_122,interim_velocity1__2_n_123,interim_velocity1__2_n_124,interim_velocity1__2_n_125,interim_velocity1__2_n_126,interim_velocity1__2_n_127,interim_velocity1__2_n_128,interim_velocity1__2_n_129,interim_velocity1__2_n_130,interim_velocity1__2_n_131,interim_velocity1__2_n_132,interim_velocity1__2_n_133,interim_velocity1__2_n_134,interim_velocity1__2_n_135,interim_velocity1__2_n_136,interim_velocity1__2_n_137,interim_velocity1__2_n_138,interim_velocity1__2_n_139,interim_velocity1__2_n_140,interim_velocity1__2_n_141,interim_velocity1__2_n_142,interim_velocity1__2_n_143,interim_velocity1__2_n_144,interim_velocity1__2_n_145,interim_velocity1__2_n_146,interim_velocity1__2_n_147,interim_velocity1__2_n_148,interim_velocity1__2_n_149,interim_velocity1__2_n_150,interim_velocity1__2_n_151,interim_velocity1__2_n_152,interim_velocity1__2_n_153}),
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
        .UNDERFLOW(NLW_interim_velocity1__2_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__2_i_1
       (.CI(interim_velocity1__2_i_2_n_0),
        .CO({interim_velocity1__2_i_1_n_0,interim_velocity1__2_i_1_n_1,interim_velocity1__2_i_1_n_2,interim_velocity1__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_74,interim_velocity1__3_n_75,interim_velocity1__3_n_76,interim_velocity1__3_n_77}),
        .O({interim_velocity1__2_i_1_n_4,interim_velocity1__2_i_1_n_5,interim_velocity1__2_i_1_n_6,interim_velocity1__2_i_1_n_7}),
        .S({interim_velocity1__2_i_5_n_0,interim_velocity1__2_i_6_n_0,interim_velocity1__2_i_7_n_0,interim_velocity1__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_10
       (.I0(interim_velocity1__3_n_79),
        .I1(interim_velocity1__0_n_96),
        .O(interim_velocity1__2_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_11
       (.I0(interim_velocity1__3_n_80),
        .I1(interim_velocity1__0_n_97),
        .O(interim_velocity1__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_12
       (.I0(interim_velocity1__3_n_81),
        .I1(interim_velocity1__0_n_98),
        .O(interim_velocity1__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_13
       (.I0(interim_velocity1__3_n_82),
        .I1(interim_velocity1__0_n_99),
        .O(interim_velocity1__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_14
       (.I0(interim_velocity1__3_n_83),
        .I1(interim_velocity1__0_n_100),
        .O(interim_velocity1__2_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_15
       (.I0(interim_velocity1__3_n_84),
        .I1(interim_velocity1__0_n_101),
        .O(interim_velocity1__2_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_16
       (.I0(interim_velocity1__3_n_85),
        .I1(interim_velocity1__0_n_102),
        .O(interim_velocity1__2_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_17
       (.I0(interim_velocity1__3_n_86),
        .I1(interim_velocity1__0_n_103),
        .O(interim_velocity1__2_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_18
       (.I0(interim_velocity1__3_n_87),
        .I1(interim_velocity1__0_n_104),
        .O(interim_velocity1__2_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_19
       (.I0(interim_velocity1__3_n_88),
        .I1(interim_velocity1__0_n_105),
        .O(interim_velocity1__2_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__2_i_2
       (.CI(interim_velocity1__2_i_3_n_0),
        .CO({interim_velocity1__2_i_2_n_0,interim_velocity1__2_i_2_n_1,interim_velocity1__2_i_2_n_2,interim_velocity1__2_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_78,interim_velocity1__3_n_79,interim_velocity1__3_n_80,interim_velocity1__3_n_81}),
        .O({interim_velocity1__2_i_2_n_4,interim_velocity1__2_i_2_n_5,interim_velocity1__2_i_2_n_6,interim_velocity1__2_i_2_n_7}),
        .S({interim_velocity1__2_i_9_n_0,interim_velocity1__2_i_10_n_0,interim_velocity1__2_i_11_n_0,interim_velocity1__2_i_12_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__2_i_3
       (.CI(interim_velocity1__2_i_4_n_0),
        .CO({interim_velocity1__2_i_3_n_0,interim_velocity1__2_i_3_n_1,interim_velocity1__2_i_3_n_2,interim_velocity1__2_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_82,interim_velocity1__3_n_83,interim_velocity1__3_n_84,interim_velocity1__3_n_85}),
        .O({interim_velocity1__2_i_3_n_4,interim_velocity1__2_i_3_n_5,interim_velocity1__2_i_3_n_6,interim_velocity1__2_i_3_n_7}),
        .S({interim_velocity1__2_i_13_n_0,interim_velocity1__2_i_14_n_0,interim_velocity1__2_i_15_n_0,interim_velocity1__2_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__2_i_4
       (.CI(1'b0),
        .CO({interim_velocity1__2_i_4_n_0,interim_velocity1__2_i_4_n_1,interim_velocity1__2_i_4_n_2,interim_velocity1__2_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_86,interim_velocity1__3_n_87,interim_velocity1__3_n_88,1'b0}),
        .O({interim_velocity1__2_i_4_n_4,interim_velocity1__2_i_4_n_5,interim_velocity1__2_i_4_n_6,interim_velocity1__2_i_4_n_7}),
        .S({interim_velocity1__2_i_17_n_0,interim_velocity1__2_i_18_n_0,interim_velocity1__2_i_19_n_0,interim_velocity1__3_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_5
       (.I0(interim_velocity1__3_n_74),
        .I1(interim_velocity1__0_n_91),
        .O(interim_velocity1__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_6
       (.I0(interim_velocity1__3_n_75),
        .I1(interim_velocity1__0_n_92),
        .O(interim_velocity1__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_7
       (.I0(interim_velocity1__3_n_76),
        .I1(interim_velocity1__0_n_93),
        .O(interim_velocity1__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_8
       (.I0(interim_velocity1__3_n_77),
        .I1(interim_velocity1__0_n_94),
        .O(interim_velocity1__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__2_i_9
       (.I0(interim_velocity1__3_n_78),
        .I1(interim_velocity1__0_n_95),
        .O(interim_velocity1__2_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x21 5}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
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
    interim_velocity1__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({interim_velocity1__2_n_24,interim_velocity1__2_n_25,interim_velocity1__2_n_26,interim_velocity1__2_n_27,interim_velocity1__2_n_28,interim_velocity1__2_n_29,interim_velocity1__2_n_30,interim_velocity1__2_n_31,interim_velocity1__2_n_32,interim_velocity1__2_n_33,interim_velocity1__2_n_34,interim_velocity1__2_n_35,interim_velocity1__2_n_36,interim_velocity1__2_n_37,interim_velocity1__2_n_38,interim_velocity1__2_n_39,interim_velocity1__2_n_40,interim_velocity1__2_n_41,interim_velocity1__2_n_42,interim_velocity1__2_n_43,interim_velocity1__2_n_44,interim_velocity1__2_n_45,interim_velocity1__2_n_46,interim_velocity1__2_n_47,interim_velocity1__2_n_48,interim_velocity1__2_n_49,interim_velocity1__2_n_50,interim_velocity1__2_n_51,interim_velocity1__2_n_52,interim_velocity1__2_n_53}),
        .ACOUT(NLW_interim_velocity1__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,interim_velocity1__0_i_2_n_7,interim_velocity1__3_i_1_n_4,interim_velocity1__3_i_1_n_5,interim_velocity1__3_i_1_n_6,interim_velocity1__3_i_1_n_7,interim_velocity1__3_i_2_n_4,interim_velocity1__3_i_2_n_5,interim_velocity1__3_i_2_n_6,interim_velocity1__3_i_2_n_7,interim_velocity1__3_i_3_n_4,interim_velocity1__3_i_3_n_5,interim_velocity1__3_i_3_n_6,interim_velocity1__3_i_3_n_7,interim_velocity1__3_i_4_n_4,interim_velocity1__3_i_4_n_5,interim_velocity1__3_i_4_n_6,interim_velocity1__3_i_4_n_7}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_interim_velocity1__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_interim_velocity1__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_interim_velocity1__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
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
        .MULTSIGNOUT(NLW_interim_velocity1__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_interim_velocity1__3_OVERFLOW_UNCONNECTED),
        .P({interim_velocity1__3_n_58,interim_velocity1__3_n_59,interim_velocity1__3_n_60,interim_velocity1__3_n_61,interim_velocity1__3_n_62,interim_velocity1__3_n_63,interim_velocity1__3_n_64,interim_velocity1__3_n_65,interim_velocity1__3_n_66,interim_velocity1__3_n_67,interim_velocity1__3_n_68,interim_velocity1__3_n_69,interim_velocity1__3_n_70,interim_velocity1__3_n_71,interim_velocity1__3_n_72,interim_velocity1__3_n_73,interim_velocity1__3_n_74,interim_velocity1__3_n_75,interim_velocity1__3_n_76,interim_velocity1__3_n_77,interim_velocity1__3_n_78,interim_velocity1__3_n_79,interim_velocity1__3_n_80,interim_velocity1__3_n_81,interim_velocity1__3_n_82,interim_velocity1__3_n_83,interim_velocity1__3_n_84,interim_velocity1__3_n_85,interim_velocity1__3_n_86,interim_velocity1__3_n_87,interim_velocity1__3_n_88,interim_velocity1__3_n_89,interim_velocity1__3_n_90,interim_velocity1__3_n_91,interim_velocity1__3_n_92,interim_velocity1__3_n_93,interim_velocity1__3_n_94,interim_velocity1__3_n_95,interim_velocity1__3_n_96,interim_velocity1__3_n_97,interim_velocity1__3_n_98,interim_velocity1__3_n_99,interim_velocity1__3_n_100,interim_velocity1__3_n_101,interim_velocity1__3_n_102,interim_velocity1__3_n_103,interim_velocity1__3_n_104,interim_velocity1__3_n_105}),
        .PATTERNBDETECT(NLW_interim_velocity1__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_interim_velocity1__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({interim_velocity1__2_n_106,interim_velocity1__2_n_107,interim_velocity1__2_n_108,interim_velocity1__2_n_109,interim_velocity1__2_n_110,interim_velocity1__2_n_111,interim_velocity1__2_n_112,interim_velocity1__2_n_113,interim_velocity1__2_n_114,interim_velocity1__2_n_115,interim_velocity1__2_n_116,interim_velocity1__2_n_117,interim_velocity1__2_n_118,interim_velocity1__2_n_119,interim_velocity1__2_n_120,interim_velocity1__2_n_121,interim_velocity1__2_n_122,interim_velocity1__2_n_123,interim_velocity1__2_n_124,interim_velocity1__2_n_125,interim_velocity1__2_n_126,interim_velocity1__2_n_127,interim_velocity1__2_n_128,interim_velocity1__2_n_129,interim_velocity1__2_n_130,interim_velocity1__2_n_131,interim_velocity1__2_n_132,interim_velocity1__2_n_133,interim_velocity1__2_n_134,interim_velocity1__2_n_135,interim_velocity1__2_n_136,interim_velocity1__2_n_137,interim_velocity1__2_n_138,interim_velocity1__2_n_139,interim_velocity1__2_n_140,interim_velocity1__2_n_141,interim_velocity1__2_n_142,interim_velocity1__2_n_143,interim_velocity1__2_n_144,interim_velocity1__2_n_145,interim_velocity1__2_n_146,interim_velocity1__2_n_147,interim_velocity1__2_n_148,interim_velocity1__2_n_149,interim_velocity1__2_n_150,interim_velocity1__2_n_151,interim_velocity1__2_n_152,interim_velocity1__2_n_153}),
        .PCOUT(NLW_interim_velocity1__3_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_interim_velocity1__3_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__3_i_1
       (.CI(interim_velocity1__3_i_2_n_0),
        .CO({interim_velocity1__3_i_1_n_0,interim_velocity1__3_i_1_n_1,interim_velocity1__3_i_1_n_2,interim_velocity1__3_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_i_5_n_0,interim_velocity1__3_n_59,interim_velocity1__3_n_60,interim_velocity1__3_n_61}),
        .O({interim_velocity1__3_i_1_n_4,interim_velocity1__3_i_1_n_5,interim_velocity1__3_i_1_n_6,interim_velocity1__3_i_1_n_7}),
        .S({interim_velocity1__3_i_6_n_0,interim_velocity1__3_i_7_n_0,interim_velocity1__3_i_8_n_0,interim_velocity1__3_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_10
       (.I0(interim_velocity1__3_n_62),
        .I1(interim_velocity1__1_n_96),
        .O(interim_velocity1__3_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_11
       (.I0(interim_velocity1__3_n_63),
        .I1(interim_velocity1__1_n_97),
        .O(interim_velocity1__3_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_12
       (.I0(interim_velocity1__3_n_64),
        .I1(interim_velocity1__1_n_98),
        .O(interim_velocity1__3_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_13
       (.I0(interim_velocity1__3_n_65),
        .I1(interim_velocity1__1_n_99),
        .O(interim_velocity1__3_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_14
       (.I0(interim_velocity1__3_n_66),
        .I1(interim_velocity1__1_n_100),
        .O(interim_velocity1__3_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_15
       (.I0(interim_velocity1__3_n_67),
        .I1(interim_velocity1__1_n_101),
        .O(interim_velocity1__3_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_16
       (.I0(interim_velocity1__3_n_68),
        .I1(interim_velocity1__1_n_102),
        .O(interim_velocity1__3_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_17
       (.I0(interim_velocity1__3_n_69),
        .I1(interim_velocity1__1_n_103),
        .O(interim_velocity1__3_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_18
       (.I0(interim_velocity1__3_n_70),
        .I1(interim_velocity1__1_n_104),
        .O(interim_velocity1__3_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_19
       (.I0(interim_velocity1__3_n_71),
        .I1(interim_velocity1__1_n_105),
        .O(interim_velocity1__3_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__3_i_2
       (.CI(interim_velocity1__3_i_3_n_0),
        .CO({interim_velocity1__3_i_2_n_0,interim_velocity1__3_i_2_n_1,interim_velocity1__3_i_2_n_2,interim_velocity1__3_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_62,interim_velocity1__3_n_63,interim_velocity1__3_n_64,interim_velocity1__3_n_65}),
        .O({interim_velocity1__3_i_2_n_4,interim_velocity1__3_i_2_n_5,interim_velocity1__3_i_2_n_6,interim_velocity1__3_i_2_n_7}),
        .S({interim_velocity1__3_i_10_n_0,interim_velocity1__3_i_11_n_0,interim_velocity1__3_i_12_n_0,interim_velocity1__3_i_13_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_20
       (.I0(interim_velocity1__3_n_72),
        .I1(interim_velocity1__0_n_89),
        .O(interim_velocity1__3_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_21
       (.I0(interim_velocity1__3_n_73),
        .I1(interim_velocity1__0_n_90),
        .O(interim_velocity1__3_i_21_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__3_i_3
       (.CI(interim_velocity1__3_i_4_n_0),
        .CO({interim_velocity1__3_i_3_n_0,interim_velocity1__3_i_3_n_1,interim_velocity1__3_i_3_n_2,interim_velocity1__3_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_66,interim_velocity1__3_n_67,interim_velocity1__3_n_68,interim_velocity1__3_n_69}),
        .O({interim_velocity1__3_i_3_n_4,interim_velocity1__3_i_3_n_5,interim_velocity1__3_i_3_n_6,interim_velocity1__3_i_3_n_7}),
        .S({interim_velocity1__3_i_14_n_0,interim_velocity1__3_i_15_n_0,interim_velocity1__3_i_16_n_0,interim_velocity1__3_i_17_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1__3_i_4
       (.CI(interim_velocity1__2_i_1_n_0),
        .CO({interim_velocity1__3_i_4_n_0,interim_velocity1__3_i_4_n_1,interim_velocity1__3_i_4_n_2,interim_velocity1__3_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({interim_velocity1__3_n_70,interim_velocity1__3_n_71,interim_velocity1__3_n_72,interim_velocity1__3_n_73}),
        .O({interim_velocity1__3_i_4_n_4,interim_velocity1__3_i_4_n_5,interim_velocity1__3_i_4_n_6,interim_velocity1__3_i_4_n_7}),
        .S({interim_velocity1__3_i_18_n_0,interim_velocity1__3_i_19_n_0,interim_velocity1__3_i_20_n_0,interim_velocity1__3_i_21_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    interim_velocity1__3_i_5
       (.I0(interim_velocity1__1_n_92),
        .O(interim_velocity1__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_6
       (.I0(interim_velocity1__1_n_92),
        .I1(interim_velocity1__3_n_58),
        .O(interim_velocity1__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_7
       (.I0(interim_velocity1__3_n_59),
        .I1(interim_velocity1__1_n_93),
        .O(interim_velocity1__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_8
       (.I0(interim_velocity1__3_n_60),
        .I1(interim_velocity1__1_n_94),
        .O(interim_velocity1__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    interim_velocity1__3_i_9
       (.I0(interim_velocity1__3_n_61),
        .I1(interim_velocity1__1_n_95),
        .O(interim_velocity1__3_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 interim_velocity1_i_1
       (.CI(interim_velocity1__0_i_1_n_0),
        .CO(NLW_interim_velocity1_i_1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_interim_velocity1_i_1_O_UNCONNECTED[3:1],p_0_in0}),
        .S({1'b0,1'b0,1'b0,interim_velocity1_i_2_n_0}));
  LUT4 #(
    .INIT(16'h1EE1)) 
    interim_velocity1_i_2
       (.I0(interim_velocity1_n_101),
        .I1(interim_velocity1__1_n_84),
        .I2(interim_velocity1_n_100),
        .I3(interim_velocity1__1_n_83),
        .O(interim_velocity1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_n_90),
        .Q(\interim_velocity_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_2_n_6),
        .Q(\interim_velocity_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_2_n_5),
        .Q(\interim_velocity_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_2_n_4),
        .Q(\interim_velocity_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_1_n_7),
        .Q(\interim_velocity_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_1_n_6),
        .Q(\interim_velocity_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_1_n_5),
        .Q(\interim_velocity_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_1_n_4),
        .Q(\interim_velocity_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_4_n_7),
        .Q(\interim_velocity_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_4_n_6),
        .Q(\interim_velocity_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_4_n_5),
        .Q(\interim_velocity_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_4_n_7),
        .Q(\interim_velocity_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_4_n_4),
        .Q(\interim_velocity_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_3_n_7),
        .Q(\interim_velocity_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_3_n_6),
        .Q(\interim_velocity_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_3_n_5),
        .Q(\interim_velocity_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_3_n_4),
        .Q(\interim_velocity_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_2_n_7),
        .Q(\interim_velocity_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_2_n_6),
        .Q(\interim_velocity_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_2_n_5),
        .Q(\interim_velocity_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_2_n_4),
        .Q(\interim_velocity_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_1_n_7),
        .Q(\interim_velocity_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_4_n_6),
        .Q(\interim_velocity_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_1_n_6),
        .Q(\interim_velocity_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_1_n_5),
        .Q(\interim_velocity_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[32] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__3_i_1_n_4),
        .Q(\interim_velocity_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[33] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_2_n_7),
        .Q(\interim_velocity_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[34] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_2_n_6),
        .Q(\interim_velocity_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[35] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_2_n_5),
        .Q(\interim_velocity_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[36] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_2_n_4),
        .Q(\interim_velocity_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[37] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_1_n_7),
        .Q(\interim_velocity_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[38] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_1_n_6),
        .Q(\interim_velocity_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[39] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_1_n_5),
        .Q(\interim_velocity_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_4_n_5),
        .Q(\interim_velocity_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[40] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__0_i_1_n_4),
        .Q(\interim_velocity_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_4_n_4),
        .Q(\interim_velocity_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_3_n_7),
        .Q(\interim_velocity_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_3_n_6),
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
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_3_n_5),
        .Q(\interim_velocity_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_3_n_4),
        .Q(\interim_velocity_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \interim_velocity_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(interim_velocity1__2_i_2_n_7),
        .Q(\interim_velocity_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \nv_flag[0]_i_1 
       (.I0(\velocity1_inferred__0/i__carry__7_n_1 ),
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
       (.I0(\interim_velocity_reg_n_0_[31] ),
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
        .DI({\interim_velocity_reg_n_0_[31] ,\interim_velocity_reg_n_0_[30] ,\interim_velocity_reg_n_0_[29] ,\interim_velocity_reg_n_0_[28] }),
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
        .DI({\interim_velocity_reg_n_0_[35] ,\interim_velocity_reg_n_0_[34] ,\interim_velocity_reg_n_0_[33] ,\interim_velocity_reg_n_0_[32] }),
        .O(velocity2[35:32]),
        .S({velocity1_carry__3_i_15_n_0,velocity1_carry__3_i_16_n_0,velocity1_carry__3_i_17_n_0,velocity1_carry__3_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_11
       (.I0(\interim_velocity_reg_n_0_[39] ),
        .O(velocity1_carry__3_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_12
       (.I0(\interim_velocity_reg_n_0_[38] ),
        .O(velocity1_carry__3_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_13
       (.I0(\interim_velocity_reg_n_0_[37] ),
        .O(velocity1_carry__3_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_14
       (.I0(\interim_velocity_reg_n_0_[36] ),
        .O(velocity1_carry__3_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_15
       (.I0(\interim_velocity_reg_n_0_[35] ),
        .O(velocity1_carry__3_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_16
       (.I0(\interim_velocity_reg_n_0_[34] ),
        .O(velocity1_carry__3_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_17
       (.I0(\interim_velocity_reg_n_0_[33] ),
        .O(velocity1_carry__3_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry__3_i_18
       (.I0(\interim_velocity_reg_n_0_[32] ),
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
        .DI({\interim_velocity_reg_n_0_[39] ,\interim_velocity_reg_n_0_[38] ,\interim_velocity_reg_n_0_[37] ,\interim_velocity_reg_n_0_[36] }),
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
        .DI({\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[72] ,\interim_velocity_reg_n_0_[40] }),
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
       (.I0(\interim_velocity_reg_n_0_[40] ),
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
        .DI({1'b0,1'b0,1'b0,i__carry_i_1_n_0}),
        .O(\NLW_velocity1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__0 
       (.CI(\velocity1_inferred__0/i__carry_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__0_n_0 ,\velocity1_inferred__0/i__carry__0_n_1 ,\velocity1_inferred__0/i__carry__0_n_2 ,\velocity1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__1 
       (.CI(\velocity1_inferred__0/i__carry__0_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__1_n_0 ,\velocity1_inferred__0/i__carry__1_n_1 ,\velocity1_inferred__0/i__carry__1_n_2 ,\velocity1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__2 
       (.CI(\velocity1_inferred__0/i__carry__1_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__2_n_0 ,\velocity1_inferred__0/i__carry__2_n_1 ,\velocity1_inferred__0/i__carry__2_n_2 ,\velocity1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__3 
       (.CI(\velocity1_inferred__0/i__carry__2_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__3_n_0 ,\velocity1_inferred__0/i__carry__3_n_1 ,\velocity1_inferred__0/i__carry__3_n_2 ,\velocity1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__3_O_UNCONNECTED [3:0]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__4 
       (.CI(\velocity1_inferred__0/i__carry__3_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__4_n_0 ,\velocity1_inferred__0/i__carry__4_n_1 ,\velocity1_inferred__0/i__carry__4_n_2 ,\velocity1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__4_O_UNCONNECTED [3:0]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__5 
       (.CI(\velocity1_inferred__0/i__carry__4_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__5_n_0 ,\velocity1_inferred__0/i__carry__5_n_1 ,\velocity1_inferred__0/i__carry__5_n_2 ,\velocity1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__5_O_UNCONNECTED [3:0]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__6 
       (.CI(\velocity1_inferred__0/i__carry__5_n_0 ),
        .CO({\velocity1_inferred__0/i__carry__6_n_0 ,\velocity1_inferred__0/i__carry__6_n_1 ,\velocity1_inferred__0/i__carry__6_n_2 ,\velocity1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__6_O_UNCONNECTED [3:0]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \velocity1_inferred__0/i__carry__7 
       (.CI(\velocity1_inferred__0/i__carry__6_n_0 ),
        .CO({\NLW_velocity1_inferred__0/i__carry__7_CO_UNCONNECTED [3],\velocity1_inferred__0/i__carry__7_n_1 ,\velocity1_inferred__0/i__carry__7_n_2 ,\velocity1_inferred__0/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_velocity1_inferred__0/i__carry__7_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__7_i_1_n_0,i__carry__7_i_2_n_0,i__carry__7_i_3_n_0}));
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
        .D(\interim_velocity_reg_n_0_[31] ),
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
    sys_clk);
  output [31:0]output_velocity_0;
  output [0:0]new_velocity_available_0;
  input [0:0]sys_clk;

  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire [0:0]sys_clk;

  (* X_CORE_INFO = "pid_calc,Vivado 2021.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_pid_calc_0_0 pid_calc_0
       (.Q(output_velocity_0),
        .new_velocity_available_0(new_velocity_available_0),
        .sys_clk(sys_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_pid_calc_0_0
   (Q,
    new_velocity_available_0,
    sys_clk);
  output [31:0]Q;
  output [0:0]new_velocity_available_0;
  input [0:0]sys_clk;

  wire [31:0]Q;
  wire [0:0]new_velocity_available_0;
  wire [0:0]sys_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_calc inst
       (.new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(Q),
        .sys_clk(sys_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t_wrapper
   (output_velocity_0,
    new_velocity_available_0,
    sys_clk);
  output [31:0]output_velocity_0;
  output [0:0]new_velocity_available_0;
  input [0:0]sys_clk;

  wire [0:0]new_velocity_available_0;
  wire [31:0]output_velocity_0;
  wire [0:0]sys_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pid_compressed_t pid_compressed_t_i
       (.new_velocity_available_0(new_velocity_available_0),
        .output_velocity_0(output_velocity_0),
        .sys_clk(sys_clk));
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
