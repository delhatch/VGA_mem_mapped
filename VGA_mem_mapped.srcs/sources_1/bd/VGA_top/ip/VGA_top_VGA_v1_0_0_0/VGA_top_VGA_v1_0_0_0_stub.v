// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan 17 18:23:50 2018
// Host        : Del_Alienware running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Zynq_Book/VGA_mem_mapped/VGA_mem_mapped.srcs/sources_1/bd/VGA_top/ip/VGA_top_VGA_v1_0_0_0/VGA_top_VGA_v1_0_0_0_stub.v
// Design      : VGA_top_VGA_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "VGA_v1_0,Vivado 2017.4" *)
module VGA_top_VGA_v1_0_0_0(axi_aclk, axi_aresetn, h_sync, v_sync, vga_b, 
  vga_g, vga_r, s_axi_config_awaddr, s_axi_config_awprot, s_axi_config_awvalid, 
  s_axi_config_awready, s_axi_config_wdata, s_axi_config_wstrb, s_axi_config_wvalid, 
  s_axi_config_wready, s_axi_config_bresp, s_axi_config_bvalid, s_axi_config_bready, 
  s_axi_config_araddr, s_axi_config_arprot, s_axi_config_arvalid, s_axi_config_arready, 
  s_axi_config_rdata, s_axi_config_rresp, s_axi_config_rvalid, s_axi_config_rready, 
  m_axi_fb_awid, m_axi_fb_awaddr, m_axi_fb_awlen, m_axi_fb_awsize, m_axi_fb_awburst, 
  m_axi_fb_awlock, m_axi_fb_awcache, m_axi_fb_awprot, m_axi_fb_awqos, m_axi_fb_awuser, 
  m_axi_fb_awvalid, m_axi_fb_awready, m_axi_fb_wdata, m_axi_fb_wstrb, m_axi_fb_wlast, 
  m_axi_fb_wuser, m_axi_fb_wvalid, m_axi_fb_wready, m_axi_fb_bid, m_axi_fb_bresp, 
  m_axi_fb_buser, m_axi_fb_bvalid, m_axi_fb_bready, m_axi_fb_arid, m_axi_fb_araddr, 
  m_axi_fb_arlen, m_axi_fb_arsize, m_axi_fb_arburst, m_axi_fb_arlock, m_axi_fb_arcache, 
  m_axi_fb_arprot, m_axi_fb_arqos, m_axi_fb_aruser, m_axi_fb_arvalid, m_axi_fb_arready, 
  m_axi_fb_rid, m_axi_fb_rdata, m_axi_fb_rresp, m_axi_fb_rlast, m_axi_fb_ruser, 
  m_axi_fb_rvalid, m_axi_fb_rready)
