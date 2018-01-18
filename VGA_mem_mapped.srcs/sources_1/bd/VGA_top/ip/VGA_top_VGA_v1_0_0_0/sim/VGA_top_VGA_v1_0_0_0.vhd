-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:VGA_v1_0:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY VGA_top_VGA_v1_0_0_0 IS
  PORT (
    axi_aclk : IN STD_LOGIC;
    axi_aresetn : IN STD_LOGIC;
    h_sync : OUT STD_LOGIC;
    v_sync : OUT STD_LOGIC;
    vga_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vga_g : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vga_r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_config_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_config_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_config_awvalid : IN STD_LOGIC;
    s_axi_config_awready : OUT STD_LOGIC;
    s_axi_config_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_config_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_config_wvalid : IN STD_LOGIC;
    s_axi_config_wready : OUT STD_LOGIC;
    s_axi_config_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_config_bvalid : OUT STD_LOGIC;
    s_axi_config_bready : IN STD_LOGIC;
    s_axi_config_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_config_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_config_arvalid : IN STD_LOGIC;
    s_axi_config_arready : OUT STD_LOGIC;
    s_axi_config_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_config_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_config_rvalid : OUT STD_LOGIC;
    s_axi_config_rready : IN STD_LOGIC;
    m_axi_fb_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_fb_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_fb_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_fb_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_fb_awlock : OUT STD_LOGIC;
    m_axi_fb_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_fb_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_fb_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_fb_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_awvalid : OUT STD_LOGIC;
    m_axi_fb_awready : IN STD_LOGIC;
    m_axi_fb_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_fb_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_fb_wlast : OUT STD_LOGIC;
    m_axi_fb_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_wvalid : OUT STD_LOGIC;
    m_axi_fb_wready : IN STD_LOGIC;
    m_axi_fb_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_fb_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_bvalid : IN STD_LOGIC;
    m_axi_fb_bready : OUT STD_LOGIC;
    m_axi_fb_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_fb_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_fb_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_fb_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_fb_arlock : OUT STD_LOGIC;
    m_axi_fb_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_fb_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_fb_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_fb_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_arvalid : OUT STD_LOGIC;
    m_axi_fb_arready : IN STD_LOGIC;
    m_axi_fb_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_fb_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_fb_rlast : IN STD_LOGIC;
    m_axi_fb_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_fb_rvalid : IN STD_LOGIC;
    m_axi_fb_rready : OUT STD_LOGIC
  );
END VGA_top_VGA_v1_0_0_0;

ARCHITECTURE VGA_top_VGA_v1_0_0_0_arch OF VGA_top_VGA_v1_0_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF VGA_top_VGA_v1_0_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT VGA_v1_0 IS
    GENERIC (
      C_s_axi_config_DATA_WIDTH : INTEGER;
      C_s_axi_config_ADDR_WIDTH : INTEGER;
      C_m_axi_fb_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR;
      C_m_axi_fb_BURST_LEN : INTEGER;
      C_m_axi_fb_ID_WIDTH : INTEGER;
      C_m_axi_fb_ADDR_WIDTH : INTEGER;
      C_m_axi_fb_DATA_WIDTH : INTEGER;
      C_m_axi_fb_AWUSER_WIDTH : INTEGER;
      C_m_axi_fb_ARUSER_WIDTH : INTEGER;
      C_m_axi_fb_WUSER_WIDTH : INTEGER;
      C_m_axi_fb_RUSER_WIDTH : INTEGER;
      C_m_axi_fb_BUSER_WIDTH : INTEGER;
      BITS_PER_PE : INTEGER
    );
    PORT (
      axi_aclk : IN STD_LOGIC;
      axi_aresetn : IN STD_LOGIC;
      h_sync : OUT STD_LOGIC;
      v_sync : OUT STD_LOGIC;
      vga_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      vga_g : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      vga_r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_config_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_config_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_config_awvalid : IN STD_LOGIC;
      s_axi_config_awready : OUT STD_LOGIC;
      s_axi_config_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_config_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_config_wvalid : IN STD_LOGIC;
      s_axi_config_wready : OUT STD_LOGIC;
      s_axi_config_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_config_bvalid : OUT STD_LOGIC;
      s_axi_config_bready : IN STD_LOGIC;
      s_axi_config_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_config_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_config_arvalid : IN STD_LOGIC;
      s_axi_config_arready : OUT STD_LOGIC;
      s_axi_config_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_config_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_config_rvalid : OUT STD_LOGIC;
      s_axi_config_rready : IN STD_LOGIC;
      m_axi_fb_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_fb_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_fb_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fb_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fb_awlock : OUT STD_LOGIC;
      m_axi_fb_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fb_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fb_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fb_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_awvalid : OUT STD_LOGIC;
      m_axi_fb_awready : IN STD_LOGIC;
      m_axi_fb_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_fb_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_fb_wlast : OUT STD_LOGIC;
      m_axi_fb_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_wvalid : OUT STD_LOGIC;
      m_axi_fb_wready : IN STD_LOGIC;
      m_axi_fb_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fb_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_bvalid : IN STD_LOGIC;
      m_axi_fb_bready : OUT STD_LOGIC;
      m_axi_fb_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_fb_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_fb_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fb_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fb_arlock : OUT STD_LOGIC;
      m_axi_fb_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fb_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fb_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fb_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_arvalid : OUT STD_LOGIC;
      m_axi_fb_arready : IN STD_LOGIC;
      m_axi_fb_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_fb_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fb_rlast : IN STD_LOGIC;
      m_axi_fb_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_fb_rvalid : IN STD_LOGIC;
      m_axi_fb_rready : OUT STD_LOGIC
    );
  END COMPONENT VGA_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb RID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb BID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_fb_awid: SIGNAL IS "XIL_INTERFACENAME m_axi_fb, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_fb_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_fb AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_config_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi_config, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_config_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_config AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_aresetn: SIGNAL IS "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_aclk: SIGNAL IS "XIL_INTERFACENAME axi_aclk, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN VGA_top_processing_system7_0_0_FCLK_CLK0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 axi_aclk CLK";
