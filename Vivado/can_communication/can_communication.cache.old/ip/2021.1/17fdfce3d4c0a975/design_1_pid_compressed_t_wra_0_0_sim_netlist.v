// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct 13 14:33:19 2026
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

  wire \<const0> ;

  assign new_velocity_available_0[0] = \<const0> ;
  assign output_velocity_0[31] = \<const0> ;
  assign output_velocity_0[30] = \<const0> ;
  assign output_velocity_0[29] = \<const0> ;
  assign output_velocity_0[28] = \<const0> ;
  assign output_velocity_0[27] = \<const0> ;
  assign output_velocity_0[26] = \<const0> ;
  assign output_velocity_0[25] = \<const0> ;
  assign output_velocity_0[24] = \<const0> ;
  assign output_velocity_0[23] = \<const0> ;
  assign output_velocity_0[22] = \<const0> ;
  assign output_velocity_0[21] = \<const0> ;
  assign output_velocity_0[20] = \<const0> ;
  assign output_velocity_0[19] = \<const0> ;
  assign output_velocity_0[18] = \<const0> ;
  assign output_velocity_0[17] = \<const0> ;
  assign output_velocity_0[16] = \<const0> ;
  assign output_velocity_0[15] = \<const0> ;
  assign output_velocity_0[14] = \<const0> ;
  assign output_velocity_0[13] = \<const0> ;
  assign output_velocity_0[12] = \<const0> ;
  assign output_velocity_0[11] = \<const0> ;
  assign output_velocity_0[10] = \<const0> ;
  assign output_velocity_0[9] = \<const0> ;
  assign output_velocity_0[8] = \<const0> ;
  assign output_velocity_0[7] = \<const0> ;
  assign output_velocity_0[6] = \<const0> ;
  assign output_velocity_0[5] = \<const0> ;
  assign output_velocity_0[4] = \<const0> ;
  assign output_velocity_0[3] = \<const0> ;
  assign output_velocity_0[2] = \<const0> ;
  assign output_velocity_0[1] = \<const0> ;
  assign output_velocity_0[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
