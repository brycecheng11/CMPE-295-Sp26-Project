// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Sep 20 14:03:36 2026
// Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pot_to_const_0_0_sim_netlist.v
// Design      : design_1_pot_to_const_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pot_to_const_0_0,pot_to_const,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pot_to_const,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    kp_vaux_p,
    kp_vaux_n,
    ki_vaux_p,
    ki_vaux_n,
    kd_vaux_p,
    kd_vaux_n,
    k_p,
    k_i,
    k_d);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input kp_vaux_p;
  input kp_vaux_n;
  input ki_vaux_p;
  input ki_vaux_n;
  input kd_vaux_p;
  input kd_vaux_n;
  output [11:0]k_p;
  output [11:0]k_i;
  output [11:0]k_d;

  wire clk;
  wire [11:0]k_d;
  wire [11:0]k_i;
  wire [11:0]k_p;
  wire kd_vaux_n;
  wire kd_vaux_p;
  wire ki_vaux_n;
  wire ki_vaux_p;
  wire kp_vaux_n;
  wire kp_vaux_p;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pot_to_const inst
       (.VAUXN({kd_vaux_n,kp_vaux_n,ki_vaux_n}),
        .VAUXP({kd_vaux_p,kp_vaux_p,ki_vaux_p}),
        .clk(clk),
        .k_d(k_d),
        .k_i(k_i),
        .k_p(k_p),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pot_to_const
   (k_p,
    k_i,
    k_d,
    clk,
    reset,
    VAUXN,
    VAUXP);
  output [11:0]k_p;
  output [11:0]k_i;
  output [11:0]k_d;
  input clk;
  input reset;
  input [2:0]VAUXN;
  input [2:0]VAUXP;

  wire \FSM_onehot_port_idx[0]_i_1_n_0 ;
  wire \FSM_onehot_port_idx[1]_i_1_n_0 ;
  wire \FSM_onehot_port_idx[2]_i_1_n_0 ;
  wire [2:0]VAUXN;
  wire [2:0]VAUXP;
  wire clk;
  wire [3:0]daddr;
  wire [15:4]do_out;
  wire drdy;
  wire eoc;
  wire [11:0]k_d;
  wire [11:0]k_i;
  wire [11:0]k_p;
  wire kd;
  wire \kd[11]_i_1_n_0 ;
  wire ki;
  wire \ki[11]_i_1_n_0 ;
  wire kp;
  wire \kp[11]_i_1_n_0 ;
  wire reset;
  wire NLW_u_xadc_BUSY_UNCONNECTED;
  wire NLW_u_xadc_EOS_UNCONNECTED;
  wire NLW_u_xadc_JTAGBUSY_UNCONNECTED;
  wire NLW_u_xadc_JTAGLOCKED_UNCONNECTED;
  wire NLW_u_xadc_JTAGMODIFIED_UNCONNECTED;
  wire NLW_u_xadc_OT_UNCONNECTED;
  wire [7:0]NLW_u_xadc_ALM_UNCONNECTED;
  wire [4:0]NLW_u_xadc_CHANNEL_UNCONNECTED;
  wire [3:0]NLW_u_xadc_DO_UNCONNECTED;
  wire [4:0]NLW_u_xadc_MUXADDR_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAACA)) 
    \FSM_onehot_port_idx[0]_i_1 
       (.I0(kp),
        .I1(kd),
        .I2(drdy),
        .I3(reset),
        .O(\FSM_onehot_port_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAACA)) 
    \FSM_onehot_port_idx[1]_i_1 
       (.I0(ki),
        .I1(kp),
        .I2(drdy),
        .I3(reset),
        .O(\FSM_onehot_port_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCCAC)) 
    \FSM_onehot_port_idx[2]_i_1 
       (.I0(ki),
        .I1(kd),
        .I2(drdy),
        .I3(reset),
        .O(\FSM_onehot_port_idx[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_port_idx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_port_idx[0]_i_1_n_0 ),
        .Q(kp),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_port_idx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_port_idx[1]_i_1_n_0 ),
        .Q(ki),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_port_idx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_port_idx[2]_i_1_n_0 ),
        .Q(kd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \kd[11]_i_1 
       (.I0(drdy),
        .I1(kd),
        .O(\kd[11]_i_1_n_0 ));
  FDRE \kd_reg[0] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[4]),
        .Q(k_d[0]),
        .R(reset));
  FDRE \kd_reg[10] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[14]),
        .Q(k_d[10]),
        .R(reset));
  FDRE \kd_reg[11] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[15]),
        .Q(k_d[11]),
        .R(reset));
  FDRE \kd_reg[1] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[5]),
        .Q(k_d[1]),
        .R(reset));
  FDRE \kd_reg[2] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[6]),
        .Q(k_d[2]),
        .R(reset));
  FDRE \kd_reg[3] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[7]),
        .Q(k_d[3]),
        .R(reset));
  FDRE \kd_reg[4] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[8]),
        .Q(k_d[4]),
        .R(reset));
  FDRE \kd_reg[5] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[9]),
        .Q(k_d[5]),
        .R(reset));
  FDRE \kd_reg[6] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[10]),
        .Q(k_d[6]),
        .R(reset));
  FDRE \kd_reg[7] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[11]),
        .Q(k_d[7]),
        .R(reset));
  FDRE \kd_reg[8] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[12]),
        .Q(k_d[8]),
        .R(reset));
  FDRE \kd_reg[9] 
       (.C(clk),
        .CE(\kd[11]_i_1_n_0 ),
        .D(do_out[13]),
        .Q(k_d[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h8)) 
    \ki[11]_i_1 
       (.I0(drdy),
        .I1(ki),
        .O(\ki[11]_i_1_n_0 ));
  FDRE \ki_reg[0] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[4]),
        .Q(k_i[0]),
        .R(reset));
  FDRE \ki_reg[10] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[14]),
        .Q(k_i[10]),
        .R(reset));
  FDRE \ki_reg[11] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[15]),
        .Q(k_i[11]),
        .R(reset));
  FDRE \ki_reg[1] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[5]),
        .Q(k_i[1]),
        .R(reset));
  FDRE \ki_reg[2] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[6]),
        .Q(k_i[2]),
        .R(reset));
  FDRE \ki_reg[3] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[7]),
        .Q(k_i[3]),
        .R(reset));
  FDRE \ki_reg[4] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[8]),
        .Q(k_i[4]),
        .R(reset));
  FDRE \ki_reg[5] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[9]),
        .Q(k_i[5]),
        .R(reset));
  FDRE \ki_reg[6] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[10]),
        .Q(k_i[6]),
        .R(reset));
  FDRE \ki_reg[7] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[11]),
        .Q(k_i[7]),
        .R(reset));
  FDRE \ki_reg[8] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[12]),
        .Q(k_i[8]),
        .R(reset));
  FDRE \ki_reg[9] 
       (.C(clk),
        .CE(\ki[11]_i_1_n_0 ),
        .D(do_out[13]),
        .Q(k_i[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h8)) 
    \kp[11]_i_1 
       (.I0(drdy),
        .I1(kp),
        .O(\kp[11]_i_1_n_0 ));
  FDRE \kp_reg[0] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[4]),
        .Q(k_p[0]),
        .R(reset));
  FDRE \kp_reg[10] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[14]),
        .Q(k_p[10]),
        .R(reset));
  FDRE \kp_reg[11] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[15]),
        .Q(k_p[11]),
        .R(reset));
  FDRE \kp_reg[1] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[5]),
        .Q(k_p[1]),
        .R(reset));
  FDRE \kp_reg[2] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[6]),
        .Q(k_p[2]),
        .R(reset));
  FDRE \kp_reg[3] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[7]),
        .Q(k_p[3]),
        .R(reset));
  FDRE \kp_reg[4] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[8]),
        .Q(k_p[4]),
        .R(reset));
  FDRE \kp_reg[5] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[9]),
        .Q(k_p[5]),
        .R(reset));
  FDRE \kp_reg[6] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[10]),
        .Q(k_p[6]),
        .R(reset));
  FDRE \kp_reg[7] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[11]),
        .Q(k_p[7]),
        .R(reset));
  FDRE \kp_reg[8] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[12]),
        .Q(k_p[8]),
        .R(reset));
  FDRE \kp_reg[9] 
       (.C(clk),
        .CE(\kp[11]_i_1_n_0 ),
        .D(do_out[13]),
        .Q(k_p[9]),
        .R(reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XADC #(
    .INIT_40(16'h9000),
    .INIT_41(16'h2EF0),
    .INIT_42(16'h0800),
    .INIT_43(16'h0000),
    .INIT_44(16'h0000),
    .INIT_45(16'h0000),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h4701),
    .INIT_49(16'hC080),
    .INIT_4A(16'h0000),
    .INIT_4B(16'hC080),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'hC080),
    .INIT_50(16'h0000),
    .INIT_51(16'h0000),
    .INIT_52(16'h0000),
    .INIT_53(16'h0000),
    .INIT_54(16'h0000),
    .INIT_55(16'h0000),
    .INIT_56(16'h0000),
    .INIT_57(16'h0000),
    .INIT_58(16'h0000),
    .INIT_59(16'h0000),
    .INIT_5A(16'h0000),
    .INIT_5B(16'h0000),
    .INIT_5C(16'h0000),
    .INIT_5D(16'h0000),
    .INIT_5E(16'h0000),
    .INIT_5F(16'h0000),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("ZYNQ"),
    .SIM_MONITOR_FILE("design.txt")) 
    u_xadc
       (.ALM(NLW_u_xadc_ALM_UNCONNECTED[7:0]),
        .BUSY(NLW_u_xadc_BUSY_UNCONNECTED),
        .CHANNEL(NLW_u_xadc_CHANNEL_UNCONNECTED[4:0]),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR({1'b0,1'b0,1'b1,daddr[3],1'b1,1'b1,daddr[0]}),
        .DCLK(clk),
        .DEN(eoc),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO({do_out,NLW_u_xadc_DO_UNCONNECTED[3:0]}),
        .DRDY(drdy),
        .DWE(1'b0),
        .EOC(eoc),
        .EOS(NLW_u_xadc_EOS_UNCONNECTED),
        .JTAGBUSY(NLW_u_xadc_JTAGBUSY_UNCONNECTED),
        .JTAGLOCKED(NLW_u_xadc_JTAGLOCKED_UNCONNECTED),
        .JTAGMODIFIED(NLW_u_xadc_JTAGMODIFIED_UNCONNECTED),
        .MUXADDR(NLW_u_xadc_MUXADDR_UNCONNECTED[4:0]),
        .OT(NLW_u_xadc_OT_UNCONNECTED),
        .RESET(reset),
        .VAUXN({VAUXN[2:1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,VAUXN[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VAUXP({VAUXP[2:1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,VAUXP[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VN(1'b0),
        .VP(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    u_xadc_i_1
       (.I0(kp),
        .I1(ki),
        .O(daddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    u_xadc_i_2
       (.I0(ki),
        .I1(kp),
        .I2(kd),
        .O(daddr[0]));
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
