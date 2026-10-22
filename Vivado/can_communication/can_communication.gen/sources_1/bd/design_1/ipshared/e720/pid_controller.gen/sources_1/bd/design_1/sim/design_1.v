//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Mon Sep 14 17:09:23 2026
//Host        : Dell-XPS running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;
  input [31:0]target_angle_0;
  input [63:0]time_curr_0;

  wire [31:0]angle_0_1;
  wire clk_wiz_clk_out1;
  wire [31:0]initial_math_0_derivative;
  wire [31:0]initial_math_0_error;
  wire [31:0]initial_math_0_integral;
  wire [11:0]k_d_0_1;
  wire [11:0]k_i_0_1;
  wire [11:0]k_p_0_1;
  wire [0:0]new_angle_available_0_1;
  wire [0:0]new_target_angle_available_0_1;
  wire [31:0]prev_value_flip_flop_0_error_out;
  wire [31:0]prev_value_flip_flop_0_integral_out;
  wire [63:0]prev_value_flip_flop_0_time_out;
  wire reset_rtl_1;
  wire sys_clock_1;
  wire [31:0]target_angle_0_1;
  wire [0:0]term_calculation_0_new_velocity_available;
  wire [31:0]term_calculation_0_output_velocity;
  wire [63:0]time_calc_0_dt;
  wire [0:0]time_calc_0_new_angle_pass_on;
  wire [63:0]time_calc_0_new_time;
  wire [63:0]time_curr_0_1;

  assign angle_0_1 = angle_0[31:0];
  assign k_d_0_1 = k_d_0[11:0];
  assign k_i_0_1 = k_i_0[11:0];
  assign k_p_0_1 = k_p_0[11:0];
  assign new_angle_available_0_1 = new_angle_available_0[0];
  assign new_target_angle_available_0_1 = new_target_angle_available_0[0];
  assign new_velocity_available_0[0] = term_calculation_0_new_velocity_available;
  assign output_velocity_0[31:0] = term_calculation_0_output_velocity;
  assign reset_rtl_1 = reset_rtl;
  assign sys_clock_1 = sys_clock;
  assign target_angle_0_1 = target_angle_0[31:0];
  assign time_curr_0_1 = time_curr_0[63:0];
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .reset(reset_rtl_1));
  design_1_initial_math_0_0 initial_math_0
       (.angle(angle_0_1),
        .derivative_out(initial_math_0_derivative),
        .dt(time_calc_0_dt),
        .error_in(prev_value_flip_flop_0_error_out),
        .error_out(initial_math_0_error),
        .integral_in(prev_value_flip_flop_0_integral_out),
        .integral_out(initial_math_0_integral),
        .new_angle_available(time_calc_0_new_angle_pass_on),
        .new_target_angle_available(new_target_angle_available_0_1),
        .target_angle(target_angle_0_1));
  design_1_prev_value_flip_flop_0_0 prev_value_flip_flop_0
       (.clock(clk_wiz_clk_out1),
        .error_in(initial_math_0_error),
        .error_out(prev_value_flip_flop_0_error_out),
        .integral_in(initial_math_0_integral),
        .integral_out(prev_value_flip_flop_0_integral_out),
        .time_in(time_calc_0_new_time),
        .time_out(prev_value_flip_flop_0_time_out));
  design_1_term_calculation_0_0 term_calculation_0
       (.clock(clk_wiz_clk_out1),
        .derivative(initial_math_0_derivative),
        .error(initial_math_0_error),
        .integral(initial_math_0_integral),
        .k_d(k_d_0_1),
        .k_i(k_i_0_1),
        .k_p(k_p_0_1),
        .new_velocity_available(term_calculation_0_new_velocity_available),
        .output_velocity(term_calculation_0_output_velocity));
  design_1_time_calc_0_0 time_calc_0
       (.clock(clk_wiz_clk_out1),
        .dt_out(time_calc_0_dt),
        .new_angle_available(new_angle_available_0_1),
        .new_angle_pass_on(time_calc_0_new_angle_pass_on),
        .new_time_out(time_calc_0_new_time),
        .time_curr(time_curr_0_1),
        .time_prev(prev_value_flip_flop_0_time_out));
endmodule
