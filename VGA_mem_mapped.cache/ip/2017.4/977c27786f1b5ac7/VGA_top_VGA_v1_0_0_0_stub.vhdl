-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jan 17 18:23:50 2018
-- Host        : Del_Alienware running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_top_VGA_v1_0_0_0_stub.vhdl
-- Design      : VGA_top_VGA_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_config_awvalid : in STD_LOGIC;
    s_axi_config_awready : out STD_LOGIC;
    s_axi_config_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_wvalid : in STD_LOGIC;
    s_axi_config_wready : out STD_LOGIC;
    s_axi_config_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_bvalid : out STD_LOGIC;
    s_axi_config_bready : in STD_LOGIC;
    s_axi_config_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_config_arvalid : in STD_LOGIC;
    s_axi_config_arready : out STD_LOGIC;
    s_axi_config_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_rvalid : out STD_LOGIC;
    s_axi_config_rready : in STD_LOGIC;
    m_axi_fb_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_fb_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_fb_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_awlock : out STD_LOGIC;
    m_axi_fb_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_awvalid : out STD_LOGIC;
    m_axi_fb_awready : in STD_LOGIC;
    m_axi_fb_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_fb_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_fb_wlast : out STD_LOGIC;
    m_axi_fb_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_wvalid : out STD_LOGIC;
    m_axi_fb_wready : in STD_LOGIC;
    m_axi_fb_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_bvalid : in STD_LOGIC;
    m_axi_fb_bready : out STD_LOGIC;
    m_axi_fb_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_fb_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_fb_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_arlock : out STD_LOGIC;
    m_axi_fb_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_arvalid : out STD_LOGIC;
    m_axi_fb_arready : in STD_LOGIC;
    m_axi_fb_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_fb_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_rlast : in STD_LOGIC;
    m_axi_fb_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_rvalid : in STD_LOGIC;
    m_axi_fb_rready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axi_aclk,axi_aresetn,h_sync,v_sync,vga_b[3:0],vga_g[3:0],vga_r[3:0],s_axi_config_awaddr[3:0],s_axi_config_awprot[2:0],s_axi_config_awvalid,s_axi_config_awready,s_axi_config_wdata[31:0],s_axi_config_wstrb[3:0],s_axi_config_wvalid,s_axi_config_wready,s_axi_config_bresp[1:0],s_axi_config_bvalid,s_axi_config_bready,s_axi_config_araddr[3:0],s_axi_config_arprot[2:0],s_axi_config_arvalid,s_axi_config_arready,s_axi_config_rdata[31:0],s_axi_config_rresp[1:0],s_axi_config_rvalid,s_axi_config_rready,m_axi_fb_awid[0:0],m_axi_fb_awaddr[31:0],m_axi_fb_awlen[7:0],m_axi_fb_awsize[2:0],m_axi_fb_awburst[1:0],m_axi_fb_awlock,m_axi_fb_awcache[3:0],m_axi_fb_awprot[2:0],m_axi_fb_awqos[3:0],m_axi_fb_awuser[0:0],m_axi_fb_awvalid,m_axi_fb_awready,m_axi_fb_wdata[63:0],m_axi_fb_wstrb[7:0],m_axi_fb_wlast,m_axi_fb_wuser[0:0],m_axi_fb_wvalid,m_axi_fb_wready,m_axi_fb_bid[0:0],m_axi_fb_bresp[1:0],m_axi_fb_buser[0:0],m_axi_fb_bvalid,m_axi_fb_bready,m_axi_fb_arid[0:0],m_axi_fb_araddr[31:0],m_axi_fb_arlen[7:0],m_axi_fb_arsize[2:0],m_axi_fb_arburst[1:0],m_axi_fb_arlock,m_axi_fb_arcache[3:0],m_axi_fb_arprot[2:0],m_axi_fb_arqos[3:0],m_axi_fb_aruser[0:0],m_axi_fb_arvalid,m_axi_fb_arready,m_axi_fb_rid[0:0],m_axi_fb_rdata[63:0],m_axi_fb_rresp[1:0],m_axi_fb_rlast,m_axi_fb_ruser[0:0],m_axi_fb_rvalid,m_axi_fb_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "VGA_v1_0,Vivado 2017.4";
begin
end;
