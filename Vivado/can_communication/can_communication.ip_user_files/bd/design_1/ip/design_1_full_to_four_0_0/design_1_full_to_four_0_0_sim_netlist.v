// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov  8 15:45:38 2026
// Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode funcsim
//               /home/kenny/Downloads/can_communication/can_communication.gen/sources_1/bd/design_1/ip/design_1_full_to_four_0_0/design_1_full_to_four_0_0_sim_netlist.v
// Design      : design_1_full_to_four_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_full_to_four_0_0,full_to_four,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "full_to_four,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module design_1_full_to_four_0_0
   (clock,
    sw,
    ps_ready,
    pl_ready,
    pterm,
    iterm,
    dterm,
    velocity,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clock;
  input [3:0]sw;
  input ps_ready;
  input pl_ready;
  input [31:0]pterm;
  input [31:0]iterm;
  input [31:0]dterm;
  input [31:0]velocity;
  output [3:0]led;

  wire clock;
  wire [31:0]dterm;
  wire [31:0]iterm;
  wire [3:0]led;
  wire pl_ready;
  wire ps_ready;
  wire [31:0]pterm;
  wire [3:0]sw;
  wire [31:0]velocity;

  design_1_full_to_four_0_0_full_to_four inst
       (.clock(clock),
        .dterm({dterm[12],dterm[8],dterm[4],dterm[0]}),
        .iterm({iterm[12],iterm[8],iterm[4],iterm[0]}),
        .led(led),
        .pl_ready(pl_ready),
        .ps_ready(ps_ready),
        .pterm({pterm[12],pterm[8],pterm[4],pterm[0]}),
        .sw(sw),
        .velocity({velocity[12],velocity[8],velocity[4],velocity[0]}));
endmodule

(* ORIG_REF_NAME = "full_to_four" *) 
module design_1_full_to_four_0_0_full_to_four
   (led,
    pl_ready,
    pterm,
    iterm,
    sw,
    ps_ready,
    velocity,
    dterm,
    clock);
  output [3:0]led;
  input pl_ready;
  input [3:0]pterm;
  input [3:0]iterm;
  input [3:0]sw;
  input ps_ready;
  input [3:0]velocity;
  input [3:0]dterm;
  input clock;

  wire clock;
  wire [3:0]dterm;
  wire [3:0]iterm;
  wire [3:0]led;
  wire pl_ready;
  wire ps_ready;
  wire [3:0]pterm;
  wire [3:0]sw;
  wire \value[0]_i_1_n_0 ;
  wire \value[0]_i_2_n_0 ;
  wire \value[12]_i_1_n_0 ;
  wire \value[12]_i_2_n_0 ;
  wire \value[4]_i_1_n_0 ;
  wire \value[4]_i_2_n_0 ;
  wire \value[8]_i_1_n_0 ;
  wire \value[8]_i_2_n_0 ;
  wire [3:0]velocity;

  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \value[0]_i_1 
       (.I0(\value[0]_i_2_n_0 ),
        .I1(sw[1]),
        .I2(sw[2]),
        .I3(velocity[0]),
        .I4(sw[0]),
        .I5(dterm[0]),
        .O(\value[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFFF0AACC00)) 
    \value[0]_i_2 
       (.I0(pl_ready),
        .I1(pterm[0]),
        .I2(iterm[0]),
        .I3(sw[1]),
        .I4(sw[0]),
        .I5(sw[2]),
        .O(\value[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAC00FF00AC00)) 
    \value[12]_i_1 
       (.I0(iterm[3]),
        .I1(pterm[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(sw[2]),
        .I5(\value[12]_i_2_n_0 ),
        .O(\value[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEAE22A2)) 
    \value[12]_i_2 
       (.I0(velocity[3]),
        .I1(sw[2]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(dterm[3]),
        .O(\value[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \value[4]_i_1 
       (.I0(\value[4]_i_2_n_0 ),
        .I1(sw[1]),
        .I2(sw[2]),
        .I3(velocity[1]),
        .I4(sw[0]),
        .I5(dterm[1]),
        .O(\value[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFFF0AACC00)) 
    \value[4]_i_2 
       (.I0(ps_ready),
        .I1(pterm[1]),
        .I2(iterm[1]),
        .I3(sw[1]),
        .I4(sw[0]),
        .I5(sw[2]),
        .O(\value[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAC00FF00AC00)) 
    \value[8]_i_1 
       (.I0(iterm[2]),
        .I1(pterm[2]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(sw[2]),
        .I5(\value[8]_i_2_n_0 ),
        .O(\value[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEAE22A2)) 
    \value[8]_i_2 
       (.I0(velocity[2]),
        .I1(sw[2]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(dterm[2]),
        .O(\value[8]_i_2_n_0 ));
  FDSE \value_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\value[0]_i_1_n_0 ),
        .Q(led[0]),
        .S(sw[3]));
  FDSE \value_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(\value[12]_i_1_n_0 ),
        .Q(led[3]),
        .S(sw[3]));
  FDSE \value_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(\value[4]_i_1_n_0 ),
        .Q(led[1]),
        .S(sw[3]));
  FDSE \value_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(\value[8]_i_1_n_0 ),
        .Q(led[2]),
        .S(sw[3]));
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