BEGIN
  U0 : VGA_v1_0
    GENERIC MAP (
      C_s_axi_config_DATA_WIDTH => 32,
      C_s_axi_config_ADDR_WIDTH => 4,
      C_m_axi_fb_TARGET_SLAVE_BASE_ADDR => X"00000000",
      C_m_axi_fb_BURST_LEN => 256,
      C_m_axi_fb_ID_WIDTH => 1,
      C_m_axi_fb_ADDR_WIDTH => 32,
      C_m_axi_fb_DATA_WIDTH => 64,
      C_m_axi_fb_AWUSER_WIDTH => 0,
      C_m_axi_fb_ARUSER_WIDTH => 0,
      C_m_axi_fb_WUSER_WIDTH => 0,
      C_m_axi_fb_RUSER_WIDTH => 0,
      C_m_axi_fb_BUSER_WIDTH => 0,
      BITS_PER_PE => 4
    )
    PORT MAP (
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      h_sync => h_sync,
      v_sync => v_sync,
      vga_b => vga_b,
      vga_g => vga_g,
      vga_r => vga_r,
      s_axi_config_awaddr => s_axi_config_awaddr,
      s_axi_config_awprot => s_axi_config_awprot,
      s_axi_config_awvalid => s_axi_config_awvalid,
      s_axi_config_awready => s_axi_config_awready,
      s_axi_config_wdata => s_axi_config_wdata,
      s_axi_config_wstrb => s_axi_config_wstrb,
      s_axi_config_wvalid => s_axi_config_wvalid,
      s_axi_config_wready => s_axi_config_wready,
      s_axi_config_bresp => s_axi_config_bresp,
      s_axi_config_bvalid => s_axi_config_bvalid,
      s_axi_config_bready => s_axi_config_bready,
      s_axi_config_araddr => s_axi_config_araddr,
      s_axi_config_arprot => s_axi_config_arprot,
      s_axi_config_arvalid => s_axi_config_arvalid,
      s_axi_config_arready => s_axi_config_arready,
      s_axi_config_rdata => s_axi_config_rdata,
      s_axi_config_rresp => s_axi_config_rresp,
      s_axi_config_rvalid => s_axi_config_rvalid,
      s_axi_config_rready => s_axi_config_rready,
      m_axi_fb_awid => m_axi_fb_awid,
      m_axi_fb_awaddr => m_axi_fb_awaddr,
      m_axi_fb_awlen => m_axi_fb_awlen,
      m_axi_fb_awsize => m_axi_fb_awsize,
      m_axi_fb_awburst => m_axi_fb_awburst,
      m_axi_fb_awlock => m_axi_fb_awlock,
      m_axi_fb_awcache => m_axi_fb_awcache,
      m_axi_fb_awprot => m_axi_fb_awprot,
      m_axi_fb_awqos => m_axi_fb_awqos,
      m_axi_fb_awuser => m_axi_fb_awuser,
      m_axi_fb_awvalid => m_axi_fb_awvalid,
      m_axi_fb_awready => m_axi_fb_awready,
      m_axi_fb_wdata => m_axi_fb_wdata,
      m_axi_fb_wstrb => m_axi_fb_wstrb,
      m_axi_fb_wlast => m_axi_fb_wlast,
      m_axi_fb_wuser => m_axi_fb_wuser,
      m_axi_fb_wvalid => m_axi_fb_wvalid,
      m_axi_fb_wready => m_axi_fb_wready,
      m_axi_fb_bid => m_axi_fb_bid,
      m_axi_fb_bresp => m_axi_fb_bresp,
      m_axi_fb_buser => m_axi_fb_buser,
      m_axi_fb_bvalid => m_axi_fb_bvalid,
      m_axi_fb_bready => m_axi_fb_bready,
      m_axi_fb_arid => m_axi_fb_arid,
      m_axi_fb_araddr => m_axi_fb_araddr,
      m_axi_fb_arlen => m_axi_fb_arlen,
      m_axi_fb_arsize => m_axi_fb_arsize,
      m_axi_fb_arburst => m_axi_fb_arburst,
      m_axi_fb_arlock => m_axi_fb_arlock,
      m_axi_fb_arcache => m_axi_fb_arcache,
      m_axi_fb_arprot => m_axi_fb_arprot,
      m_axi_fb_arqos => m_axi_fb_arqos,
      m_axi_fb_aruser => m_axi_fb_aruser,
      m_axi_fb_arvalid => m_axi_fb_arvalid,
      m_axi_fb_arready => m_axi_fb_arready,
      m_axi_fb_rid => m_axi_fb_rid,
      m_axi_fb_rdata => m_axi_fb_rdata,
      m_axi_fb_rresp => m_axi_fb_rresp,
      m_axi_fb_rlast => m_axi_fb_rlast,
      m_axi_fb_ruser => m_axi_fb_ruser,
      m_axi_fb_rvalid => m_axi_fb_rvalid,
      m_axi_fb_rready => m_axi_fb_rready
    );
END VGA_top_VGA_v1_0_0_0_arch;
