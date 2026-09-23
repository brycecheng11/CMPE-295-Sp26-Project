// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:pot_to_const:1.0
// IP Revision: 1

(* X_CORE_INFO = "pot_to_const,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "design_1_pot_to_const_0_0,pot_to_const,{}" *)
(* CORE_GENERATION_INFO = "design_1_pot_to_const_0_0,pot_to_const,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pot_to_const,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_pot_to_const_0_0 (
  clk,
  reset,
  kp_vaux_p,
  kp_vaux_n,
  ki_vaux_p,
  ki_vaux_n,
  kd_vaux_p,
  kd_vaux_n,
  k_p,
  k_i,
  k_d,
  channel_out,
  check_rst
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire kp_vaux_p;
input wire kp_vaux_n;
input wire ki_vaux_p;
input wire ki_vaux_n;
input wire kd_vaux_p;
input wire kd_vaux_n;
output wire [11 : 0] k_p;
output wire [11 : 0] k_i;
output wire [11 : 0] k_d;
output wire [4 : 0] channel_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME check_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 check_rst RST" *)
output wire [0 : 0] check_rst;

  pot_to_const inst (
    .clk(clk),
    .reset(reset),
    .kp_vaux_p(kp_vaux_p),
    .kp_vaux_n(kp_vaux_n),
    .ki_vaux_p(ki_vaux_p),
    .ki_vaux_n(ki_vaux_n),
    .kd_vaux_p(kd_vaux_p),
    .kd_vaux_n(kd_vaux_n),
    .k_p(k_p),
    .k_i(k_i),
    .k_d(k_d),
    .channel_out(channel_out),
    .check_rst(check_rst)
  );
endmodule
