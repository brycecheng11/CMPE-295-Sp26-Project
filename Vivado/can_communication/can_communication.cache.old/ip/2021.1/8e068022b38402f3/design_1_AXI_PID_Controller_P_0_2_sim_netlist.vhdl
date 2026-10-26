-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Wed Sep 16 23:04:21 2026
-- Host        : kenny-ThinkPad-T480s running 64-bit Linux Mint 22.1
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI_PID_Controller_P_0_2_sim_netlist.vhdl
-- Design      : design_1_AXI_PID_Controller_P_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI is
  port (
    pid_angle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_target_angle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_time : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pid_new_angle : out STD_LOGIC_VECTOR ( 0 to 0 );
    pid_new_target_angle : out STD_LOGIC_VECTOR ( 0 to 0 );
    pid_output_velocity : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_new_velocity : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI : entity is 6;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI : entity is 32;
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI : entity is 3;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^pid_angle\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^pid_angle\ : signal is std.standard.true;
  signal \^pid_target_angle\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pid_time\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg0 : signal is std.standard.true;
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg0[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \slv_reg0_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \slv_reg0_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[9]\ : label is "true";
  attribute mark_debug_string of pid_angle : signal is "true";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
  pid_angle(31 downto 0) <= \^pid_angle\(31 downto 0);
  pid_new_angle(0) <= slv_reg0(0);
  pid_new_target_angle(0) <= slv_reg0(1);
  pid_target_angle(31 downto 0) <= \^pid_target_angle\(31 downto 0);
  pid_time(63 downto 0) <= \^pid_time\(63 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FF070F070F070"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \slv_reg5[31]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(2),
      Q => sel0(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(3),
      Q => sel0(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(4),
      Q => sel0(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => S_AXI_ARADDR(5),
      Q => sel0(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(2),
      Q => p_0_in(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(3),
      Q => p_0_in(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(4),
      Q => p_0_in(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(5),
      Q => p_0_in(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => \slv_reg5[31]_i_1_n_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEABAA"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => \axi_rdata[0]_i_3_n_0\,
      I4 => \axi_rdata[0]_i_4_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A000C0"
    )
        port map (
      I0 => pid_new_velocity(0),
      I1 => pid_output_velocity(0),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => sel0(0),
      I5 => sel0(1),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(0),
      I1 => slv_reg3(0),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(0),
      I5 => slv_reg2(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(0),
      I1 => \^pid_time\(32),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(0),
      I5 => \^pid_time\(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[10]_i_2_n_0\,
      I3 => \axi_rdata[10]_i_3_n_0\,
      I4 => pid_output_velocity(10),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(10),
      I1 => slv_reg3(10),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(10),
      I5 => slv_reg2(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(10),
      I1 => \^pid_time\(42),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(10),
      I5 => \^pid_time\(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[11]_i_2_n_0\,
      I3 => \axi_rdata[11]_i_3_n_0\,
      I4 => pid_output_velocity(11),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(11),
      I1 => slv_reg3(11),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(11),
      I5 => slv_reg2(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(11),
      I1 => \^pid_time\(43),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(11),
      I5 => \^pid_time\(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[12]_i_2_n_0\,
      I3 => \axi_rdata[12]_i_3_n_0\,
      I4 => pid_output_velocity(12),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(12),
      I1 => slv_reg3(12),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(12),
      I5 => slv_reg2(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(12),
      I1 => \^pid_time\(44),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(12),
      I5 => \^pid_time\(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[13]_i_2_n_0\,
      I3 => \axi_rdata[13]_i_3_n_0\,
      I4 => pid_output_velocity(13),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(13),
      I1 => slv_reg3(13),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(13),
      I5 => slv_reg2(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(13),
      I1 => \^pid_time\(45),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(13),
      I5 => \^pid_time\(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[14]_i_2_n_0\,
      I3 => \axi_rdata[14]_i_3_n_0\,
      I4 => pid_output_velocity(14),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(14),
      I1 => slv_reg3(14),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(14),
      I5 => slv_reg2(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(14),
      I1 => \^pid_time\(46),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(14),
      I5 => \^pid_time\(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[15]_i_2_n_0\,
      I3 => \axi_rdata[15]_i_3_n_0\,
      I4 => pid_output_velocity(15),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(15),
      I1 => slv_reg3(15),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(15),
      I5 => slv_reg2(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(15),
      I1 => \^pid_time\(47),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(15),
      I5 => \^pid_time\(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[16]_i_2_n_0\,
      I3 => \axi_rdata[16]_i_3_n_0\,
      I4 => pid_output_velocity(16),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(16),
      I1 => slv_reg3(16),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(16),
      I5 => slv_reg2(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(16),
      I1 => \^pid_time\(48),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(16),
      I5 => \^pid_time\(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[17]_i_2_n_0\,
      I3 => \axi_rdata[17]_i_3_n_0\,
      I4 => pid_output_velocity(17),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(17),
      I1 => slv_reg3(17),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(17),
      I5 => slv_reg2(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(17),
      I1 => \^pid_time\(49),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(17),
      I5 => \^pid_time\(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[18]_i_2_n_0\,
      I3 => \axi_rdata[18]_i_3_n_0\,
      I4 => pid_output_velocity(18),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(18),
      I1 => slv_reg3(18),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(18),
      I5 => slv_reg2(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(18),
      I1 => \^pid_time\(50),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(18),
      I5 => \^pid_time\(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[19]_i_2_n_0\,
      I3 => \axi_rdata[19]_i_3_n_0\,
      I4 => pid_output_velocity(19),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(19),
      I1 => slv_reg3(19),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(19),
      I5 => slv_reg2(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(19),
      I1 => \^pid_time\(51),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(19),
      I5 => \^pid_time\(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[1]_i_2_n_0\,
      I3 => \axi_rdata[1]_i_3_n_0\,
      I4 => pid_output_velocity(1),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(1),
      I1 => slv_reg3(1),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(1),
      I5 => slv_reg2(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(1),
      I1 => \^pid_time\(33),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(1),
      I5 => \^pid_time\(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[20]_i_2_n_0\,
      I3 => \axi_rdata[20]_i_3_n_0\,
      I4 => pid_output_velocity(20),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(20),
      I1 => slv_reg3(20),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(20),
      I5 => slv_reg2(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(20),
      I1 => \^pid_time\(52),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(20),
      I5 => \^pid_time\(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[21]_i_2_n_0\,
      I3 => \axi_rdata[21]_i_3_n_0\,
      I4 => pid_output_velocity(21),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(21),
      I1 => slv_reg3(21),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(21),
      I5 => slv_reg2(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(21),
      I1 => \^pid_time\(53),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(21),
      I5 => \^pid_time\(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[22]_i_2_n_0\,
      I3 => \axi_rdata[22]_i_3_n_0\,
      I4 => pid_output_velocity(22),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(22),
      I1 => slv_reg3(22),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(22),
      I5 => slv_reg2(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(22),
      I1 => \^pid_time\(54),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(22),
      I5 => \^pid_time\(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[23]_i_2_n_0\,
      I3 => \axi_rdata[23]_i_3_n_0\,
      I4 => pid_output_velocity(23),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(23),
      I1 => slv_reg3(23),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(23),
      I5 => slv_reg2(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(23),
      I1 => \^pid_time\(55),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(23),
      I5 => \^pid_time\(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[24]_i_2_n_0\,
      I3 => \axi_rdata[24]_i_3_n_0\,
      I4 => pid_output_velocity(24),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(24),
      I1 => slv_reg3(24),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(24),
      I5 => slv_reg2(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(24),
      I1 => \^pid_time\(56),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(24),
      I5 => \^pid_time\(24),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[25]_i_2_n_0\,
      I3 => \axi_rdata[25]_i_3_n_0\,
      I4 => pid_output_velocity(25),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(25),
      I1 => slv_reg3(25),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(25),
      I5 => slv_reg2(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(25),
      I1 => \^pid_time\(57),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(25),
      I5 => \^pid_time\(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[26]_i_2_n_0\,
      I3 => \axi_rdata[26]_i_3_n_0\,
      I4 => pid_output_velocity(26),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(26),
      I1 => slv_reg3(26),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(26),
      I5 => slv_reg2(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(26),
      I1 => \^pid_time\(58),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(26),
      I5 => \^pid_time\(26),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[27]_i_2_n_0\,
      I3 => \axi_rdata[27]_i_3_n_0\,
      I4 => pid_output_velocity(27),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(27),
      I1 => slv_reg3(27),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(27),
      I5 => slv_reg2(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(27),
      I1 => \^pid_time\(59),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(27),
      I5 => \^pid_time\(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[28]_i_2_n_0\,
      I3 => \axi_rdata[28]_i_3_n_0\,
      I4 => pid_output_velocity(28),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(28),
      I1 => slv_reg3(28),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(28),
      I5 => slv_reg2(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(28),
      I1 => \^pid_time\(60),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(28),
      I5 => \^pid_time\(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[29]_i_2_n_0\,
      I3 => \axi_rdata[29]_i_3_n_0\,
      I4 => pid_output_velocity(29),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(29),
      I1 => slv_reg3(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(29),
      I5 => slv_reg2(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(29),
      I1 => \^pid_time\(61),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(29),
      I5 => \^pid_time\(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[2]_i_2_n_0\,
      I3 => \axi_rdata[2]_i_3_n_0\,
      I4 => pid_output_velocity(2),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(2),
      I1 => slv_reg3(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(2),
      I5 => slv_reg2(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(2),
      I1 => \^pid_time\(34),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(2),
      I5 => \^pid_time\(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[30]_i_2_n_0\,
      I3 => \axi_rdata[30]_i_3_n_0\,
      I4 => pid_output_velocity(30),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(30),
      I1 => slv_reg3(30),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(30),
      I5 => slv_reg2(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(30),
      I1 => \^pid_time\(62),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(30),
      I5 => \^pid_time\(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \axi_rdata[31]_i_4_n_0\,
      I4 => pid_output_velocity(31),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(31),
      I1 => slv_reg3(31),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(31),
      I5 => slv_reg2(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(31),
      I1 => \^pid_time\(63),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(31),
      I5 => \^pid_time\(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[3]_i_2_n_0\,
      I3 => \axi_rdata[3]_i_3_n_0\,
      I4 => pid_output_velocity(3),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(3),
      I1 => slv_reg3(3),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(3),
      I5 => slv_reg2(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(3),
      I1 => \^pid_time\(35),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(3),
      I5 => \^pid_time\(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[4]_i_2_n_0\,
      I3 => \axi_rdata[4]_i_3_n_0\,
      I4 => pid_output_velocity(4),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(4),
      I1 => slv_reg3(4),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(4),
      I5 => slv_reg2(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(4),
      I1 => \^pid_time\(36),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(4),
      I5 => \^pid_time\(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[5]_i_2_n_0\,
      I3 => \axi_rdata[5]_i_3_n_0\,
      I4 => pid_output_velocity(5),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(5),
      I1 => slv_reg3(5),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(5),
      I5 => slv_reg2(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(5),
      I1 => \^pid_time\(37),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(5),
      I5 => \^pid_time\(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[6]_i_2_n_0\,
      I3 => \axi_rdata[6]_i_3_n_0\,
      I4 => pid_output_velocity(6),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(6),
      I1 => slv_reg3(6),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(6),
      I5 => slv_reg2(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(6),
      I1 => \^pid_time\(38),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(6),
      I5 => \^pid_time\(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[7]_i_2_n_0\,
      I3 => \axi_rdata[7]_i_3_n_0\,
      I4 => pid_output_velocity(7),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(7),
      I1 => slv_reg3(7),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(7),
      I5 => slv_reg2(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(7),
      I1 => \^pid_time\(39),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(7),
      I5 => \^pid_time\(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[8]_i_2_n_0\,
      I3 => \axi_rdata[8]_i_3_n_0\,
      I4 => pid_output_velocity(8),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(8),
      I1 => slv_reg3(8),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(8),
      I5 => slv_reg2(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(8),
      I1 => \^pid_time\(40),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(8),
      I5 => \^pid_time\(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321032103210"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => \axi_rdata[9]_i_2_n_0\,
      I3 => \axi_rdata[9]_i_3_n_0\,
      I4 => pid_output_velocity(9),
      I5 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_angle\(9),
      I1 => slv_reg3(9),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg0(9),
      I5 => slv_reg2(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \^pid_target_angle\(9),
      I1 => \^pid_time\(41),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg4(9),
      I5 => \^pid_time\(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \slv_reg5[31]_i_1_n_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(0),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(10),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(10),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[10]_i_1_n_0\
    );
\slv_reg0[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(11),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[11]_i_1_n_0\
    );
\slv_reg0[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(12),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[12]_i_1_n_0\
    );
\slv_reg0[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(13),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(13),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[13]_i_1_n_0\
    );
\slv_reg0[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(14),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(14),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[14]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(15),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(15),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => \slv_reg0[15]_i_2_n_0\
    );
\slv_reg0[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(16),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(16),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[16]_i_1_n_0\
    );
\slv_reg0[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(17),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(17),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[17]_i_1_n_0\
    );
\slv_reg0[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(18),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(18),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[18]_i_1_n_0\
    );
\slv_reg0[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(19),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(19),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[19]_i_1_n_0\
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(1),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[1]_i_1_n_0\
    );
\slv_reg0[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(20),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(20),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[20]_i_1_n_0\
    );
\slv_reg0[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(21),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(21),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[21]_i_1_n_0\
    );
\slv_reg0[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(22),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(22),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[22]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(23),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(2),
      I3 => slv_reg0(23),
      I4 => \slv_reg0[23]_i_2_n_0\,
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => S_AXI_WSTRB(2),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => \slv_reg0[23]_i_2_n_0\
    );
\slv_reg0[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(24),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(24),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[24]_i_1_n_0\
    );
\slv_reg0[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(25),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(25),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[25]_i_1_n_0\
    );
\slv_reg0[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(26),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(26),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[26]_i_1_n_0\
    );
\slv_reg0[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(27),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(27),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[27]_i_1_n_0\
    );
\slv_reg0[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(28),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(28),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[28]_i_1_n_0\
    );
\slv_reg0[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(29),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(29),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[29]_i_1_n_0\
    );
\slv_reg0[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(2),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[2]_i_1_n_0\
    );
\slv_reg0[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(30),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(30),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[30]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => slv_reg_wren
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(31),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(3),
      I3 => slv_reg0(31),
      I4 => \slv_reg0[31]_i_4_n_0\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      O => \slv_reg0[31]_i_3_n_0\
    );
\slv_reg0[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => S_AXI_WSTRB(3),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => \slv_reg0[31]_i_4_n_0\
    );
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(3),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[3]_i_1_n_0\
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(4),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(4),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[4]_i_1_n_0\
    );
\slv_reg0[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(5),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(5),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[5]_i_1_n_0\
    );
\slv_reg0[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(6),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(6),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[6]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(7),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(0),
      I3 => slv_reg0(7),
      I4 => \slv_reg0[7]_i_2_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => \slv_reg0[7]_i_2_n_0\
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(8),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[8]_i_1_n_0\
    );
\slv_reg0[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => \slv_reg0[31]_i_3_n_0\,
      I2 => S_AXI_WSTRB(1),
      I3 => slv_reg0(9),
      I4 => \slv_reg0[15]_i_2_n_0\,
      O => \slv_reg0[9]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[0]_i_1_n_0\,
      Q => slv_reg0(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[10]_i_1_n_0\,
      Q => slv_reg0(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[11]_i_1_n_0\,
      Q => slv_reg0(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[12]_i_1_n_0\,
      Q => slv_reg0(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[13]_i_1_n_0\,
      Q => slv_reg0(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[14]_i_1_n_0\,
      Q => slv_reg0(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[15]_i_1_n_0\,
      Q => slv_reg0(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[16]_i_1_n_0\,
      Q => slv_reg0(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[17]_i_1_n_0\,
      Q => slv_reg0(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[18]_i_1_n_0\,
      Q => slv_reg0(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[19]_i_1_n_0\,
      Q => slv_reg0(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[1]_i_1_n_0\,
      Q => slv_reg0(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[20]_i_1_n_0\,
      Q => slv_reg0(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[21]_i_1_n_0\,
      Q => slv_reg0(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[22]_i_1_n_0\,
      Q => slv_reg0(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[23]_i_1_n_0\,
      Q => slv_reg0(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[24]_i_1_n_0\,
      Q => slv_reg0(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[25]_i_1_n_0\,
      Q => slv_reg0(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[26]_i_1_n_0\,
      Q => slv_reg0(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[27]_i_1_n_0\,
      Q => slv_reg0(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[28]_i_1_n_0\,
      Q => slv_reg0(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[29]_i_1_n_0\,
      Q => slv_reg0(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[2]_i_1_n_0\,
      Q => slv_reg0(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[30]_i_1_n_0\,
      Q => slv_reg0(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[31]_i_2_n_0\,
      Q => slv_reg0(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[3]_i_1_n_0\,
      Q => slv_reg0(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[4]_i_1_n_0\,
      Q => slv_reg0(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[5]_i_1_n_0\,
      Q => slv_reg0(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[6]_i_1_n_0\,
      Q => slv_reg0(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[7]_i_1_n_0\,
      Q => slv_reg0(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[8]_i_1_n_0\,
      Q => slv_reg0(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[9]_i_1_n_0\,
      Q => slv_reg0(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(1),
      I5 => p_0_in(3),
      O => p_1_in(15)
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(2),
      I5 => p_0_in(3),
      O => p_1_in(23)
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(3),
      I5 => p_0_in(3),
      O => p_1_in(31)
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(0),
      I5 => p_0_in(3),
      O => p_1_in(7)
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(0),
      Q => \^pid_angle\(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(10),
      Q => \^pid_angle\(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(11),
      Q => \^pid_angle\(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(12),
      Q => \^pid_angle\(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(13),
      Q => \^pid_angle\(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(14),
      Q => \^pid_angle\(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(15),
      Q => \^pid_angle\(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(16),
      Q => \^pid_angle\(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(17),
      Q => \^pid_angle\(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(18),
      Q => \^pid_angle\(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(19),
      Q => \^pid_angle\(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(1),
      Q => \^pid_angle\(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(20),
      Q => \^pid_angle\(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(21),
      Q => \^pid_angle\(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(22),
      Q => \^pid_angle\(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(23),
      Q => \^pid_angle\(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(24),
      Q => \^pid_angle\(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(25),
      Q => \^pid_angle\(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(26),
      Q => \^pid_angle\(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(27),
      Q => \^pid_angle\(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(28),
      Q => \^pid_angle\(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(29),
      Q => \^pid_angle\(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(2),
      Q => \^pid_angle\(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(30),
      Q => \^pid_angle\(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(31),
      Q => \^pid_angle\(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(3),
      Q => \^pid_angle\(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(4),
      Q => \^pid_angle\(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(5),
      Q => \^pid_angle\(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(6),
      Q => \^pid_angle\(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(7),
      Q => \^pid_angle\(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(8),
      Q => \^pid_angle\(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(9),
      Q => \^pid_angle\(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(1),
      I5 => p_0_in(3),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(2),
      I5 => p_0_in(3),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(3),
      I5 => p_0_in(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => S_AXI_WSTRB(0),
      I5 => p_0_in(3),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg2(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg2(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg2(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg2(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg2(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg2(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg2(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg2(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg2(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg2(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg2(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg2(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg2(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg2(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg2(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg2(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg2(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg2(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg2(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg2(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg2(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg2(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg2(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg2(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg2(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg2(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg2(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg2(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg2(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg2(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg2(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg2(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg3(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg3(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg3(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg3(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg3(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg3(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg3(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg3(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg3(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg3(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg3(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg3(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg3(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg3(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg3(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg3(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg3(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg3(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg3(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg3(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg3(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg3(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg3(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg3(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg3(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg3(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg3(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg3(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg3(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg3(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg3(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg3(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_WSTRB(1),
      I5 => p_0_in(3),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_WSTRB(2),
      I5 => p_0_in(3),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_WSTRB(3),
      I5 => p_0_in(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_WSTRB(0),
      I5 => p_0_in(3),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg4(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg4(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg4(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg4(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg4(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg4(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg4(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg4(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg4(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg4(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg4(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg4(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg4(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg4(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg4(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg4(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg4(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg4(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg4(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg4(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg4(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg4(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg4(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg4(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg4(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg4(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg4(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg4(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg4(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg4(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg4(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg4(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(3),
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(0),
      I5 => S_AXI_WSTRB(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \^pid_target_angle\(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \^pid_target_angle\(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \^pid_target_angle\(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \^pid_target_angle\(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \^pid_target_angle\(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \^pid_target_angle\(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \^pid_target_angle\(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \^pid_target_angle\(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \^pid_target_angle\(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \^pid_target_angle\(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \^pid_target_angle\(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \^pid_target_angle\(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \^pid_target_angle\(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \^pid_target_angle\(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \^pid_target_angle\(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \^pid_target_angle\(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(24),
      Q => \^pid_target_angle\(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(25),
      Q => \^pid_target_angle\(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(26),
      Q => \^pid_target_angle\(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(27),
      Q => \^pid_target_angle\(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(28),
      Q => \^pid_target_angle\(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(29),
      Q => \^pid_target_angle\(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \^pid_target_angle\(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(30),
      Q => \^pid_target_angle\(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => S_AXI_WDATA(31),
      Q => \^pid_target_angle\(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \^pid_target_angle\(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \^pid_target_angle\(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \^pid_target_angle\(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \^pid_target_angle\(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \^pid_target_angle\(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \^pid_target_angle\(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \^pid_target_angle\(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \^pid_time\(0),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \^pid_time\(10),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \^pid_time\(11),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \^pid_time\(12),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \^pid_time\(13),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \^pid_time\(14),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \^pid_time\(15),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \^pid_time\(16),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \^pid_time\(17),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \^pid_time\(18),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \^pid_time\(19),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \^pid_time\(1),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \^pid_time\(20),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \^pid_time\(21),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \^pid_time\(22),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \^pid_time\(23),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \^pid_time\(24),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \^pid_time\(25),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \^pid_time\(26),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \^pid_time\(27),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \^pid_time\(28),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \^pid_time\(29),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \^pid_time\(2),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \^pid_time\(30),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \^pid_time\(31),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \^pid_time\(3),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \^pid_time\(4),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \^pid_time\(5),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \^pid_time\(6),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \^pid_time\(7),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \^pid_time\(8),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \^pid_time\(9),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(3),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => S_AXI_WSTRB(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \^pid_time\(32),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \^pid_time\(42),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \^pid_time\(43),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \^pid_time\(44),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \^pid_time\(45),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \^pid_time\(46),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \^pid_time\(47),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \^pid_time\(48),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \^pid_time\(49),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \^pid_time\(50),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \^pid_time\(51),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \^pid_time\(33),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \^pid_time\(52),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \^pid_time\(53),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \^pid_time\(54),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \^pid_time\(55),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \^pid_time\(56),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \^pid_time\(57),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \^pid_time\(58),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \^pid_time\(59),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \^pid_time\(60),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \^pid_time\(61),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \^pid_time\(34),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \^pid_time\(62),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \^pid_time\(63),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \^pid_time\(35),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \^pid_time\(36),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \^pid_time\(37),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \^pid_time\(38),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \^pid_time\(39),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \^pid_time\(40),
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \^pid_time\(41),
      R => \slv_reg5[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0 is
  port (
    pid_angle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_target_angle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_time : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pid_new_angle : out STD_LOGIC_VECTOR ( 0 to 0 );
    pid_new_target_angle : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    pid_output_velocity : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_new_velocity : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0 is
  signal NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDR_LSB : integer;
  attribute ADDR_LSB of AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst : label is 6;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst : label is 32;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst : label is "soft";
  attribute OPT_MEM_ADDR_BITS : integer;
  attribute OPT_MEM_ADDR_BITS of AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst : label is 3;
begin
AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0_S00_AXI
     port map (
      S_AXI_ACLK => s00_axi_aclk,
      S_AXI_ARADDR(5 downto 2) => s00_axi_araddr(3 downto 0),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => s00_axi_aresetn,
      S_AXI_ARPROT(2 downto 0) => B"000",
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_ARVALID => s00_axi_arvalid,
      S_AXI_AWADDR(5 downto 2) => s00_axi_awaddr(3 downto 0),
      S_AXI_AWADDR(1 downto 0) => B"00",
      S_AXI_AWPROT(2 downto 0) => B"000",
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_AWVALID => s00_axi_awvalid,
      S_AXI_BREADY => s00_axi_bready,
      S_AXI_BRESP(1 downto 0) => NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BVALID => s00_axi_bvalid,
      S_AXI_RDATA(31 downto 0) => s00_axi_rdata(31 downto 0),
      S_AXI_RREADY => s00_axi_rready,
      S_AXI_RRESP(1 downto 0) => NLW_AXI_PID_Controller_Peripheral_v1_0_S00_AXI_inst_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => s00_axi_rvalid,
      S_AXI_WDATA(31 downto 0) => s00_axi_wdata(31 downto 0),
      S_AXI_WREADY => s00_axi_wready,
      S_AXI_WSTRB(3 downto 0) => s00_axi_wstrb(3 downto 0),
      S_AXI_WVALID => s00_axi_wvalid,
      pid_angle(31 downto 0) => pid_angle(31 downto 0),
      pid_new_angle(0) => pid_new_angle(0),
      pid_new_target_angle(0) => pid_new_target_angle(0),
      pid_new_velocity(0) => pid_new_velocity(0),
      pid_output_velocity(31 downto 0) => pid_output_velocity(31 downto 0),
      pid_target_angle(31 downto 0) => pid_target_angle(31 downto 0),
      pid_time(63 downto 0) => pid_time(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pid_angle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_target_angle : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_time : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pid_new_angle : out STD_LOGIC_VECTOR ( 0 to 0 );
    pid_new_target_angle : out STD_LOGIC_VECTOR ( 0 to 0 );
    pid_output_velocity : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pid_new_velocity : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_AXI_PID_Controller_P_0_2,AXI_PID_Controller_Peripheral_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI_PID_Controller_Peripheral_v1_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_PID_Controller_Peripheral_v1_0
     port map (
      pid_angle(31 downto 0) => pid_angle(31 downto 0),
      pid_new_angle(0) => pid_new_angle(0),
      pid_new_target_angle(0) => pid_new_target_angle(0),
      pid_new_velocity(0) => pid_new_velocity(0),
      pid_output_velocity(31 downto 0) => pid_output_velocity(31 downto 0),
      pid_target_angle(31 downto 0) => pid_target_angle(31 downto 0),
      pid_time(63 downto 0) => pid_time(63 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
