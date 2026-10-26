// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Sep 16 23:12:43 2026
// Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_PID_Controller_P_0_2_sim_netlist.v
// Design      : design_1_AXI_PID_Controller_P_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0
   (pid_angle,
    pid_target_angle,
    pid_time,
    pid_new_angle,
    pid_new_target_angle,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    pid_output_velocity,
    pid_new_velocity,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_rready);
  output [31:0]pid_angle;
  output [31:0]pid_target_angle;
  output [63:0]pid_time;
  output [0:0]pid_new_angle;
  output [0:0]pid_new_target_angle;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_bvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  input [31:0]pid_output_velocity;
  input [0:0]pid_new_velocity;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_rready;

  wire [31:0]pid_angle;
  wire [0:0]pid_new_angle;
  wire [0:0]pid_new_target_angle;
  wire [0:0]pid_new_velocity;
  wire [31:0]pid_output_velocity;
  wire [31:0]pid_target_angle;
  wire [63:0]pid_time;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_RRESP_UNCONNECTED;

  (* ADDR_LSB = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* OPT_MEM_ADDR_BITS = "3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst
       (.S_AXI_ACLK(s00_axi_aclk),
        .S_AXI_ARADDR({s00_axi_araddr,1'b0,1'b0}),
        .S_AXI_ARESETN(s00_axi_aresetn),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_ARVALID(s00_axi_arvalid),
        .S_AXI_AWADDR({s00_axi_awaddr,1'b0,1'b0}),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_AWVALID(s00_axi_awvalid),
        .S_AXI_BREADY(s00_axi_bready),
        .S_AXI_BRESP(NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(s00_axi_bvalid),
        .S_AXI_RDATA(s00_axi_rdata),
        .S_AXI_RREADY(s00_axi_rready),
        .S_AXI_RRESP(NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(s00_axi_rvalid),
        .S_AXI_WDATA(s00_axi_wdata),
        .S_AXI_WREADY(s00_axi_wready),
        .S_AXI_WSTRB(s00_axi_wstrb),
        .S_AXI_WVALID(s00_axi_wvalid),
        .pid_angle(pid_angle),
        .pid_new_angle(pid_new_angle),
        .pid_new_target_angle(pid_new_target_angle),
        .pid_new_velocity(pid_new_velocity),
        .pid_output_velocity(pid_output_velocity),
        .pid_target_angle(pid_target_angle),
        .pid_time(pid_time));
endmodule

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "6" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* OPT_MEM_ADDR_BITS = "3" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI
   (pid_angle,
    pid_target_angle,
    pid_time,
    pid_new_angle,
    pid_new_target_angle,
    pid_output_velocity,
    pid_new_velocity,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* mark_debug = "true" *) output [31:0]pid_angle;
  output [31:0]pid_target_angle;
  output [63:0]pid_time;
  output [0:0]pid_new_angle;
  output [0:0]pid_new_target_angle;
  input [31:0]pid_output_velocity;
  input [0:0]pid_new_velocity;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [5:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [5:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [5:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [3:0]p_0_in;
  wire [31:0]p_1_in;
  (* MARK_DEBUG *) wire [31:0]pid_angle;
  wire [0:0]pid_new_angle;
  wire [0:0]pid_new_target_angle;
  wire [0:0]pid_new_velocity;
  wire [31:0]pid_output_velocity;
  wire [31:0]pid_target_angle;
  wire [63:0]pid_time;
  wire [31:0]reg_data_out;
  wire [3:0]sel0;
  wire [31:2]slv_reg0;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_2_n_0 ;
  wire \slv_reg1[23]_i_2_n_0 ;
  wire \slv_reg1[31]_i_3_n_0 ;
  wire \slv_reg1[31]_i_4_n_0 ;
  wire \slv_reg1[7]_i_2_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[31]_i_2_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFF7FF070F070F070)) 
    aw_en_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(sel0[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(sel0[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[4]),
        .Q(sel0[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[5]),
        .Q(sel0[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(p_0_in[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(p_0_in[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[4]),
        .Q(p_0_in[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[5]),
        .Q(p_0_in[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(\axi_rdata[0]_i_3_n_0 ),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'h0000000000A000C0)) 
    \axi_rdata[0]_i_2 
       (.I0(pid_new_velocity),
        .I1(pid_output_velocity[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[0]_i_3 
       (.I0(pid_angle[0]),
        .I1(slv_reg3[0]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(pid_new_angle),
        .I5(slv_reg2[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[0]_i_4 
       (.I0(pid_target_angle[0]),
        .I1(pid_time[32]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[0]),
        .I5(pid_time[0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[10]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[10]_i_2_n_0 ),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(pid_output_velocity[10]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[10]_i_2 
       (.I0(pid_angle[10]),
        .I1(slv_reg3[10]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[10]),
        .I5(slv_reg2[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[10]_i_3 
       (.I0(pid_target_angle[10]),
        .I1(pid_time[42]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[10]),
        .I5(pid_time[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[11]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[11]_i_2_n_0 ),
        .I3(\axi_rdata[11]_i_3_n_0 ),
        .I4(pid_output_velocity[11]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[11]_i_2 
       (.I0(pid_angle[11]),
        .I1(slv_reg3[11]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[11]),
        .I5(slv_reg2[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[11]_i_3 
       (.I0(pid_target_angle[11]),
        .I1(pid_time[43]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[11]),
        .I5(pid_time[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[12]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[12]_i_2_n_0 ),
        .I3(\axi_rdata[12]_i_3_n_0 ),
        .I4(pid_output_velocity[12]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[12]_i_2 
       (.I0(pid_angle[12]),
        .I1(slv_reg3[12]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[12]),
        .I5(slv_reg2[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[12]_i_3 
       (.I0(pid_target_angle[12]),
        .I1(pid_time[44]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[12]),
        .I5(pid_time[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[13]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[13]_i_2_n_0 ),
        .I3(\axi_rdata[13]_i_3_n_0 ),
        .I4(pid_output_velocity[13]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[13]_i_2 
       (.I0(pid_angle[13]),
        .I1(slv_reg3[13]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[13]),
        .I5(slv_reg2[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[13]_i_3 
       (.I0(pid_target_angle[13]),
        .I1(pid_time[45]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[13]),
        .I5(pid_time[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[14]_i_2_n_0 ),
        .I3(\axi_rdata[14]_i_3_n_0 ),
        .I4(pid_output_velocity[14]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[14]_i_2 
       (.I0(pid_angle[14]),
        .I1(slv_reg3[14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[14]),
        .I5(slv_reg2[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[14]_i_3 
       (.I0(pid_target_angle[14]),
        .I1(pid_time[46]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[14]),
        .I5(pid_time[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(\axi_rdata[15]_i_3_n_0 ),
        .I4(pid_output_velocity[15]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[15]_i_2 
       (.I0(pid_angle[15]),
        .I1(slv_reg3[15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[15]),
        .I5(slv_reg2[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[15]_i_3 
       (.I0(pid_target_angle[15]),
        .I1(pid_time[47]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[15]),
        .I5(pid_time[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[16]_i_2_n_0 ),
        .I3(\axi_rdata[16]_i_3_n_0 ),
        .I4(pid_output_velocity[16]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[16]_i_2 
       (.I0(pid_angle[16]),
        .I1(slv_reg3[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[16]),
        .I5(slv_reg2[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[16]_i_3 
       (.I0(pid_target_angle[16]),
        .I1(pid_time[48]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[16]),
        .I5(pid_time[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[17]_i_2_n_0 ),
        .I3(\axi_rdata[17]_i_3_n_0 ),
        .I4(pid_output_velocity[17]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[17]_i_2 
       (.I0(pid_angle[17]),
        .I1(slv_reg3[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[17]),
        .I5(slv_reg2[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[17]_i_3 
       (.I0(pid_target_angle[17]),
        .I1(pid_time[49]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[17]),
        .I5(pid_time[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[18]_i_2_n_0 ),
        .I3(\axi_rdata[18]_i_3_n_0 ),
        .I4(pid_output_velocity[18]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[18]_i_2 
       (.I0(pid_angle[18]),
        .I1(slv_reg3[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[18]),
        .I5(slv_reg2[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[18]_i_3 
       (.I0(pid_target_angle[18]),
        .I1(pid_time[50]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[18]),
        .I5(pid_time[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[19]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[19]_i_2_n_0 ),
        .I3(\axi_rdata[19]_i_3_n_0 ),
        .I4(pid_output_velocity[19]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[19]_i_2 
       (.I0(pid_angle[19]),
        .I1(slv_reg3[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[19]),
        .I5(slv_reg2[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[19]_i_3 
       (.I0(pid_target_angle[19]),
        .I1(pid_time[51]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[19]),
        .I5(pid_time[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[1]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[1]_i_2_n_0 ),
        .I3(\axi_rdata[1]_i_3_n_0 ),
        .I4(pid_output_velocity[1]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[1]_i_2 
       (.I0(pid_angle[1]),
        .I1(slv_reg3[1]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(pid_new_target_angle),
        .I5(slv_reg2[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[1]_i_3 
       (.I0(pid_target_angle[1]),
        .I1(pid_time[33]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[1]),
        .I5(pid_time[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[20]_i_2_n_0 ),
        .I3(\axi_rdata[20]_i_3_n_0 ),
        .I4(pid_output_velocity[20]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[20]_i_2 
       (.I0(pid_angle[20]),
        .I1(slv_reg3[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[20]),
        .I5(slv_reg2[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[20]_i_3 
       (.I0(pid_target_angle[20]),
        .I1(pid_time[52]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[20]),
        .I5(pid_time[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[21]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[21]_i_2_n_0 ),
        .I3(\axi_rdata[21]_i_3_n_0 ),
        .I4(pid_output_velocity[21]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[21]_i_2 
       (.I0(pid_angle[21]),
        .I1(slv_reg3[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[21]),
        .I5(slv_reg2[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[21]_i_3 
       (.I0(pid_target_angle[21]),
        .I1(pid_time[53]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[21]),
        .I5(pid_time[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[22]_i_2_n_0 ),
        .I3(\axi_rdata[22]_i_3_n_0 ),
        .I4(pid_output_velocity[22]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[22]_i_2 
       (.I0(pid_angle[22]),
        .I1(slv_reg3[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[22]),
        .I5(slv_reg2[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[22]_i_3 
       (.I0(pid_target_angle[22]),
        .I1(pid_time[54]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[22]),
        .I5(pid_time[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[23]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[23]_i_2_n_0 ),
        .I3(\axi_rdata[23]_i_3_n_0 ),
        .I4(pid_output_velocity[23]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[23]_i_2 
       (.I0(pid_angle[23]),
        .I1(slv_reg3[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[23]),
        .I5(slv_reg2[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[23]_i_3 
       (.I0(pid_target_angle[23]),
        .I1(pid_time[55]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[23]),
        .I5(pid_time[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[24]_i_2_n_0 ),
        .I3(\axi_rdata[24]_i_3_n_0 ),
        .I4(pid_output_velocity[24]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[24]_i_2 
       (.I0(pid_angle[24]),
        .I1(slv_reg3[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[24]),
        .I5(slv_reg2[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[24]_i_3 
       (.I0(pid_target_angle[24]),
        .I1(pid_time[56]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[24]),
        .I5(pid_time[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[25]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[25]_i_2_n_0 ),
        .I3(\axi_rdata[25]_i_3_n_0 ),
        .I4(pid_output_velocity[25]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[25]_i_2 
       (.I0(pid_angle[25]),
        .I1(slv_reg3[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[25]),
        .I5(slv_reg2[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[25]_i_3 
       (.I0(pid_target_angle[25]),
        .I1(pid_time[57]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[25]),
        .I5(pid_time[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[26]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[26]_i_2_n_0 ),
        .I3(\axi_rdata[26]_i_3_n_0 ),
        .I4(pid_output_velocity[26]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[26]_i_2 
       (.I0(pid_angle[26]),
        .I1(slv_reg3[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[26]),
        .I5(slv_reg2[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[26]_i_3 
       (.I0(pid_target_angle[26]),
        .I1(pid_time[58]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[26]),
        .I5(pid_time[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[27]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[27]_i_2_n_0 ),
        .I3(\axi_rdata[27]_i_3_n_0 ),
        .I4(pid_output_velocity[27]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[27]_i_2 
       (.I0(pid_angle[27]),
        .I1(slv_reg3[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[27]),
        .I5(slv_reg2[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[27]_i_3 
       (.I0(pid_target_angle[27]),
        .I1(pid_time[59]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[27]),
        .I5(pid_time[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[28]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[28]_i_2_n_0 ),
        .I3(\axi_rdata[28]_i_3_n_0 ),
        .I4(pid_output_velocity[28]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[28]_i_2 
       (.I0(pid_angle[28]),
        .I1(slv_reg3[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[28]),
        .I5(slv_reg2[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[28]_i_3 
       (.I0(pid_target_angle[28]),
        .I1(pid_time[60]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[28]),
        .I5(pid_time[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[29]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[29]_i_2_n_0 ),
        .I3(\axi_rdata[29]_i_3_n_0 ),
        .I4(pid_output_velocity[29]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[29]_i_2 
       (.I0(pid_angle[29]),
        .I1(slv_reg3[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[29]),
        .I5(slv_reg2[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[29]_i_3 
       (.I0(pid_target_angle[29]),
        .I1(pid_time[61]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[29]),
        .I5(pid_time[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[2]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[2]_i_2_n_0 ),
        .I3(\axi_rdata[2]_i_3_n_0 ),
        .I4(pid_output_velocity[2]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[2]_i_2 
       (.I0(pid_angle[2]),
        .I1(slv_reg3[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[2]),
        .I5(slv_reg2[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[2]_i_3 
       (.I0(pid_target_angle[2]),
        .I1(pid_time[34]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[2]),
        .I5(pid_time[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[30]_i_2_n_0 ),
        .I3(\axi_rdata[30]_i_3_n_0 ),
        .I4(pid_output_velocity[30]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[30]_i_2 
       (.I0(pid_angle[30]),
        .I1(slv_reg3[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[30]),
        .I5(slv_reg2[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[30]_i_3 
       (.I0(pid_target_angle[30]),
        .I1(pid_time[62]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[30]),
        .I5(pid_time[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[31]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(pid_output_velocity[31]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[31]_i_3 
       (.I0(pid_angle[31]),
        .I1(slv_reg3[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[31]),
        .I5(slv_reg2[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[31]_i_4 
       (.I0(pid_target_angle[31]),
        .I1(pid_time[63]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[31]),
        .I5(pid_time[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \axi_rdata[31]_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[3]_i_2_n_0 ),
        .I3(\axi_rdata[3]_i_3_n_0 ),
        .I4(pid_output_velocity[3]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[3]_i_2 
       (.I0(pid_angle[3]),
        .I1(slv_reg3[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[3]),
        .I5(slv_reg2[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[3]_i_3 
       (.I0(pid_target_angle[3]),
        .I1(pid_time[35]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[3]),
        .I5(pid_time[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[4]_i_2_n_0 ),
        .I3(\axi_rdata[4]_i_3_n_0 ),
        .I4(pid_output_velocity[4]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[4]_i_2 
       (.I0(pid_angle[4]),
        .I1(slv_reg3[4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[4]),
        .I5(slv_reg2[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[4]_i_3 
       (.I0(pid_target_angle[4]),
        .I1(pid_time[36]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[4]),
        .I5(pid_time[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[5]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[5]_i_2_n_0 ),
        .I3(\axi_rdata[5]_i_3_n_0 ),
        .I4(pid_output_velocity[5]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[5]_i_2 
       (.I0(pid_angle[5]),
        .I1(slv_reg3[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[5]),
        .I5(slv_reg2[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[5]_i_3 
       (.I0(pid_target_angle[5]),
        .I1(pid_time[37]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[5]),
        .I5(pid_time[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[6]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[6]_i_2_n_0 ),
        .I3(\axi_rdata[6]_i_3_n_0 ),
        .I4(pid_output_velocity[6]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[6]_i_2 
       (.I0(pid_angle[6]),
        .I1(slv_reg3[6]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[6]),
        .I5(slv_reg2[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[6]_i_3 
       (.I0(pid_target_angle[6]),
        .I1(pid_time[38]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[6]),
        .I5(pid_time[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[7]_i_2_n_0 ),
        .I3(\axi_rdata[7]_i_3_n_0 ),
        .I4(pid_output_velocity[7]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[7]_i_2 
       (.I0(pid_angle[7]),
        .I1(slv_reg3[7]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[7]),
        .I5(slv_reg2[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[7]_i_3 
       (.I0(pid_target_angle[7]),
        .I1(pid_time[39]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[7]),
        .I5(pid_time[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[8]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[8]_i_2_n_0 ),
        .I3(\axi_rdata[8]_i_3_n_0 ),
        .I4(pid_output_velocity[8]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[8]_i_2 
       (.I0(pid_angle[8]),
        .I1(slv_reg3[8]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[8]),
        .I5(slv_reg2[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[8]_i_3 
       (.I0(pid_target_angle[8]),
        .I1(pid_time[40]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[8]),
        .I5(pid_time[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321032103210)) 
    \axi_rdata[9]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[9]_i_2_n_0 ),
        .I3(\axi_rdata[9]_i_3_n_0 ),
        .I4(pid_output_velocity[9]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[9]_i_2 
       (.I0(pid_angle[9]),
        .I1(slv_reg3[9]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg0[9]),
        .I5(slv_reg2[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[9]_i_3 
       (.I0(pid_target_angle[9]),
        .I1(pid_time[41]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg4[9]),
        .I5(pid_time[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[0]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(pid_new_angle),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg0[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg0[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg0[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg0[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg0[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg0[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg0[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg0[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg0[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg0[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(pid_new_target_angle),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg0[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg0[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg0[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg0[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg0[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg0[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg0[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg0[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg0[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg0[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg0[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg0[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg0[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg0[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg0[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg0[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg0[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg0[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg0[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg0[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[0]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[10]_i_1 
       (.I0(S_AXI_WDATA[10]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[10]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[11]_i_1 
       (.I0(S_AXI_WDATA[11]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[11]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[12]_i_1 
       (.I0(S_AXI_WDATA[12]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[12]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[13]_i_1 
       (.I0(S_AXI_WDATA[13]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[13]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[14]_i_1 
       (.I0(S_AXI_WDATA[14]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[14]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[15]_i_1 
       (.I0(S_AXI_WDATA[15]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[15]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \slv_reg1[15]_i_2 
       (.I0(S_AXI_WSTRB[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg1[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[16]_i_1 
       (.I0(S_AXI_WDATA[16]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[16]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[17]_i_1 
       (.I0(S_AXI_WDATA[17]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[17]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[18]_i_1 
       (.I0(S_AXI_WDATA[18]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[18]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[19]_i_1 
       (.I0(S_AXI_WDATA[19]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[19]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[1]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[20]_i_1 
       (.I0(S_AXI_WDATA[20]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[20]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[21]_i_1 
       (.I0(S_AXI_WDATA[21]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[21]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[22]_i_1 
       (.I0(S_AXI_WDATA[22]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[22]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[23]_i_1 
       (.I0(S_AXI_WDATA[23]),
        .I1(S_AXI_WSTRB[2]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[23]),
        .I4(\slv_reg1[23]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \slv_reg1[23]_i_2 
       (.I0(S_AXI_WSTRB[2]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg1[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[24]_i_1 
       (.I0(S_AXI_WDATA[24]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[24]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[25]_i_1 
       (.I0(S_AXI_WDATA[25]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[25]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[26]_i_1 
       (.I0(S_AXI_WDATA[26]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[26]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[27]_i_1 
       (.I0(S_AXI_WDATA[27]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[27]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[28]_i_1 
       (.I0(S_AXI_WDATA[28]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[28]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[29]_i_1 
       (.I0(S_AXI_WDATA[29]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[29]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[2]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[30]_i_1 
       (.I0(S_AXI_WDATA[30]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[30]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[30]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_1 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(slv_reg_wren));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WDATA[31]),
        .I1(S_AXI_WSTRB[3]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[31]),
        .I4(\slv_reg1[31]_i_4_n_0 ),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg1[31]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(\slv_reg1[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \slv_reg1[31]_i_4 
       (.I0(S_AXI_WSTRB[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg1[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[3]_i_1 
       (.I0(S_AXI_WDATA[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[3]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[4]_i_1 
       (.I0(S_AXI_WDATA[4]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[4]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[5]_i_1 
       (.I0(S_AXI_WDATA[5]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[5]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[6]_i_1 
       (.I0(S_AXI_WDATA[6]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[6]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[7]_i_1 
       (.I0(S_AXI_WDATA[7]),
        .I1(S_AXI_WSTRB[0]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[7]),
        .I4(\slv_reg1[7]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \slv_reg1[7]_i_2 
       (.I0(S_AXI_WSTRB[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg1[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[8]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[8]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \slv_reg1[9]_i_1 
       (.I0(S_AXI_WDATA[9]),
        .I1(S_AXI_WSTRB[1]),
        .I2(\slv_reg1[31]_i_3_n_0 ),
        .I3(pid_angle[9]),
        .I4(\slv_reg1[15]_i_2_n_0 ),
        .O(p_1_in[9]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst
       (.I0(slv_reg1[31]),
        .O(pid_angle[31]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__0
       (.I0(slv_reg1[30]),
        .O(pid_angle[30]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__1
       (.I0(slv_reg1[29]),
        .O(pid_angle[29]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__10
       (.I0(slv_reg1[20]),
        .O(pid_angle[20]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__11
       (.I0(slv_reg1[19]),
        .O(pid_angle[19]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__12
       (.I0(slv_reg1[18]),
        .O(pid_angle[18]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__13
       (.I0(slv_reg1[17]),
        .O(pid_angle[17]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__14
       (.I0(slv_reg1[16]),
        .O(pid_angle[16]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__15
       (.I0(slv_reg1[15]),
        .O(pid_angle[15]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__16
       (.I0(slv_reg1[14]),
        .O(pid_angle[14]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__17
       (.I0(slv_reg1[13]),
        .O(pid_angle[13]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__18
       (.I0(slv_reg1[12]),
        .O(pid_angle[12]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__19
       (.I0(slv_reg1[11]),
        .O(pid_angle[11]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__2
       (.I0(slv_reg1[28]),
        .O(pid_angle[28]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__20
       (.I0(slv_reg1[10]),
        .O(pid_angle[10]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__21
       (.I0(slv_reg1[9]),
        .O(pid_angle[9]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__22
       (.I0(slv_reg1[8]),
        .O(pid_angle[8]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__23
       (.I0(slv_reg1[7]),
        .O(pid_angle[7]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__24
       (.I0(slv_reg1[6]),
        .O(pid_angle[6]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__25
       (.I0(slv_reg1[5]),
        .O(pid_angle[5]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__26
       (.I0(slv_reg1[4]),
        .O(pid_angle[4]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__27
       (.I0(slv_reg1[3]),
        .O(pid_angle[3]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__28
       (.I0(slv_reg1[2]),
        .O(pid_angle[2]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__29
       (.I0(slv_reg1[1]),
        .O(pid_angle[1]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__3
       (.I0(slv_reg1[27]),
        .O(pid_angle[27]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__30
       (.I0(slv_reg1[0]),
        .O(pid_angle[0]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__4
       (.I0(slv_reg1[26]),
        .O(pid_angle[26]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__5
       (.I0(slv_reg1[25]),
        .O(pid_angle[25]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__6
       (.I0(slv_reg1[24]),
        .O(pid_angle[24]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__7
       (.I0(slv_reg1[23]),
        .O(pid_angle[23]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__8
       (.I0(slv_reg1[22]),
        .O(pid_angle[22]));
  LUT1 #(
    .INIT(2'h2)) 
    slv_reg1_inst__9
       (.I0(slv_reg1[21]),
        .O(pid_angle[21]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[0]),
        .Q(slv_reg1[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[10]),
        .Q(slv_reg1[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[11]),
        .Q(slv_reg1[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[12]),
        .Q(slv_reg1[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[13]),
        .Q(slv_reg1[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[14]),
        .Q(slv_reg1[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[15]),
        .Q(slv_reg1[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[16]),
        .Q(slv_reg1[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[17]),
        .Q(slv_reg1[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[18]),
        .Q(slv_reg1[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[19]),
        .Q(slv_reg1[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[1]),
        .Q(slv_reg1[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[20]),
        .Q(slv_reg1[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[21]),
        .Q(slv_reg1[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[22]),
        .Q(slv_reg1[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[23]),
        .Q(slv_reg1[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[24]),
        .Q(slv_reg1[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[25]),
        .Q(slv_reg1[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[26]),
        .Q(slv_reg1[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[27]),
        .Q(slv_reg1[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[28]),
        .Q(slv_reg1[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[29]),
        .Q(slv_reg1[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[2]),
        .Q(slv_reg1[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[30]),
        .Q(slv_reg1[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[31]),
        .Q(slv_reg1[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[3]),
        .Q(slv_reg1[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[4]),
        .Q(slv_reg1[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[5]),
        .Q(slv_reg1[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[6]),
        .Q(slv_reg1[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[7]),
        .Q(slv_reg1[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[8]),
        .Q(slv_reg1[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[9]),
        .Q(slv_reg1[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg2[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg2[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg2[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg2[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg2[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg2[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg2[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg2[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg2[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg2[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg2[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg2[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg2[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg2[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg2[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg2[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg2[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg2[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg2[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg2[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg2[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg2[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg2[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg2[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg2[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg2[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg2[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg2[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg2[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg2[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg2[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg2[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg3[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg3[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg3[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg3[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg3[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg3[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg3[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg3[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg3[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg3[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg3[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg3[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg3[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg3[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg3[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg3[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg3[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg3[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg3[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg3[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg3[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg3[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg3[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg3[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg3[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg3[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg3[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg3[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg3[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg3[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg3[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg3[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg4[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg4[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg4[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \slv_reg4[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg4[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg4[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg4[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg4[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg4[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg4[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg4[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg4[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg4[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg4[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg4[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg4[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg4[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg4[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg4[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg4[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg4[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg4[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg4[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg4[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg4[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg4[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg4[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg4[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg4[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg4[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg4[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg4[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg4[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg4[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg4[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg4[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg5[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg5[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg5[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg5[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg5[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[0]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(pid_target_angle[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(pid_target_angle[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(pid_target_angle[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(pid_target_angle[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(pid_target_angle[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(pid_target_angle[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(pid_target_angle[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(pid_target_angle[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(pid_target_angle[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(pid_target_angle[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(pid_target_angle[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(pid_target_angle[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(pid_target_angle[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(pid_target_angle[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(pid_target_angle[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(pid_target_angle[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(pid_target_angle[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(pid_target_angle[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(pid_target_angle[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(pid_target_angle[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(pid_target_angle[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(pid_target_angle[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(pid_target_angle[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(pid_target_angle[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(pid_target_angle[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(pid_target_angle[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(pid_target_angle[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(pid_target_angle[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(pid_target_angle[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(pid_target_angle[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(pid_target_angle[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(pid_target_angle[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg6[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg6[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg6[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(pid_time[0]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(pid_time[10]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(pid_time[11]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(pid_time[12]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(pid_time[13]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(pid_time[14]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(pid_time[15]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(pid_time[16]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(pid_time[17]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(pid_time[18]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(pid_time[19]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(pid_time[1]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(pid_time[20]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(pid_time[21]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(pid_time[22]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(pid_time[23]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(pid_time[24]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(pid_time[25]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(pid_time[26]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(pid_time[27]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(pid_time[28]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(pid_time[29]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(pid_time[2]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(pid_time[30]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(pid_time[31]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(pid_time[3]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(pid_time[4]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(pid_time[5]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(pid_time[6]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(pid_time[7]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(pid_time[8]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(pid_time[9]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(pid_time[32]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(pid_time[42]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(pid_time[43]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(pid_time[44]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(pid_time[45]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(pid_time[46]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(pid_time[47]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(pid_time[48]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(pid_time[49]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(pid_time[50]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(pid_time[51]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(pid_time[33]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(pid_time[52]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(pid_time[53]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(pid_time[54]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(pid_time[55]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(pid_time[56]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(pid_time[57]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(pid_time[58]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(pid_time[59]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(pid_time[60]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(pid_time[61]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(pid_time[34]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(pid_time[62]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(pid_time[63]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(pid_time[35]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(pid_time[36]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(pid_time[37]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(pid_time[38]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(pid_time[39]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(pid_time[40]),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(pid_time[41]),
        .R(\slv_reg5[31]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_AXI_PID_Controller_P_0_2,AXI_PID_Controller_Peripheral_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXI_PID_Controller_Peripheral_v1_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pid_angle,
    pid_target_angle,
    pid_time,
    pid_new_angle,
    pid_new_target_angle,
    pid_output_velocity,
    pid_new_velocity,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [31:0]pid_angle;
  output [31:0]pid_target_angle;
  output [63:0]pid_time;
  output [0:0]pid_new_angle;
  output [0:0]pid_new_target_angle;
  input [31:0]pid_output_velocity;
  input [0:0]pid_new_velocity;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire [31:0]pid_angle;
  wire [0:0]pid_new_angle;
  wire [0:0]pid_new_target_angle;
  wire [0:0]pid_new_velocity;
  wire [31:0]pid_output_velocity;
  wire [31:0]pid_target_angle;
  wire [63:0]pid_time;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0 inst
       (.pid_angle(pid_angle),
        .pid_new_angle(pid_new_angle),
        .pid_new_target_angle(pid_new_target_angle),
        .pid_new_velocity(pid_new_velocity),
        .pid_output_velocity(pid_output_velocity),
        .pid_target_angle(pid_target_angle),
        .pid_time(pid_time),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
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