/* synthesis syn_black_box black_box_pad_pin="axi_aclk,axi_aresetn,h_sync,v_sync,vga_b[3:0],vga_g[3:0],vga_r[3:0],s_axi_config_awaddr[3:0],s_axi_config_awprot[2:0],s_axi_config_awvalid,s_axi_config_awready,s_axi_config_wdata[31:0],s_axi_config_wstrb[3:0],s_axi_config_wvalid,s_axi_config_wready,s_axi_config_bresp[1:0],s_axi_config_bvalid,s_axi_config_bready,s_axi_config_araddr[3:0],s_axi_config_arprot[2:0],s_axi_config_arvalid,s_axi_config_arready,s_axi_config_rdata[31:0],s_axi_config_rresp[1:0],s_axi_config_rvalid,s_axi_config_rready,m_axi_fb_awid[0:0],m_axi_fb_awaddr[31:0],m_axi_fb_awlen[7:0],m_axi_fb_awsize[2:0],m_axi_fb_awburst[1:0],m_axi_fb_awlock,m_axi_fb_awcache[3:0],m_axi_fb_awprot[2:0],m_axi_fb_awqos[3:0],m_axi_fb_awuser[0:0],m_axi_fb_awvalid,m_axi_fb_awready,m_axi_fb_wdata[63:0],m_axi_fb_wstrb[7:0],m_axi_fb_wlast,m_axi_fb_wuser[0:0],m_axi_fb_wvalid,m_axi_fb_wready,m_axi_fb_bid[0:0],m_axi_fb_bresp[1:0],m_axi_fb_buser[0:0],m_axi_fb_bvalid,m_axi_fb_bready,m_axi_fb_arid[0:0],m_axi_fb_araddr[31:0],m_axi_fb_arlen[7:0],m_axi_fb_arsize[2:0],m_axi_fb_arburst[1:0],m_axi_fb_arlock,m_axi_fb_arcache[3:0],m_axi_fb_arprot[2:0],m_axi_fb_arqos[3:0],m_axi_fb_aruser[0:0],m_axi_fb_arvalid,m_axi_fb_arready,m_axi_fb_rid[0:0],m_axi_fb_rdata[63:0],m_axi_fb_rresp[1:0],m_axi_fb_rlast,m_axi_fb_ruser[0:0],m_axi_fb_rvalid,m_axi_fb_rready" */;
  input axi_aclk;
  input axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_b;
  output [3:0]vga_g;
  output [3:0]vga_r;
  input [3:0]s_axi_config_awaddr;
  input [2:0]s_axi_config_awprot;
  input s_axi_config_awvalid;
  output s_axi_config_awready;
  input [31:0]s_axi_config_wdata;
  input [3:0]s_axi_config_wstrb;
  input s_axi_config_wvalid;
  output s_axi_config_wready;
  output [1:0]s_axi_config_bresp;
  output s_axi_config_bvalid;
  input s_axi_config_bready;
  input [3:0]s_axi_config_araddr;
  input [2:0]s_axi_config_arprot;
  input s_axi_config_arvalid;
  output s_axi_config_arready;
  output [31:0]s_axi_config_rdata;
  output [1:0]s_axi_config_rresp;
  output s_axi_config_rvalid;
  input s_axi_config_rready;
  output [0:0]m_axi_fb_awid;
  output [31:0]m_axi_fb_awaddr;
  output [7:0]m_axi_fb_awlen;
  output [2:0]m_axi_fb_awsize;
  output [1:0]m_axi_fb_awburst;
  output m_axi_fb_awlock;
  output [3:0]m_axi_fb_awcache;
  output [2:0]m_axi_fb_awprot;
  output [3:0]m_axi_fb_awqos;
  output [0:0]m_axi_fb_awuser;
  output m_axi_fb_awvalid;
  input m_axi_fb_awready;
  output [63:0]m_axi_fb_wdata;
  output [7:0]m_axi_fb_wstrb;
  output m_axi_fb_wlast;
  output [0:0]m_axi_fb_wuser;
  output m_axi_fb_wvalid;
  input m_axi_fb_wready;
  input [0:0]m_axi_fb_bid;
  input [1:0]m_axi_fb_bresp;
  input [0:0]m_axi_fb_buser;
  input m_axi_fb_bvalid;
  output m_axi_fb_bready;
  output [0:0]m_axi_fb_arid;
  output [31:0]m_axi_fb_araddr;
  output [7:0]m_axi_fb_arlen;
  output [2:0]m_axi_fb_arsize;
  output [1:0]m_axi_fb_arburst;
  output m_axi_fb_arlock;
  output [3:0]m_axi_fb_arcache;
  output [2:0]m_axi_fb_arprot;
  output [3:0]m_axi_fb_arqos;
  output [0:0]m_axi_fb_aruser;
  output m_axi_fb_arvalid;
  input m_axi_fb_arready;
  input [0:0]m_axi_fb_rid;
  input [63:0]m_axi_fb_rdata;
  input [1:0]m_axi_fb_rresp;
  input m_axi_fb_rlast;
  input [0:0]m_axi_fb_ruser;
  input m_axi_fb_rvalid;
  output m_axi_fb_rready;
endmodule
