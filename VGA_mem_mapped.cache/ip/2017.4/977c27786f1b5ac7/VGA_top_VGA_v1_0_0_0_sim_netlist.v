// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jan 17 18:23:50 2018
// Host        : Del_Alienware running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_top_VGA_v1_0_0_0_sim_netlist.v
// Design      : VGA_top_VGA_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DownSample
   (output_buff_reg_0,
    output_buff,
    axi_aclk,
    axi_aresetn);
  output output_buff_reg_0;
  output output_buff;
  input axi_aclk;
  input axi_aresetn;

  wire axi_aclk;
  wire axi_aresetn;
  wire counter;
  wire eqOp;
  wire output_buff;
  wire output_buff_i_1_n_0;
  wire output_buff_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter),
        .O(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(eqOp),
        .Q(counter),
        .R(output_buff_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h9)) 
    output_buff_i_1
       (.I0(counter),
        .I1(output_buff),
        .O(output_buff_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    output_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(output_buff_i_1_n_0),
        .Q(output_buff),
        .R(output_buff_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_b[3]_i_1 
       (.I0(axi_aresetn),
        .O(output_buff_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
   (vga_h_display,
    h_sync,
    vga_v_display,
    v_sync,
    D,
    \vga_r_reg[3] ,
    \vga_b_reg[3] ,
    \vga_g_reg[3] ,
    \pixel_pointer_reg[5] ,
    vga_h_v_display,
    \i_reg[0] ,
    \i_reg[1] ,
    clock,
    pixel_pointer0,
    Q,
    \pixel_pointer_reg[5]_0 ,
    \pixel_buffer_reg[56] ,
    \pixel_buffer_reg[57] ,
    \pixel_buffer_reg[58] ,
    \pixel_buffer_reg[59] ,
    \pixel_buffer_reg[48] ,
    \pixel_buffer_reg[49] ,
    \pixel_buffer_reg[50] ,
    \pixel_buffer_reg[51] ,
    \pixel_buffer_reg[55] ,
    \pixel_buffer_reg[54] ,
    \pixel_buffer_reg[53] ,
    \pixel_buffer_reg[52] ,
    axi_aresetn,
    \i_reg[0]_0 );
  output vga_h_display;
  output h_sync;
  output vga_v_display;
  output v_sync;
  output [1:0]D;
  output [3:0]\vga_r_reg[3] ;
  output [3:0]\vga_b_reg[3] ;
  output [3:0]\vga_g_reg[3] ;
  output [0:0]\pixel_pointer_reg[5] ;
  output vga_h_v_display;
  output \i_reg[0] ;
  output \i_reg[1] ;
  input clock;
  input [0:0]pixel_pointer0;
  input [1:0]Q;
  input \pixel_pointer_reg[5]_0 ;
  input \pixel_buffer_reg[56] ;
  input \pixel_buffer_reg[57] ;
  input \pixel_buffer_reg[58] ;
  input \pixel_buffer_reg[59] ;
  input \pixel_buffer_reg[48] ;
  input \pixel_buffer_reg[49] ;
  input \pixel_buffer_reg[50] ;
  input \pixel_buffer_reg[51] ;
  input \pixel_buffer_reg[55] ;
  input \pixel_buffer_reg[54] ;
  input \pixel_buffer_reg[53] ;
  input \pixel_buffer_reg[52] ;
  input axi_aresetn;
  input \i_reg[0]_0 ;

  wire [1:0]D;
  wire [1:0]Q;
  wire axi_aresetn;
  wire clock;
  wire clock_hor;
  wire clock_hor_i_1_n_0;
  wire clock_ver;
  wire clock_ver_0;
  wire clock_ver_i_1_n_0;
  wire clock_ver_i_2_n_0;
  wire h_display_buff_i_1_n_0;
  wire h_display_buff_i_2_n_0;
  wire h_display_buff_i_3_n_0;
  wire h_sync;
  wire h_sync_buff_i_1_n_0;
  wire h_sync_buff_i_2_n_0;
  wire [9:0]hor_counter_buff;
  wire \hor_counter_buff[0]_i_1_n_0 ;
  wire \hor_counter_buff[2]_i_1_n_0 ;
  wire \hor_counter_buff[3]_i_1_n_0 ;
  wire \hor_counter_buff[4]_i_1_n_0 ;
  wire \hor_counter_buff[9]_i_1_n_0 ;
  wire \hor_counter_buff[9]_i_3_n_0 ;
  wire \hor_counter_buff[9]_i_4_n_0 ;
  wire \hor_counter_buff[9]_i_5_n_0 ;
  wire \hor_state[0]_i_1_n_0 ;
  wire \hor_state[1]_i_1_n_0 ;
  wire \hor_state[1]_i_3_n_0 ;
  wire \hor_state_reg_n_0_[0] ;
  wire \hor_state_reg_n_0_[1] ;
  wire \i_reg[0] ;
  wire \i_reg[0]_0 ;
  wire \i_reg[1] ;
  wire \pixel_buffer_reg[48] ;
  wire \pixel_buffer_reg[49] ;
  wire \pixel_buffer_reg[50] ;
  wire \pixel_buffer_reg[51] ;
  wire \pixel_buffer_reg[52] ;
  wire \pixel_buffer_reg[53] ;
  wire \pixel_buffer_reg[54] ;
  wire \pixel_buffer_reg[55] ;
  wire \pixel_buffer_reg[56] ;
  wire \pixel_buffer_reg[57] ;
  wire \pixel_buffer_reg[58] ;
  wire \pixel_buffer_reg[59] ;
  wire [0:0]pixel_pointer0;
  wire [0:0]\pixel_pointer_reg[5] ;
  wire \pixel_pointer_reg[5]_0 ;
  wire [9:1]plusOp;
  wire v_display_buff_i_1_n_0;
  wire v_sync;
  wire v_sync_buff_i_1_n_0;
  wire v_sync_buff_i_2_n_0;
  wire v_sync_buff_i_3_n_0;
  wire [9:0]ver_counter_buff;
  wire \ver_counter_buff[0]_i_1_n_0 ;
  wire \ver_counter_buff[0]_i_2_n_0 ;
  wire \ver_counter_buff[0]_i_3_n_0 ;
  wire \ver_counter_buff[1]_i_1_n_0 ;
  wire \ver_counter_buff[2]_i_1_n_0 ;
  wire \ver_counter_buff[3]_i_1_n_0 ;
  wire \ver_counter_buff[4]_i_1_n_0 ;
  wire \ver_counter_buff[5]_i_1_n_0 ;
  wire \ver_counter_buff[6]_i_1_n_0 ;
  wire \ver_counter_buff[7]_i_1_n_0 ;
  wire \ver_counter_buff[8]_i_1_n_0 ;
  wire \ver_counter_buff[9]_i_1_n_0 ;
  wire \ver_counter_buff[9]_i_2_n_0 ;
  wire \ver_counter_buff[9]_i_3_n_0 ;
  wire \ver_counter_buff[9]_i_4_n_0 ;
  wire \ver_counter_buff[9]_i_5_n_0 ;
  wire \ver_counter_buff[9]_i_6_n_0 ;
  wire \ver_counter_buff[9]_i_7_n_0 ;
  wire \ver_counter_buff[9]_i_8_n_0 ;
  wire \ver_state[0]_i_1_n_0 ;
  wire \ver_state[1]_i_1_n_0 ;
  wire \ver_state[1]_i_2_n_0 ;
  wire \ver_state[1]_i_3_n_0 ;
  wire \ver_state_reg_n_0_[0] ;
  wire \ver_state_reg_n_0_[1] ;
  wire [3:0]\vga_b_reg[3] ;
  wire [3:0]\vga_g_reg[3] ;
  wire vga_h_display;
  wire vga_h_v_display;
  wire [3:0]\vga_r_reg[3] ;
  wire vga_v_display;

  LUT2 #(
    .INIT(4'h4)) 
    clock_hor_i_1
       (.I0(clock_hor),
        .I1(axi_aresetn),
        .O(clock_hor_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_hor_reg
       (.C(clock),
        .CE(1'b1),
        .D(clock_hor_i_1_n_0),
        .Q(clock_hor),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    clock_ver_i_1
       (.I0(\hor_counter_buff[9]_i_5_n_0 ),
        .I1(hor_counter_buff[9]),
        .I2(\hor_state_reg_n_0_[0] ),
        .I3(clock_ver_i_2_n_0),
        .I4(clock_ver_0),
        .I5(clock_ver),
        .O(clock_ver_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    clock_ver_i_2
       (.I0(hor_counter_buff[8]),
        .I1(hor_counter_buff[7]),
        .I2(hor_counter_buff[3]),
        .I3(hor_counter_buff[1]),
        .I4(hor_counter_buff[0]),
        .I5(hor_counter_buff[2]),
        .O(clock_ver_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_ver_reg
       (.C(clock_hor),
        .CE(1'b1),
        .D(clock_ver_i_1_n_0),
        .Q(clock_ver),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    h_display_buff_i_1
       (.I0(h_display_buff_i_2_n_0),
        .I1(hor_counter_buff[5]),
        .I2(hor_counter_buff[4]),
        .I3(h_display_buff_i_3_n_0),
        .I4(clock_ver_0),
        .I5(vga_h_display),
        .O(h_display_buff_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    h_display_buff_i_2
       (.I0(hor_counter_buff[6]),
        .I1(\hor_state_reg_n_0_[0] ),
        .O(h_display_buff_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    h_display_buff_i_3
       (.I0(\hor_counter_buff[9]_i_4_n_0 ),
        .I1(hor_counter_buff[7]),
        .I2(hor_counter_buff[8]),
        .I3(hor_counter_buff[9]),
        .O(h_display_buff_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    h_display_buff_reg
       (.C(clock_hor),
        .CE(1'b1),
        .D(h_display_buff_i_1_n_0),
        .Q(vga_h_display),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFDFFFF80000000)) 
    h_sync_buff_i_1
       (.I0(\hor_state_reg_n_0_[1] ),
        .I1(hor_counter_buff[4]),
        .I2(hor_counter_buff[6]),
        .I3(\hor_state_reg_n_0_[0] ),
        .I4(h_sync_buff_i_2_n_0),
        .I5(h_sync),
        .O(h_sync_buff_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    h_sync_buff_i_2
       (.I0(hor_counter_buff[9]),
        .I1(hor_counter_buff[8]),
        .I2(hor_counter_buff[7]),
        .I3(\hor_counter_buff[9]_i_4_n_0 ),
        .I4(hor_counter_buff[5]),
        .O(h_sync_buff_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    h_sync_buff_reg
       (.C(clock_hor),
        .CE(1'b1),
        .D(h_sync_buff_i_1_n_0),
        .Q(h_sync),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hor_counter_buff[0]_i_1 
       (.I0(hor_counter_buff[0]),
        .O(\hor_counter_buff[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hor_counter_buff[1]_i_1 
       (.I0(hor_counter_buff[0]),
        .I1(hor_counter_buff[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hor_counter_buff[2]_i_1 
       (.I0(hor_counter_buff[1]),
        .I1(hor_counter_buff[0]),
        .I2(hor_counter_buff[2]),
        .O(\hor_counter_buff[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hor_counter_buff[3]_i_1 
       (.I0(hor_counter_buff[2]),
        .I1(hor_counter_buff[0]),
        .I2(hor_counter_buff[1]),
        .I3(hor_counter_buff[3]),
        .O(\hor_counter_buff[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hor_counter_buff[4]_i_1 
       (.I0(hor_counter_buff[3]),
        .I1(hor_counter_buff[1]),
        .I2(hor_counter_buff[0]),
        .I3(hor_counter_buff[2]),
        .I4(hor_counter_buff[4]),
        .O(\hor_counter_buff[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hor_counter_buff[5]_i_1 
       (.I0(hor_counter_buff[2]),
        .I1(hor_counter_buff[0]),
        .I2(hor_counter_buff[1]),
        .I3(hor_counter_buff[3]),
        .I4(hor_counter_buff[4]),
        .I5(hor_counter_buff[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \hor_counter_buff[6]_i_1 
       (.I0(hor_counter_buff[4]),
        .I1(hor_counter_buff[5]),
        .I2(\hor_counter_buff[9]_i_4_n_0 ),
        .I3(hor_counter_buff[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \hor_counter_buff[7]_i_1 
       (.I0(\hor_counter_buff[9]_i_4_n_0 ),
        .I1(hor_counter_buff[6]),
        .I2(hor_counter_buff[5]),
        .I3(hor_counter_buff[4]),
        .I4(hor_counter_buff[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \hor_counter_buff[8]_i_1 
       (.I0(\hor_counter_buff[9]_i_4_n_0 ),
        .I1(hor_counter_buff[4]),
        .I2(hor_counter_buff[5]),
        .I3(hor_counter_buff[6]),
        .I4(hor_counter_buff[7]),
        .I5(hor_counter_buff[8]),
        .O(plusOp[8]));
  LUT4 #(
    .INIT(16'h0001)) 
    \hor_counter_buff[9]_i_1 
       (.I0(\hor_counter_buff[9]_i_3_n_0 ),
        .I1(\hor_counter_buff[9]_i_4_n_0 ),
        .I2(hor_counter_buff[7]),
        .I3(hor_counter_buff[8]),
        .O(\hor_counter_buff[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \hor_counter_buff[9]_i_2 
       (.I0(\hor_counter_buff[9]_i_4_n_0 ),
        .I1(hor_counter_buff[8]),
        .I2(hor_counter_buff[7]),
        .I3(\hor_counter_buff[9]_i_5_n_0 ),
        .I4(hor_counter_buff[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'hFB7FFFFFFFFFFEEF)) 
    \hor_counter_buff[9]_i_3 
       (.I0(hor_counter_buff[9]),
        .I1(\hor_state_reg_n_0_[0] ),
        .I2(hor_counter_buff[5]),
        .I3(\hor_state_reg_n_0_[1] ),
        .I4(hor_counter_buff[4]),
        .I5(hor_counter_buff[6]),
        .O(\hor_counter_buff[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hor_counter_buff[9]_i_4 
       (.I0(hor_counter_buff[2]),
        .I1(hor_counter_buff[0]),
        .I2(hor_counter_buff[1]),
        .I3(hor_counter_buff[3]),
        .O(\hor_counter_buff[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hor_counter_buff[9]_i_5 
       (.I0(hor_counter_buff[6]),
        .I1(hor_counter_buff[5]),
        .I2(hor_counter_buff[4]),
        .O(\hor_counter_buff[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[0] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(\hor_counter_buff[0]_i_1_n_0 ),
        .Q(hor_counter_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[1] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(hor_counter_buff[1]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[2] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(\hor_counter_buff[2]_i_1_n_0 ),
        .Q(hor_counter_buff[2]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[3] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(\hor_counter_buff[3]_i_1_n_0 ),
        .Q(hor_counter_buff[3]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[4] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(\hor_counter_buff[4]_i_1_n_0 ),
        .Q(hor_counter_buff[4]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[5] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(hor_counter_buff[5]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[6] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(hor_counter_buff[6]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[7] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(hor_counter_buff[7]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[8] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(hor_counter_buff[8]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_counter_buff_reg[9] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(hor_counter_buff[9]),
        .R(\hor_counter_buff[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000233334CCECCCC)) 
    \hor_state[0]_i_1 
       (.I0(h_sync_buff_i_2_n_0),
        .I1(\hor_state_reg_n_0_[0] ),
        .I2(hor_counter_buff[6]),
        .I3(hor_counter_buff[4]),
        .I4(\hor_state_reg_n_0_[1] ),
        .I5(clock_ver_0),
        .O(\hor_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002CCCC7FFF0000)) 
    \hor_state[1]_i_1 
       (.I0(h_sync_buff_i_2_n_0),
        .I1(\hor_state_reg_n_0_[0] ),
        .I2(hor_counter_buff[6]),
        .I3(hor_counter_buff[4]),
        .I4(\hor_state_reg_n_0_[1] ),
        .I5(clock_ver_0),
        .O(\hor_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \hor_state[1]_i_2 
       (.I0(\hor_state_reg_n_0_[1] ),
        .I1(hor_counter_buff[8]),
        .I2(hor_counter_buff[7]),
        .I3(\hor_counter_buff[9]_i_4_n_0 ),
        .I4(\hor_state[1]_i_3_n_0 ),
        .O(clock_ver_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000004)) 
    \hor_state[1]_i_3 
       (.I0(hor_counter_buff[4]),
        .I1(hor_counter_buff[5]),
        .I2(\hor_state_reg_n_0_[0] ),
        .I3(hor_counter_buff[6]),
        .I4(hor_counter_buff[9]),
        .O(\hor_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hor_state_reg[0] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(\hor_state[0]_i_1_n_0 ),
        .Q(\hor_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hor_state_reg[1] 
       (.C(clock_hor),
        .CE(1'b1),
        .D(\hor_state[1]_i_1_n_0 ),
        .Q(\hor_state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i[0]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\i_reg[0]_0 ),
        .O(\i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \i[1]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(Q[0]),
        .I3(\i_reg[0]_0 ),
        .O(\i_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pixel_pointer[5]_i_1 
       (.I0(pixel_pointer0),
        .I1(vga_v_display),
        .I2(vga_h_display),
        .O(\pixel_pointer_reg[5] ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    v_display_buff_i_1
       (.I0(ver_counter_buff[0]),
        .I1(\ver_counter_buff[0]_i_3_n_0 ),
        .I2(ver_counter_buff[6]),
        .I3(\ver_counter_buff[0]_i_2_n_0 ),
        .I4(\ver_state[1]_i_2_n_0 ),
        .I5(vga_v_display),
        .O(v_display_buff_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v_display_buff_reg
       (.C(clock_ver),
        .CE(1'b1),
        .D(v_display_buff_i_1_n_0),
        .Q(vga_v_display),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000800)) 
    v_sync_buff_i_1
       (.I0(v_sync_buff_i_2_n_0),
        .I1(\ver_state_reg_n_0_[0] ),
        .I2(ver_counter_buff[3]),
        .I3(\ver_state_reg_n_0_[1] ),
        .I4(v_sync_buff_i_3_n_0),
        .I5(v_sync),
        .O(v_sync_buff_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    v_sync_buff_i_2
       (.I0(ver_counter_buff[4]),
        .I1(ver_counter_buff[2]),
        .I2(ver_counter_buff[0]),
        .I3(ver_counter_buff[6]),
        .O(v_sync_buff_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    v_sync_buff_i_3
       (.I0(ver_counter_buff[9]),
        .I1(ver_counter_buff[5]),
        .I2(ver_counter_buff[1]),
        .I3(ver_counter_buff[7]),
        .I4(ver_counter_buff[8]),
        .O(v_sync_buff_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    v_sync_buff_reg
       (.C(clock_ver),
        .CE(1'b1),
        .D(v_sync_buff_i_1_n_0),
        .Q(v_sync),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    \ver_counter_buff[0]_i_1 
       (.I0(\ver_counter_buff[0]_i_2_n_0 ),
        .I1(ver_counter_buff[6]),
        .I2(ver_counter_buff[0]),
        .I3(\ver_counter_buff[0]_i_3_n_0 ),
        .I4(\ver_state_reg_n_0_[1] ),
        .O(\ver_counter_buff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ver_counter_buff[0]_i_2 
       (.I0(ver_counter_buff[8]),
        .I1(ver_counter_buff[7]),
        .I2(ver_counter_buff[1]),
        .I3(ver_counter_buff[5]),
        .I4(ver_counter_buff[9]),
        .I5(\ver_state_reg_n_0_[0] ),
        .O(\ver_counter_buff[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ver_counter_buff[0]_i_3 
       (.I0(ver_counter_buff[3]),
        .I1(ver_counter_buff[2]),
        .I2(ver_counter_buff[4]),
        .O(\ver_counter_buff[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ver_counter_buff[1]_i_1 
       (.I0(ver_counter_buff[0]),
        .I1(ver_counter_buff[1]),
        .O(\ver_counter_buff[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ver_counter_buff[2]_i_1 
       (.I0(ver_counter_buff[1]),
        .I1(ver_counter_buff[0]),
        .I2(ver_counter_buff[2]),
        .O(\ver_counter_buff[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ver_counter_buff[3]_i_1 
       (.I0(ver_counter_buff[0]),
        .I1(ver_counter_buff[1]),
        .I2(ver_counter_buff[2]),
        .I3(ver_counter_buff[3]),
        .O(\ver_counter_buff[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ver_counter_buff[4]_i_1 
       (.I0(ver_counter_buff[2]),
        .I1(ver_counter_buff[3]),
        .I2(ver_counter_buff[0]),
        .I3(ver_counter_buff[1]),
        .I4(ver_counter_buff[4]),
        .O(\ver_counter_buff[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ver_counter_buff[5]_i_1 
       (.I0(ver_counter_buff[3]),
        .I1(ver_counter_buff[2]),
        .I2(ver_counter_buff[4]),
        .I3(ver_counter_buff[0]),
        .I4(ver_counter_buff[1]),
        .I5(ver_counter_buff[5]),
        .O(\ver_counter_buff[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \ver_counter_buff[6]_i_1 
       (.I0(ver_counter_buff[5]),
        .I1(\ver_counter_buff[9]_i_5_n_0 ),
        .I2(ver_counter_buff[4]),
        .I3(ver_counter_buff[2]),
        .I4(ver_counter_buff[3]),
        .I5(ver_counter_buff[6]),
        .O(\ver_counter_buff[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \ver_counter_buff[7]_i_1 
       (.I0(ver_counter_buff[6]),
        .I1(\ver_counter_buff[9]_i_8_n_0 ),
        .I2(ver_counter_buff[7]),
        .O(\ver_counter_buff[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ver_counter_buff[8]_i_1 
       (.I0(\ver_counter_buff[9]_i_8_n_0 ),
        .I1(ver_counter_buff[6]),
        .I2(ver_counter_buff[7]),
        .I3(ver_counter_buff[8]),
        .O(\ver_counter_buff[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000111)) 
    \ver_counter_buff[9]_i_1 
       (.I0(\ver_counter_buff[9]_i_3_n_0 ),
        .I1(\ver_counter_buff[9]_i_4_n_0 ),
        .I2(\ver_counter_buff[9]_i_5_n_0 ),
        .I3(ver_counter_buff[6]),
        .I4(\ver_counter_buff[9]_i_6_n_0 ),
        .I5(\ver_counter_buff[9]_i_7_n_0 ),
        .O(\ver_counter_buff[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ver_counter_buff[9]_i_2 
       (.I0(\ver_counter_buff[9]_i_8_n_0 ),
        .I1(ver_counter_buff[8]),
        .I2(ver_counter_buff[7]),
        .I3(ver_counter_buff[6]),
        .I4(ver_counter_buff[9]),
        .O(\ver_counter_buff[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEFFFFFEEEF)) 
    \ver_counter_buff[9]_i_3 
       (.I0(ver_counter_buff[9]),
        .I1(ver_counter_buff[5]),
        .I2(ver_counter_buff[3]),
        .I3(\ver_state_reg_n_0_[0] ),
        .I4(ver_counter_buff[6]),
        .I5(ver_counter_buff[8]),
        .O(\ver_counter_buff[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FCFFFF55FF00)) 
    \ver_counter_buff[9]_i_4 
       (.I0(ver_counter_buff[7]),
        .I1(ver_counter_buff[4]),
        .I2(ver_counter_buff[2]),
        .I3(\ver_state_reg_n_0_[1] ),
        .I4(ver_counter_buff[6]),
        .I5(ver_counter_buff[0]),
        .O(\ver_counter_buff[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ver_counter_buff[9]_i_5 
       (.I0(ver_counter_buff[0]),
        .I1(ver_counter_buff[1]),
        .O(\ver_counter_buff[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ver_counter_buff[9]_i_6 
       (.I0(ver_counter_buff[8]),
        .I1(ver_counter_buff[7]),
        .I2(ver_counter_buff[1]),
        .O(\ver_counter_buff[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFFF15FF55FF55)) 
    \ver_counter_buff[9]_i_7 
       (.I0(ver_counter_buff[0]),
        .I1(ver_counter_buff[2]),
        .I2(ver_counter_buff[4]),
        .I3(ver_counter_buff[6]),
        .I4(\ver_state_reg_n_0_[0] ),
        .I5(ver_counter_buff[3]),
        .O(\ver_counter_buff[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ver_counter_buff[9]_i_8 
       (.I0(ver_counter_buff[3]),
        .I1(ver_counter_buff[2]),
        .I2(ver_counter_buff[4]),
        .I3(ver_counter_buff[0]),
        .I4(ver_counter_buff[1]),
        .I5(ver_counter_buff[5]),
        .O(\ver_counter_buff[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[0] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[0]_i_1_n_0 ),
        .Q(ver_counter_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[1] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[1]_i_1_n_0 ),
        .Q(ver_counter_buff[1]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[2] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[2]_i_1_n_0 ),
        .Q(ver_counter_buff[2]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[3] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[3]_i_1_n_0 ),
        .Q(ver_counter_buff[3]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[4] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[4]_i_1_n_0 ),
        .Q(ver_counter_buff[4]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[5] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[5]_i_1_n_0 ),
        .Q(ver_counter_buff[5]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[6] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[6]_i_1_n_0 ),
        .Q(ver_counter_buff[6]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[7] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[7]_i_1_n_0 ),
        .Q(ver_counter_buff[7]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[8] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[8]_i_1_n_0 ),
        .Q(ver_counter_buff[8]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_counter_buff_reg[9] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_counter_buff[9]_i_2_n_0 ),
        .Q(ver_counter_buff[9]),
        .R(\ver_counter_buff[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55453A0A55550A0A)) 
    \ver_state[0]_i_1 
       (.I0(\ver_state[1]_i_2_n_0 ),
        .I1(v_sync_buff_i_3_n_0),
        .I2(\ver_state_reg_n_0_[1] ),
        .I3(ver_counter_buff[3]),
        .I4(\ver_state_reg_n_0_[0] ),
        .I5(v_sync_buff_i_2_n_0),
        .O(\ver_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5A4A70505A5A5050)) 
    \ver_state[1]_i_1 
       (.I0(\ver_state[1]_i_2_n_0 ),
        .I1(v_sync_buff_i_3_n_0),
        .I2(\ver_state_reg_n_0_[1] ),
        .I3(ver_counter_buff[3]),
        .I4(\ver_state_reg_n_0_[0] ),
        .I5(v_sync_buff_i_2_n_0),
        .O(\ver_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ver_state[1]_i_2 
       (.I0(ver_counter_buff[5]),
        .I1(ver_counter_buff[9]),
        .I2(\ver_counter_buff[0]_i_3_n_0 ),
        .I3(\ver_state_reg_n_0_[1] ),
        .I4(\ver_state[1]_i_3_n_0 ),
        .O(\ver_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000001)) 
    \ver_state[1]_i_3 
       (.I0(ver_counter_buff[8]),
        .I1(ver_counter_buff[7]),
        .I2(ver_counter_buff[1]),
        .I3(ver_counter_buff[0]),
        .I4(\ver_state_reg_n_0_[0] ),
        .I5(ver_counter_buff[6]),
        .O(\ver_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ver_state_reg[0] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_state[0]_i_1_n_0 ),
        .Q(\ver_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ver_state_reg[1] 
       (.C(clock_ver),
        .CE(1'b1),
        .D(\ver_state[1]_i_1_n_0 ),
        .Q(\ver_state_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_b[0]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[48] ),
        .O(\vga_b_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_b[1]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[49] ),
        .O(\vga_b_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_b[2]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[50] ),
        .O(\vga_b_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_b[3]_i_3 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[51] ),
        .O(\vga_b_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_g[0]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[52] ),
        .O(\vga_g_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_g[1]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[53] ),
        .O(\vga_g_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_g[2]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[54] ),
        .O(\vga_g_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_g[3]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[55] ),
        .O(\vga_g_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_r[0]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[56] ),
        .O(\vga_r_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_r[1]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[57] ),
        .O(\vga_r_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_r[2]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[58] ),
        .O(\vga_r_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vga_r[3]_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(\pixel_buffer_reg[59] ),
        .O(\vga_r_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    vga_synch_i_1
       (.I0(vga_h_display),
        .I1(vga_v_display),
        .O(vga_h_v_display));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \word_pointer[3]__0_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(pixel_pointer0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \word_pointer[4]__0_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(Q[1]),
        .I3(\pixel_pointer_reg[5]_0 ),
        .O(D[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_controller
   (SR,
    Q,
    \word_pointer_reg[0]__0_0 ,
    axi_fb_enable,
    \word_pointer_reg[5]__0_0 ,
    \word_pointer_reg[5]__0_1 ,
    pixel_pointer0,
    \vga_b_reg[0]_0 ,
    \vga_b_reg[1]_0 ,
    \vga_b_reg[2]_0 ,
    \vga_b_reg[3]_0 ,
    \vga_g_reg[0]_0 ,
    \vga_g_reg[1]_0 ,
    \vga_g_reg[2]_0 ,
    \vga_g_reg[3]_0 ,
    \vga_r_reg[0]_0 ,
    \vga_r_reg[1]_0 ,
    \vga_r_reg[2]_0 ,
    \vga_r_reg[3]_0 ,
    vga_b,
    vga_g,
    vga_r,
    \m_axi_fb_araddr_buff_reg[31] ,
    axi_aclk,
    v_display_buff_reg,
    \address_reg_buff_reg[30] ,
    S,
    \address_reg_buff_reg[14] ,
    \address_reg_buff_reg[18] ,
    \address_reg_buff_reg[22] ,
    \address_reg_buff_reg[26] ,
    \address_reg_buff_reg[30]_0 ,
    \address_reg_buff_reg[31] ,
    vga_h_v_display,
    v_display_buff_reg_0,
    axi_aresetn,
    axi_fb_ready,
    axi_fb_di_ready,
    \start_reg_buff_reg[0] ,
    vga_h_display,
    vga_v_display,
    D,
    m_axi_fb_rvalid,
    m_axi_fb_rready_buff_reg,
    v_display_buff_reg_1,
    v_display_buff_reg_2,
    v_display_buff_reg_3,
    m_axi_fb_rdata,
    v_display_buff_reg_4,
    \address_reg_buff_reg[7] );
  output [0:0]SR;
  output [24:0]Q;
  output \word_pointer_reg[0]__0_0 ;
  output axi_fb_enable;
  output [1:0]\word_pointer_reg[5]__0_0 ;
  output \word_pointer_reg[5]__0_1 ;
  output [0:0]pixel_pointer0;
  output \vga_b_reg[0]_0 ;
  output \vga_b_reg[1]_0 ;
  output \vga_b_reg[2]_0 ;
  output \vga_b_reg[3]_0 ;
  output \vga_g_reg[0]_0 ;
  output \vga_g_reg[1]_0 ;
  output \vga_g_reg[2]_0 ;
  output \vga_g_reg[3]_0 ;
  output \vga_r_reg[0]_0 ;
  output \vga_r_reg[1]_0 ;
  output \vga_r_reg[2]_0 ;
  output \vga_r_reg[3]_0 ;
  output [3:0]vga_b;
  output [3:0]vga_g;
  output [3:0]vga_r;
  output [31:0]\m_axi_fb_araddr_buff_reg[31] ;
  input axi_aclk;
  input v_display_buff_reg;
  input [30:0]\address_reg_buff_reg[30] ;
  input [3:0]S;
  input [3:0]\address_reg_buff_reg[14] ;
  input [3:0]\address_reg_buff_reg[18] ;
  input [3:0]\address_reg_buff_reg[22] ;
  input [3:0]\address_reg_buff_reg[26] ;
  input [3:0]\address_reg_buff_reg[30]_0 ;
  input [0:0]\address_reg_buff_reg[31] ;
  input vga_h_v_display;
  input v_display_buff_reg_0;
  input axi_aresetn;
  input axi_fb_ready;
  input axi_fb_di_ready;
  input [0:0]\start_reg_buff_reg[0] ;
  input vga_h_display;
  input vga_v_display;
  input [0:0]D;
  input m_axi_fb_rvalid;
  input m_axi_fb_rready_buff_reg;
  input [3:0]v_display_buff_reg_1;
  input [3:0]v_display_buff_reg_2;
  input [3:0]v_display_buff_reg_3;
  input [63:0]m_axi_fb_rdata;
  input [1:0]v_display_buff_reg_4;
  input [0:0]\address_reg_buff_reg[7] ;

  wire [0:0]D;
  wire \FSM_sequential_gat_state[0]_i_1_n_0 ;
  wire \FSM_sequential_gat_state[1]_i_1_n_0 ;
  wire [24:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire [3:0]\address_reg_buff_reg[14] ;
  wire [3:0]\address_reg_buff_reg[18] ;
  wire [3:0]\address_reg_buff_reg[22] ;
  wire [3:0]\address_reg_buff_reg[26] ;
  wire [30:0]\address_reg_buff_reg[30] ;
  wire [3:0]\address_reg_buff_reg[30]_0 ;
  wire [0:0]\address_reg_buff_reg[31] ;
  wire [0:0]\address_reg_buff_reg[7] ;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_fb_di_address_buff0_carry__0_n_0;
  wire axi_fb_di_address_buff0_carry__0_n_1;
  wire axi_fb_di_address_buff0_carry__0_n_2;
  wire axi_fb_di_address_buff0_carry__0_n_3;
  wire axi_fb_di_address_buff0_carry__0_n_4;
  wire axi_fb_di_address_buff0_carry__0_n_5;
  wire axi_fb_di_address_buff0_carry__0_n_6;
  wire axi_fb_di_address_buff0_carry__0_n_7;
  wire axi_fb_di_address_buff0_carry__1_n_0;
  wire axi_fb_di_address_buff0_carry__1_n_1;
  wire axi_fb_di_address_buff0_carry__1_n_2;
  wire axi_fb_di_address_buff0_carry__1_n_3;
  wire axi_fb_di_address_buff0_carry__1_n_4;
  wire axi_fb_di_address_buff0_carry__1_n_5;
  wire axi_fb_di_address_buff0_carry__1_n_6;
  wire axi_fb_di_address_buff0_carry__1_n_7;
  wire axi_fb_di_address_buff0_carry__2_n_0;
  wire axi_fb_di_address_buff0_carry__2_n_1;
  wire axi_fb_di_address_buff0_carry__2_n_2;
  wire axi_fb_di_address_buff0_carry__2_n_3;
  wire axi_fb_di_address_buff0_carry__2_n_4;
  wire axi_fb_di_address_buff0_carry__2_n_5;
  wire axi_fb_di_address_buff0_carry__2_n_6;
  wire axi_fb_di_address_buff0_carry__2_n_7;
  wire axi_fb_di_address_buff0_carry__3_n_0;
  wire axi_fb_di_address_buff0_carry__3_n_1;
  wire axi_fb_di_address_buff0_carry__3_n_2;
  wire axi_fb_di_address_buff0_carry__3_n_3;
  wire axi_fb_di_address_buff0_carry__3_n_4;
  wire axi_fb_di_address_buff0_carry__3_n_5;
  wire axi_fb_di_address_buff0_carry__3_n_6;
  wire axi_fb_di_address_buff0_carry__3_n_7;
  wire axi_fb_di_address_buff0_carry__4_n_0;
  wire axi_fb_di_address_buff0_carry__4_n_1;
  wire axi_fb_di_address_buff0_carry__4_n_2;
  wire axi_fb_di_address_buff0_carry__4_n_3;
  wire axi_fb_di_address_buff0_carry__4_n_4;
  wire axi_fb_di_address_buff0_carry__4_n_5;
  wire axi_fb_di_address_buff0_carry__4_n_6;
  wire axi_fb_di_address_buff0_carry__4_n_7;
  wire axi_fb_di_address_buff0_carry__5_n_7;
  wire axi_fb_di_address_buff0_carry_n_0;
  wire axi_fb_di_address_buff0_carry_n_1;
  wire axi_fb_di_address_buff0_carry_n_2;
  wire axi_fb_di_address_buff0_carry_n_3;
  wire axi_fb_di_address_buff0_carry_n_4;
  wire axi_fb_di_address_buff0_carry_n_5;
  wire axi_fb_di_address_buff0_carry_n_6;
  wire axi_fb_di_address_buff__0;
  wire axi_fb_di_ready;
  wire axi_fb_enable;
  wire axi_fb_enable_buff_i_1_n_0;
  wire axi_fb_ready;
  wire \blk_addra[7]_i_1_n_0 ;
  wire blk_addrb;
  wire [59:0]blk_doutb;
  wire blk_wea_i_1_n_0;
  wire [3:0]data0;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [63:0]dina;
  wire \gat_address_base[10]_i_1_n_0 ;
  wire \gat_address_base[11]_i_1_n_0 ;
  wire \gat_address_base[12]_i_1_n_0 ;
  wire \gat_address_base[13]_i_1_n_0 ;
  wire \gat_address_base[14]_i_1_n_0 ;
  wire \gat_address_base[15]_i_1_n_0 ;
  wire \gat_address_base[16]_i_1_n_0 ;
  wire \gat_address_base[17]_i_1_n_0 ;
  wire \gat_address_base[18]_i_1_n_0 ;
  wire \gat_address_base[19]_i_1_n_0 ;
  wire \gat_address_base[20]_i_1_n_0 ;
  wire \gat_address_base[21]_i_1_n_0 ;
  wire \gat_address_base[22]_i_1_n_0 ;
  wire \gat_address_base[23]_i_1_n_0 ;
  wire \gat_address_base[24]_i_1_n_0 ;
  wire \gat_address_base[25]_i_1_n_0 ;
  wire \gat_address_base[26]_i_1_n_0 ;
  wire \gat_address_base[27]_i_1_n_0 ;
  wire \gat_address_base[28]_i_1_n_0 ;
  wire \gat_address_base[29]_i_1_n_0 ;
  wire \gat_address_base[30]_i_1_n_0 ;
  wire \gat_address_base[31]_i_1_n_0 ;
  wire \gat_address_base[31]_i_2_n_0 ;
  wire \gat_address_base[7]_i_1_n_0 ;
  wire \gat_address_base[8]_i_1_n_0 ;
  wire \gat_address_base[9]_i_1_n_0 ;
  wire gat_enable;
  wire gat_enable_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire gat_ready;
  wire gat_ready_i_1_n_0;
  wire gat_ready_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [0:0]gat_state;
  wire gat_state0;
  wire \i_reg_n_0_[1] ;
  wire [31:0]\m_axi_fb_araddr_buff_reg[31] ;
  wire [63:0]m_axi_fb_rdata;
  wire m_axi_fb_rready_buff_reg;
  wire m_axi_fb_rvalid;
  wire output_buff;
  wire [9:1]p_0_in;
  wire \pixel_buffer_reg_n_0_[0] ;
  wire \pixel_buffer_reg_n_0_[10] ;
  wire \pixel_buffer_reg_n_0_[11] ;
  wire \pixel_buffer_reg_n_0_[1] ;
  wire \pixel_buffer_reg_n_0_[20] ;
  wire \pixel_buffer_reg_n_0_[21] ;
  wire \pixel_buffer_reg_n_0_[22] ;
  wire \pixel_buffer_reg_n_0_[23] ;
  wire \pixel_buffer_reg_n_0_[24] ;
  wire \pixel_buffer_reg_n_0_[25] ;
  wire \pixel_buffer_reg_n_0_[26] ;
  wire \pixel_buffer_reg_n_0_[27] ;
  wire \pixel_buffer_reg_n_0_[2] ;
  wire \pixel_buffer_reg_n_0_[36] ;
  wire \pixel_buffer_reg_n_0_[37] ;
  wire \pixel_buffer_reg_n_0_[38] ;
  wire \pixel_buffer_reg_n_0_[39] ;
  wire \pixel_buffer_reg_n_0_[3] ;
  wire \pixel_buffer_reg_n_0_[40] ;
  wire \pixel_buffer_reg_n_0_[41] ;
  wire \pixel_buffer_reg_n_0_[42] ;
  wire \pixel_buffer_reg_n_0_[43] ;
  wire \pixel_buffer_reg_n_0_[52] ;
  wire \pixel_buffer_reg_n_0_[53] ;
  wire \pixel_buffer_reg_n_0_[54] ;
  wire \pixel_buffer_reg_n_0_[55] ;
  wire \pixel_buffer_reg_n_0_[56] ;
  wire \pixel_buffer_reg_n_0_[57] ;
  wire \pixel_buffer_reg_n_0_[58] ;
  wire \pixel_buffer_reg_n_0_[59] ;
  wire \pixel_buffer_reg_n_0_[8] ;
  wire \pixel_buffer_reg_n_0_[9] ;
  wire [0:0]pixel_pointer0;
  wire [9:2]pixel_pointer_reg__0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__3_n_6;
  wire plusOp_carry__3_n_7;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry__4_n_6;
  wire plusOp_carry__4_n_7;
  wire plusOp_carry__5_n_7;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire [0:0]\start_reg_buff_reg[0] ;
  wire v_display_buff_reg;
  wire v_display_buff_reg_0;
  wire [3:0]v_display_buff_reg_1;
  wire [3:0]v_display_buff_reg_2;
  wire [3:0]v_display_buff_reg_3;
  wire [1:0]v_display_buff_reg_4;
  wire [3:0]vga_b;
  wire \vga_b[3]_i_2_n_0 ;
  wire \vga_b_reg[0]_0 ;
  wire \vga_b_reg[1]_0 ;
  wire \vga_b_reg[2]_0 ;
  wire \vga_b_reg[3]_0 ;
  wire [3:0]vga_g;
  wire \vga_g_reg[0]_0 ;
  wire \vga_g_reg[1]_0 ;
  wire \vga_g_reg[2]_0 ;
  wire \vga_g_reg[3]_0 ;
  wire vga_h_display;
  wire vga_h_v_display;
  wire [3:0]vga_r;
  wire \vga_r_reg[0]_0 ;
  wire \vga_r_reg[1]_0 ;
  wire \vga_r_reg[2]_0 ;
  wire \vga_r_reg[3]_0 ;
  wire vga_state0__0;
  wire \vga_state[0]_i_1_n_0 ;
  wire \vga_state[1]_i_1_n_0 ;
  wire \vga_state[1]_i_2_n_0 ;
  wire \vga_state_reg_n_0_[0] ;
  wire \vga_state_reg_n_0_[1] ;
  wire vga_synch;
  wire vga_v_display;
  wire wea;
  wire \word_pointer[0]__0_i_1_n_0 ;
  wire \word_pointer[0]_i_1_n_0 ;
  wire \word_pointer[1]__0_i_1_n_0 ;
  wire \word_pointer[1]_i_1_n_0 ;
  wire \word_pointer[2]__0_i_1_n_0 ;
  wire \word_pointer[2]_i_1_n_0 ;
  wire \word_pointer[3]_i_1_n_0 ;
  wire \word_pointer[4]_i_1_n_0 ;
  wire \word_pointer[5]__0_i_1_n_0 ;
  wire \word_pointer[5]_i_1_n_0 ;
  wire \word_pointer[5]_i_2_n_0 ;
  wire \word_pointer[6]__0_i_1_n_0 ;
  wire \word_pointer[6]_i_1_n_0 ;
  wire \word_pointer[7]__0_i_1_n_0 ;
  wire \word_pointer[7]_i_1_n_0 ;
  wire \word_pointer[7]_i_2_n_0 ;
  wire \word_pointer[7]_i_4_n_0 ;
  wire \word_pointer_reg[0]__0_0 ;
  wire \word_pointer_reg[0]__0_n_0 ;
  wire \word_pointer_reg[1]__0_n_0 ;
  wire \word_pointer_reg[2]__0_n_0 ;
  wire \word_pointer_reg[3]__0_n_0 ;
  wire \word_pointer_reg[4]__0_n_0 ;
  wire [1:0]\word_pointer_reg[5]__0_0 ;
  wire \word_pointer_reg[5]__0_1 ;
  wire \word_pointer_reg[5]__0_n_0 ;
  wire \word_pointer_reg[6]__0_n_0 ;
  wire \word_pointer_reg[7]__0_n_0 ;
  wire \word_pointer_reg_n_0_[0] ;
  wire \word_pointer_reg_n_0_[1] ;
  wire \word_pointer_reg_n_0_[2] ;
  wire \word_pointer_reg_n_0_[3] ;
  wire \word_pointer_reg_n_0_[4] ;
  wire \word_pointer_reg_n_0_[5] ;
  wire \word_pointer_reg_n_0_[6] ;
  wire \word_pointer_reg_n_0_[7] ;
  wire [0:0]NLW_axi_fb_di_address_buff0_carry_O_UNCONNECTED;
  wire [3:0]NLW_axi_fb_di_address_buff0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_axi_fb_di_address_buff0_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__5_O_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DownSample DownSample_0
       (.axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .output_buff(output_buff),
        .output_buff_reg_0(SR));
  LUT6 #(
    .INIT(64'h0D5D5D5D04040404)) 
    \FSM_sequential_gat_state[0]_i_1 
       (.I0(gat_ready),
        .I1(gat_enable),
        .I2(gat_state),
        .I3(axi_fb_enable),
        .I4(axi_fb_ready),
        .I5(gat_state),
        .O(\FSM_sequential_gat_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5959595950000000)) 
    \FSM_sequential_gat_state[1]_i_1 
       (.I0(gat_ready),
        .I1(gat_enable),
        .I2(gat_state),
        .I3(axi_fb_enable),
        .I4(axi_fb_ready),
        .I5(gat_ready),
        .O(\FSM_sequential_gat_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_gat_enable:00,s_gat_axi_fb:01,s_gat_ready:10,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gat_state_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_gat_state[0]_i_1_n_0 ),
        .Q(gat_state),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_gat_enable:00,s_gat_axi_fb:01,s_gat_ready:10,iSTATE:11" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gat_state_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_gat_state[1]_i_1_n_0 ),
        .Q(gat_ready),
        .R(SR));
  LUT3 #(
    .INIT(8'h02)) 
    axi_fb_di_address_buff
       (.I0(gat_enable),
        .I1(gat_state),
        .I2(gat_ready),
        .O(axi_fb_di_address_buff__0));
  CARRY4 axi_fb_di_address_buff0_carry
       (.CI(1'b0),
        .CO({axi_fb_di_address_buff0_carry_n_0,axi_fb_di_address_buff0_carry_n_1,axi_fb_di_address_buff0_carry_n_2,axi_fb_di_address_buff0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\address_reg_buff_reg[30] [10:7]),
        .O({axi_fb_di_address_buff0_carry_n_4,axi_fb_di_address_buff0_carry_n_5,axi_fb_di_address_buff0_carry_n_6,NLW_axi_fb_di_address_buff0_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 axi_fb_di_address_buff0_carry__0
       (.CI(axi_fb_di_address_buff0_carry_n_0),
        .CO({axi_fb_di_address_buff0_carry__0_n_0,axi_fb_di_address_buff0_carry__0_n_1,axi_fb_di_address_buff0_carry__0_n_2,axi_fb_di_address_buff0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\address_reg_buff_reg[30] [14:11]),
        .O({axi_fb_di_address_buff0_carry__0_n_4,axi_fb_di_address_buff0_carry__0_n_5,axi_fb_di_address_buff0_carry__0_n_6,axi_fb_di_address_buff0_carry__0_n_7}),
        .S(\address_reg_buff_reg[14] ));
  CARRY4 axi_fb_di_address_buff0_carry__1
       (.CI(axi_fb_di_address_buff0_carry__0_n_0),
        .CO({axi_fb_di_address_buff0_carry__1_n_0,axi_fb_di_address_buff0_carry__1_n_1,axi_fb_di_address_buff0_carry__1_n_2,axi_fb_di_address_buff0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\address_reg_buff_reg[30] [18:15]),
        .O({axi_fb_di_address_buff0_carry__1_n_4,axi_fb_di_address_buff0_carry__1_n_5,axi_fb_di_address_buff0_carry__1_n_6,axi_fb_di_address_buff0_carry__1_n_7}),
        .S(\address_reg_buff_reg[18] ));
  CARRY4 axi_fb_di_address_buff0_carry__2
       (.CI(axi_fb_di_address_buff0_carry__1_n_0),
        .CO({axi_fb_di_address_buff0_carry__2_n_0,axi_fb_di_address_buff0_carry__2_n_1,axi_fb_di_address_buff0_carry__2_n_2,axi_fb_di_address_buff0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\address_reg_buff_reg[30] [22:19]),
        .O({axi_fb_di_address_buff0_carry__2_n_4,axi_fb_di_address_buff0_carry__2_n_5,axi_fb_di_address_buff0_carry__2_n_6,axi_fb_di_address_buff0_carry__2_n_7}),
        .S(\address_reg_buff_reg[22] ));
  CARRY4 axi_fb_di_address_buff0_carry__3
       (.CI(axi_fb_di_address_buff0_carry__2_n_0),
        .CO({axi_fb_di_address_buff0_carry__3_n_0,axi_fb_di_address_buff0_carry__3_n_1,axi_fb_di_address_buff0_carry__3_n_2,axi_fb_di_address_buff0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\address_reg_buff_reg[30] [26:23]),
        .O({axi_fb_di_address_buff0_carry__3_n_4,axi_fb_di_address_buff0_carry__3_n_5,axi_fb_di_address_buff0_carry__3_n_6,axi_fb_di_address_buff0_carry__3_n_7}),
        .S(\address_reg_buff_reg[26] ));
  CARRY4 axi_fb_di_address_buff0_carry__4
       (.CI(axi_fb_di_address_buff0_carry__3_n_0),
        .CO({axi_fb_di_address_buff0_carry__4_n_0,axi_fb_di_address_buff0_carry__4_n_1,axi_fb_di_address_buff0_carry__4_n_2,axi_fb_di_address_buff0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\address_reg_buff_reg[30] [30:27]),
        .O({axi_fb_di_address_buff0_carry__4_n_4,axi_fb_di_address_buff0_carry__4_n_5,axi_fb_di_address_buff0_carry__4_n_6,axi_fb_di_address_buff0_carry__4_n_7}),
        .S(\address_reg_buff_reg[30]_0 ));
  CARRY4 axi_fb_di_address_buff0_carry__5
       (.CI(axi_fb_di_address_buff0_carry__4_n_0),
        .CO(NLW_axi_fb_di_address_buff0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_axi_fb_di_address_buff0_carry__5_O_UNCONNECTED[3:1],axi_fb_di_address_buff0_carry__5_n_7}),
        .S({1'b0,1'b0,1'b0,\address_reg_buff_reg[31] }));
  FDRE \axi_fb_di_address_buff_reg[0] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [0]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [0]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[10] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry_n_4),
        .Q(\m_axi_fb_araddr_buff_reg[31] [10]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[11] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__0_n_7),
        .Q(\m_axi_fb_araddr_buff_reg[31] [11]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[12] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__0_n_6),
        .Q(\m_axi_fb_araddr_buff_reg[31] [12]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[13] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__0_n_5),
        .Q(\m_axi_fb_araddr_buff_reg[31] [13]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[14] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__0_n_4),
        .Q(\m_axi_fb_araddr_buff_reg[31] [14]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[15] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__1_n_7),
        .Q(\m_axi_fb_araddr_buff_reg[31] [15]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[16] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__1_n_6),
        .Q(\m_axi_fb_araddr_buff_reg[31] [16]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[17] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__1_n_5),
        .Q(\m_axi_fb_araddr_buff_reg[31] [17]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[18] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__1_n_4),
        .Q(\m_axi_fb_araddr_buff_reg[31] [18]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[19] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__2_n_7),
        .Q(\m_axi_fb_araddr_buff_reg[31] [19]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[1] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [1]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [1]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[20] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__2_n_6),
        .Q(\m_axi_fb_araddr_buff_reg[31] [20]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[21] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__2_n_5),
        .Q(\m_axi_fb_araddr_buff_reg[31] [21]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[22] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__2_n_4),
        .Q(\m_axi_fb_araddr_buff_reg[31] [22]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[23] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__3_n_7),
        .Q(\m_axi_fb_araddr_buff_reg[31] [23]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[24] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__3_n_6),
        .Q(\m_axi_fb_araddr_buff_reg[31] [24]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[25] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__3_n_5),
        .Q(\m_axi_fb_araddr_buff_reg[31] [25]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[26] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__3_n_4),
        .Q(\m_axi_fb_araddr_buff_reg[31] [26]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[27] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__4_n_7),
        .Q(\m_axi_fb_araddr_buff_reg[31] [27]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[28] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__4_n_6),
        .Q(\m_axi_fb_araddr_buff_reg[31] [28]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[29] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__4_n_5),
        .Q(\m_axi_fb_araddr_buff_reg[31] [29]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[2] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [2]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [2]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[30] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__4_n_4),
        .Q(\m_axi_fb_araddr_buff_reg[31] [30]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[31] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry__5_n_7),
        .Q(\m_axi_fb_araddr_buff_reg[31] [31]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[3] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [3]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [3]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[4] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [4]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [4]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[5] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [5]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [5]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[6] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[30] [6]),
        .Q(\m_axi_fb_araddr_buff_reg[31] [6]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[7] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(\address_reg_buff_reg[7] ),
        .Q(\m_axi_fb_araddr_buff_reg[31] [7]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[8] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry_n_6),
        .Q(\m_axi_fb_araddr_buff_reg[31] [8]),
        .R(SR));
  FDRE \axi_fb_di_address_buff_reg[9] 
       (.C(axi_aclk),
        .CE(axi_fb_di_address_buff__0),
        .D(axi_fb_di_address_buff0_carry_n_5),
        .Q(\m_axi_fb_araddr_buff_reg[31] [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBF00BF44BF44BF44)) 
    axi_fb_enable_buff_i_1
       (.I0(gat_ready),
        .I1(gat_state),
        .I2(axi_fb_ready),
        .I3(axi_fb_enable),
        .I4(m_axi_fb_rvalid),
        .I5(m_axi_fb_rready_buff_reg),
        .O(axi_fb_enable_buff_i_1_n_0));
  FDRE axi_fb_enable_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_fb_enable_buff_i_1_n_0),
        .Q(axi_fb_enable),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000002A000000)) 
    \blk_addra[7]_i_1 
       (.I0(axi_aresetn),
        .I1(axi_fb_ready),
        .I2(axi_fb_enable),
        .I3(axi_fb_di_ready),
        .I4(gat_state),
        .I5(gat_ready),
        .O(\blk_addra[7]_i_1_n_0 ));
  FDRE \blk_addra_reg[0] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[0] ),
        .Q(addra[0]),
        .R(1'b0));
  FDRE \blk_addra_reg[1] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[1] ),
        .Q(addra[1]),
        .R(1'b0));
  FDRE \blk_addra_reg[2] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[2] ),
        .Q(addra[2]),
        .R(1'b0));
  FDRE \blk_addra_reg[3] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[3] ),
        .Q(addra[3]),
        .R(1'b0));
  FDRE \blk_addra_reg[4] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[4] ),
        .Q(addra[4]),
        .R(1'b0));
  FDRE \blk_addra_reg[5] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[5] ),
        .Q(addra[5]),
        .R(1'b0));
  FDRE \blk_addra_reg[6] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[6] ),
        .Q(addra[6]),
        .R(1'b0));
  FDRE \blk_addra_reg[7] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(\word_pointer_reg_n_0_[7] ),
        .Q(addra[7]),
        .R(1'b0));
  FDRE \blk_addrb_reg[0] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[0]__0_n_0 ),
        .Q(addrb[0]),
        .R(SR));
  FDRE \blk_addrb_reg[1] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[1]__0_n_0 ),
        .Q(addrb[1]),
        .R(SR));
  FDRE \blk_addrb_reg[2] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[2]__0_n_0 ),
        .Q(addrb[2]),
        .R(SR));
  FDRE \blk_addrb_reg[3] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[3]__0_n_0 ),
        .Q(addrb[3]),
        .R(SR));
  FDRE \blk_addrb_reg[4] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[4]__0_n_0 ),
        .Q(addrb[4]),
        .R(SR));
  FDRE \blk_addrb_reg[5] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[5]__0_n_0 ),
        .Q(addrb[5]),
        .R(SR));
  FDRE \blk_addrb_reg[6] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[6]__0_n_0 ),
        .Q(addrb[6]),
        .R(SR));
  FDRE \blk_addrb_reg[7] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(\word_pointer_reg[7]__0_n_0 ),
        .Q(addrb[7]),
        .R(SR));
  FDRE \blk_dina_reg[0] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[0]),
        .Q(dina[0]),
        .R(1'b0));
  FDRE \blk_dina_reg[10] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[10]),
        .Q(dina[10]),
        .R(1'b0));
  FDRE \blk_dina_reg[11] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[11]),
        .Q(dina[11]),
        .R(1'b0));
  FDRE \blk_dina_reg[12] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[12]),
        .Q(dina[12]),
        .R(1'b0));
  FDRE \blk_dina_reg[13] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[13]),
        .Q(dina[13]),
        .R(1'b0));
  FDRE \blk_dina_reg[14] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[14]),
        .Q(dina[14]),
        .R(1'b0));
  FDRE \blk_dina_reg[15] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[15]),
        .Q(dina[15]),
        .R(1'b0));
  FDRE \blk_dina_reg[16] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[16]),
        .Q(dina[16]),
        .R(1'b0));
  FDRE \blk_dina_reg[17] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[17]),
        .Q(dina[17]),
        .R(1'b0));
  FDRE \blk_dina_reg[18] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[18]),
        .Q(dina[18]),
        .R(1'b0));
  FDRE \blk_dina_reg[19] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[19]),
        .Q(dina[19]),
        .R(1'b0));
  FDRE \blk_dina_reg[1] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[1]),
        .Q(dina[1]),
        .R(1'b0));
  FDRE \blk_dina_reg[20] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[20]),
        .Q(dina[20]),
        .R(1'b0));
  FDRE \blk_dina_reg[21] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[21]),
        .Q(dina[21]),
        .R(1'b0));
  FDRE \blk_dina_reg[22] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[22]),
        .Q(dina[22]),
        .R(1'b0));
  FDRE \blk_dina_reg[23] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[23]),
        .Q(dina[23]),
        .R(1'b0));
  FDRE \blk_dina_reg[24] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[24]),
        .Q(dina[24]),
        .R(1'b0));
  FDRE \blk_dina_reg[25] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[25]),
        .Q(dina[25]),
        .R(1'b0));
  FDRE \blk_dina_reg[26] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[26]),
        .Q(dina[26]),
        .R(1'b0));
  FDRE \blk_dina_reg[27] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[27]),
        .Q(dina[27]),
        .R(1'b0));
  FDRE \blk_dina_reg[28] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[28]),
        .Q(dina[28]),
        .R(1'b0));
  FDRE \blk_dina_reg[29] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[29]),
        .Q(dina[29]),
        .R(1'b0));
  FDRE \blk_dina_reg[2] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[2]),
        .Q(dina[2]),
        .R(1'b0));
  FDRE \blk_dina_reg[30] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[30]),
        .Q(dina[30]),
        .R(1'b0));
  FDRE \blk_dina_reg[31] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[31]),
        .Q(dina[31]),
        .R(1'b0));
  FDRE \blk_dina_reg[32] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[32]),
        .Q(dina[32]),
        .R(1'b0));
  FDRE \blk_dina_reg[33] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[33]),
        .Q(dina[33]),
        .R(1'b0));
  FDRE \blk_dina_reg[34] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[34]),
        .Q(dina[34]),
        .R(1'b0));
  FDRE \blk_dina_reg[35] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[35]),
        .Q(dina[35]),
        .R(1'b0));
  FDRE \blk_dina_reg[36] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[36]),
        .Q(dina[36]),
        .R(1'b0));
  FDRE \blk_dina_reg[37] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[37]),
        .Q(dina[37]),
        .R(1'b0));
  FDRE \blk_dina_reg[38] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[38]),
        .Q(dina[38]),
        .R(1'b0));
  FDRE \blk_dina_reg[39] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[39]),
        .Q(dina[39]),
        .R(1'b0));
  FDRE \blk_dina_reg[3] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[3]),
        .Q(dina[3]),
        .R(1'b0));
  FDRE \blk_dina_reg[40] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[40]),
        .Q(dina[40]),
        .R(1'b0));
  FDRE \blk_dina_reg[41] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[41]),
        .Q(dina[41]),
        .R(1'b0));
  FDRE \blk_dina_reg[42] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[42]),
        .Q(dina[42]),
        .R(1'b0));
  FDRE \blk_dina_reg[43] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[43]),
        .Q(dina[43]),
        .R(1'b0));
  FDRE \blk_dina_reg[44] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[44]),
        .Q(dina[44]),
        .R(1'b0));
  FDRE \blk_dina_reg[45] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[45]),
        .Q(dina[45]),
        .R(1'b0));
  FDRE \blk_dina_reg[46] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[46]),
        .Q(dina[46]),
        .R(1'b0));
  FDRE \blk_dina_reg[47] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[47]),
        .Q(dina[47]),
        .R(1'b0));
  FDRE \blk_dina_reg[48] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[48]),
        .Q(dina[48]),
        .R(1'b0));
  FDRE \blk_dina_reg[49] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[49]),
        .Q(dina[49]),
        .R(1'b0));
  FDRE \blk_dina_reg[4] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[4]),
        .Q(dina[4]),
        .R(1'b0));
  FDRE \blk_dina_reg[50] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[50]),
        .Q(dina[50]),
        .R(1'b0));
  FDRE \blk_dina_reg[51] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[51]),
        .Q(dina[51]),
        .R(1'b0));
  FDRE \blk_dina_reg[52] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[52]),
        .Q(dina[52]),
        .R(1'b0));
  FDRE \blk_dina_reg[53] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[53]),
        .Q(dina[53]),
        .R(1'b0));
  FDRE \blk_dina_reg[54] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[54]),
        .Q(dina[54]),
        .R(1'b0));
  FDRE \blk_dina_reg[55] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[55]),
        .Q(dina[55]),
        .R(1'b0));
  FDRE \blk_dina_reg[56] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[56]),
        .Q(dina[56]),
        .R(1'b0));
  FDRE \blk_dina_reg[57] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[57]),
        .Q(dina[57]),
        .R(1'b0));
  FDRE \blk_dina_reg[58] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[58]),
        .Q(dina[58]),
        .R(1'b0));
  FDRE \blk_dina_reg[59] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[59]),
        .Q(dina[59]),
        .R(1'b0));
  FDRE \blk_dina_reg[5] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[5]),
        .Q(dina[5]),
        .R(1'b0));
  FDRE \blk_dina_reg[60] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[60]),
        .Q(dina[60]),
        .R(1'b0));
  FDRE \blk_dina_reg[61] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[61]),
        .Q(dina[61]),
        .R(1'b0));
  FDRE \blk_dina_reg[62] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[62]),
        .Q(dina[62]),
        .R(1'b0));
  FDRE \blk_dina_reg[63] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[63]),
        .Q(dina[63]),
        .R(1'b0));
  FDRE \blk_dina_reg[6] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[6]),
        .Q(dina[6]),
        .R(1'b0));
  FDRE \blk_dina_reg[7] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[7]),
        .Q(dina[7]),
        .R(1'b0));
  FDRE \blk_dina_reg[8] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[8]),
        .Q(dina[8]),
        .R(1'b0));
  FDRE \blk_dina_reg[9] 
       (.C(axi_aclk),
        .CE(\blk_addra[7]_i_1_n_0 ),
        .D(m_axi_fb_rdata[9]),
        .Q(dina[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel blk_mem_gen_pixel_0
       (.D({blk_doutb[59:48],blk_doutb[43:32],blk_doutb[27:16],blk_doutb[11:0]}),
        .Q(addra),
        .axi_aclk(axi_aclk),
        .\blk_addrb_reg[7] (addrb),
        .\blk_dina_reg[63] (dina),
        .wea(wea));
  LUT6 #(
    .INIT(64'hFFFF5FFF00000800)) 
    blk_wea_i_1
       (.I0(axi_aresetn),
        .I1(axi_fb_di_ready),
        .I2(gat_state0),
        .I3(gat_state),
        .I4(gat_ready),
        .I5(wea),
        .O(blk_wea_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    blk_wea_i_2
       (.I0(axi_fb_enable),
        .I1(axi_fb_ready),
        .O(gat_state0));
  FDRE blk_wea_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(blk_wea_i_1_n_0),
        .Q(wea),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[10]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry_n_4),
        .O(\gat_address_base[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[11]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__0_n_7),
        .O(\gat_address_base[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[12]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__0_n_6),
        .O(\gat_address_base[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[13]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__0_n_5),
        .O(\gat_address_base[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[14]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__0_n_4),
        .O(\gat_address_base[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[15]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__1_n_7),
        .O(\gat_address_base[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[16]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__1_n_6),
        .O(\gat_address_base[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[17]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__1_n_5),
        .O(\gat_address_base[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[18]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__1_n_4),
        .O(\gat_address_base[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[19]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__2_n_7),
        .O(\gat_address_base[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[20]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__2_n_6),
        .O(\gat_address_base[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[21]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__2_n_5),
        .O(\gat_address_base[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[22]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__2_n_4),
        .O(\gat_address_base[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[23]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__3_n_7),
        .O(\gat_address_base[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[24]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__3_n_6),
        .O(\gat_address_base[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[25]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__3_n_5),
        .O(\gat_address_base[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[26]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__3_n_4),
        .O(\gat_address_base[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[27]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__4_n_7),
        .O(\gat_address_base[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[28]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__4_n_6),
        .O(\gat_address_base[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[29]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__4_n_5),
        .O(\gat_address_base[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[30]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__4_n_4),
        .O(\gat_address_base[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA1500)) 
    \gat_address_base[31]_i_1 
       (.I0(\vga_state_reg_n_0_[0] ),
        .I1(vga_h_display),
        .I2(vga_v_display),
        .I3(\start_reg_buff_reg[0] ),
        .I4(\vga_state_reg_n_0_[1] ),
        .O(\gat_address_base[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[31]_i_2 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry__5_n_7),
        .O(\gat_address_base[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[7]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry_n_7),
        .O(\gat_address_base[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[8]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry_n_6),
        .O(\gat_address_base[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gat_address_base[9]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(plusOp_carry_n_5),
        .O(\gat_address_base[9]_i_1_n_0 ));
  FDRE \gat_address_base_reg[10] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[10]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \gat_address_base_reg[11] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[11]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \gat_address_base_reg[12] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[12]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \gat_address_base_reg[13] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[13]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE \gat_address_base_reg[14] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[14]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE \gat_address_base_reg[15] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[15]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE \gat_address_base_reg[16] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[16]_i_1_n_0 ),
        .Q(Q[9]),
        .R(SR));
  FDRE \gat_address_base_reg[17] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[17]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE \gat_address_base_reg[18] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[18]_i_1_n_0 ),
        .Q(Q[11]),
        .R(SR));
  FDRE \gat_address_base_reg[19] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[19]_i_1_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE \gat_address_base_reg[20] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[20]_i_1_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE \gat_address_base_reg[21] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[21]_i_1_n_0 ),
        .Q(Q[14]),
        .R(SR));
  FDRE \gat_address_base_reg[22] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[22]_i_1_n_0 ),
        .Q(Q[15]),
        .R(SR));
  FDRE \gat_address_base_reg[23] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[23]_i_1_n_0 ),
        .Q(Q[16]),
        .R(SR));
  FDRE \gat_address_base_reg[24] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[24]_i_1_n_0 ),
        .Q(Q[17]),
        .R(SR));
  FDRE \gat_address_base_reg[25] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[25]_i_1_n_0 ),
        .Q(Q[18]),
        .R(SR));
  FDRE \gat_address_base_reg[26] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[26]_i_1_n_0 ),
        .Q(Q[19]),
        .R(SR));
  FDRE \gat_address_base_reg[27] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[27]_i_1_n_0 ),
        .Q(Q[20]),
        .R(SR));
  FDRE \gat_address_base_reg[28] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[28]_i_1_n_0 ),
        .Q(Q[21]),
        .R(SR));
  FDRE \gat_address_base_reg[29] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[29]_i_1_n_0 ),
        .Q(Q[22]),
        .R(SR));
  FDRE \gat_address_base_reg[30] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[30]_i_1_n_0 ),
        .Q(Q[23]),
        .R(SR));
  FDRE \gat_address_base_reg[31] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[31]_i_2_n_0 ),
        .Q(Q[24]),
        .R(SR));
  FDRE \gat_address_base_reg[7] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[7]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \gat_address_base_reg[8] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[8]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \gat_address_base_reg[9] 
       (.C(output_buff),
        .CE(\gat_address_base[31]_i_1_n_0 ),
        .D(\gat_address_base[9]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h9ABA0000)) 
    gat_enable_i_1
       (.I0(gat_enable),
        .I1(\vga_state_reg_n_0_[1] ),
        .I2(\vga_state_reg_n_0_[0] ),
        .I3(gat_ready_reg_n_0),
        .I4(axi_aresetn),
        .O(gat_enable_i_1_n_0));
  FDRE gat_enable_reg
       (.C(output_buff),
        .CE(1'b1),
        .D(gat_enable_i_1_n_0),
        .Q(gat_enable),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    gat_ready_i_1
       (.I0(gat_ready_reg_n_0),
        .I1(gat_state),
        .I2(gat_ready),
        .O(gat_ready_i_1_n_0));
  FDRE gat_ready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(gat_ready_i_1_n_0),
        .Q(gat_ready_reg_n_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_0),
        .Q(\word_pointer_reg[0]__0_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg),
        .Q(\i_reg_n_0_[1] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    \pixel_buffer[59]_i_1 
       (.I0(\vga_state_reg_n_0_[0] ),
        .I1(vga_h_display),
        .I2(vga_v_display),
        .I3(\vga_state_reg_n_0_[1] ),
        .O(blk_addrb));
  FDRE \pixel_buffer_reg[0] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[0]),
        .Q(\pixel_buffer_reg_n_0_[0] ),
        .R(SR));
  FDRE \pixel_buffer_reg[10] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[10]),
        .Q(\pixel_buffer_reg_n_0_[10] ),
        .R(SR));
  FDRE \pixel_buffer_reg[11] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[11]),
        .Q(\pixel_buffer_reg_n_0_[11] ),
        .R(SR));
  FDRE \pixel_buffer_reg[16] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[16]),
        .Q(data1[0]),
        .R(SR));
  FDRE \pixel_buffer_reg[17] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[17]),
        .Q(data1[1]),
        .R(SR));
  FDRE \pixel_buffer_reg[18] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[18]),
        .Q(data1[2]),
        .R(SR));
  FDRE \pixel_buffer_reg[19] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[19]),
        .Q(data1[3]),
        .R(SR));
  FDRE \pixel_buffer_reg[1] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[1]),
        .Q(\pixel_buffer_reg_n_0_[1] ),
        .R(SR));
  FDRE \pixel_buffer_reg[20] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[20]),
        .Q(\pixel_buffer_reg_n_0_[20] ),
        .R(SR));
  FDRE \pixel_buffer_reg[21] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[21]),
        .Q(\pixel_buffer_reg_n_0_[21] ),
        .R(SR));
  FDRE \pixel_buffer_reg[22] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[22]),
        .Q(\pixel_buffer_reg_n_0_[22] ),
        .R(SR));
  FDRE \pixel_buffer_reg[23] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[23]),
        .Q(\pixel_buffer_reg_n_0_[23] ),
        .R(SR));
  FDRE \pixel_buffer_reg[24] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[24]),
        .Q(\pixel_buffer_reg_n_0_[24] ),
        .R(SR));
  FDRE \pixel_buffer_reg[25] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[25]),
        .Q(\pixel_buffer_reg_n_0_[25] ),
        .R(SR));
  FDRE \pixel_buffer_reg[26] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[26]),
        .Q(\pixel_buffer_reg_n_0_[26] ),
        .R(SR));
  FDRE \pixel_buffer_reg[27] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[27]),
        .Q(\pixel_buffer_reg_n_0_[27] ),
        .R(SR));
  FDRE \pixel_buffer_reg[2] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[2]),
        .Q(\pixel_buffer_reg_n_0_[2] ),
        .R(SR));
  FDRE \pixel_buffer_reg[32] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[32]),
        .Q(data2[0]),
        .R(SR));
  FDRE \pixel_buffer_reg[33] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[33]),
        .Q(data2[1]),
        .R(SR));
  FDRE \pixel_buffer_reg[34] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[34]),
        .Q(data2[2]),
        .R(SR));
  FDRE \pixel_buffer_reg[35] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[35]),
        .Q(data2[3]),
        .R(SR));
  FDRE \pixel_buffer_reg[36] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[36]),
        .Q(\pixel_buffer_reg_n_0_[36] ),
        .R(SR));
  FDRE \pixel_buffer_reg[37] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[37]),
        .Q(\pixel_buffer_reg_n_0_[37] ),
        .R(SR));
  FDRE \pixel_buffer_reg[38] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[38]),
        .Q(\pixel_buffer_reg_n_0_[38] ),
        .R(SR));
  FDRE \pixel_buffer_reg[39] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[39]),
        .Q(\pixel_buffer_reg_n_0_[39] ),
        .R(SR));
  FDRE \pixel_buffer_reg[3] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[3]),
        .Q(\pixel_buffer_reg_n_0_[3] ),
        .R(SR));
  FDRE \pixel_buffer_reg[40] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[40]),
        .Q(\pixel_buffer_reg_n_0_[40] ),
        .R(SR));
  FDRE \pixel_buffer_reg[41] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[41]),
        .Q(\pixel_buffer_reg_n_0_[41] ),
        .R(SR));
  FDRE \pixel_buffer_reg[42] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[42]),
        .Q(\pixel_buffer_reg_n_0_[42] ),
        .R(SR));
  FDRE \pixel_buffer_reg[43] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[43]),
        .Q(\pixel_buffer_reg_n_0_[43] ),
        .R(SR));
  FDRE \pixel_buffer_reg[48] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[48]),
        .Q(data3[0]),
        .R(SR));
  FDRE \pixel_buffer_reg[49] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[49]),
        .Q(data3[1]),
        .R(SR));
  FDRE \pixel_buffer_reg[4] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[4]),
        .Q(data0[0]),
        .R(SR));
  FDRE \pixel_buffer_reg[50] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[50]),
        .Q(data3[2]),
        .R(SR));
  FDRE \pixel_buffer_reg[51] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[51]),
        .Q(data3[3]),
        .R(SR));
  FDRE \pixel_buffer_reg[52] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[52]),
        .Q(\pixel_buffer_reg_n_0_[52] ),
        .R(SR));
  FDRE \pixel_buffer_reg[53] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[53]),
        .Q(\pixel_buffer_reg_n_0_[53] ),
        .R(SR));
  FDRE \pixel_buffer_reg[54] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[54]),
        .Q(\pixel_buffer_reg_n_0_[54] ),
        .R(SR));
  FDRE \pixel_buffer_reg[55] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[55]),
        .Q(\pixel_buffer_reg_n_0_[55] ),
        .R(SR));
  FDRE \pixel_buffer_reg[56] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[56]),
        .Q(\pixel_buffer_reg_n_0_[56] ),
        .R(SR));
  FDRE \pixel_buffer_reg[57] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[57]),
        .Q(\pixel_buffer_reg_n_0_[57] ),
        .R(SR));
  FDRE \pixel_buffer_reg[58] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[58]),
        .Q(\pixel_buffer_reg_n_0_[58] ),
        .R(SR));
  FDRE \pixel_buffer_reg[59] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[59]),
        .Q(\pixel_buffer_reg_n_0_[59] ),
        .R(SR));
  FDRE \pixel_buffer_reg[5] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[5]),
        .Q(data0[1]),
        .R(SR));
  FDRE \pixel_buffer_reg[6] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[6]),
        .Q(data0[2]),
        .R(SR));
  FDRE \pixel_buffer_reg[7] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[7]),
        .Q(data0[3]),
        .R(SR));
  FDRE \pixel_buffer_reg[8] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[8]),
        .Q(\pixel_buffer_reg_n_0_[8] ),
        .R(SR));
  FDRE \pixel_buffer_reg[9] 
       (.C(output_buff),
        .CE(blk_addrb),
        .D(blk_doutb[9]),
        .Q(\pixel_buffer_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h6000)) 
    \pixel_pointer[1]_i_1 
       (.I0(\word_pointer_reg[5]__0_0 [0]),
        .I1(\word_pointer_reg[0]__0_0 ),
        .I2(vga_v_display),
        .I3(vga_h_display),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6A000000)) 
    \pixel_pointer[2]_i_1 
       (.I0(pixel_pointer_reg__0[2]),
        .I1(\word_pointer_reg[5]__0_0 [0]),
        .I2(\word_pointer_reg[0]__0_0 ),
        .I3(vga_v_display),
        .I4(vga_h_display),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h6AAA000000000000)) 
    \pixel_pointer[3]_i_1 
       (.I0(pixel_pointer_reg__0[3]),
        .I1(pixel_pointer_reg__0[2]),
        .I2(\word_pointer_reg[0]__0_0 ),
        .I3(\word_pointer_reg[5]__0_0 [0]),
        .I4(vga_v_display),
        .I5(vga_h_display),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \pixel_pointer[4]_i_1 
       (.I0(pixel_pointer_reg__0[4]),
        .I1(pixel_pointer_reg__0[3]),
        .I2(\word_pointer_reg[5]__0_0 [0]),
        .I3(\word_pointer_reg[0]__0_0 ),
        .I4(pixel_pointer_reg__0[2]),
        .I5(vga_h_v_display),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h6000)) 
    \pixel_pointer[6]_i_1 
       (.I0(\word_pointer_reg[5]__0_0 [1]),
        .I1(\word_pointer_reg[5]__0_1 ),
        .I2(vga_v_display),
        .I3(vga_h_display),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6A000000)) 
    \pixel_pointer[7]_i_1 
       (.I0(pixel_pointer_reg__0[7]),
        .I1(\word_pointer_reg[5]__0_0 [1]),
        .I2(\word_pointer_reg[5]__0_1 ),
        .I3(vga_v_display),
        .I4(vga_h_display),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h6AAA000000000000)) 
    \pixel_pointer[8]_i_1 
       (.I0(pixel_pointer_reg__0[8]),
        .I1(pixel_pointer_reg__0[7]),
        .I2(\word_pointer_reg[5]__0_1 ),
        .I3(\word_pointer_reg[5]__0_0 [1]),
        .I4(vga_v_display),
        .I5(vga_h_display),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \pixel_pointer[9]_i_1 
       (.I0(pixel_pointer_reg__0[9]),
        .I1(pixel_pointer_reg__0[8]),
        .I2(\word_pointer_reg[5]__0_0 [1]),
        .I3(\word_pointer_reg[5]__0_1 ),
        .I4(pixel_pointer_reg__0[7]),
        .I5(vga_h_v_display),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[1] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\word_pointer_reg[5]__0_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[2] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(pixel_pointer_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[3] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(pixel_pointer_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[4] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(pixel_pointer_reg__0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[5] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(D),
        .Q(pixel_pointer_reg__0[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[6] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\word_pointer_reg[5]__0_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[7] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(pixel_pointer_reg__0[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[8] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(pixel_pointer_reg__0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_pointer_reg[9] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(pixel_pointer_reg__0[9]),
        .R(SR));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[3],1'b0,Q[1],1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({plusOp_carry_i_1_n_0,Q[2],plusOp_carry_i_2_n_0,Q[0]}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(Q[7:4]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S(Q[11:8]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__2_n_4,plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S(Q[15:12]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__3_n_4,plusOp_carry__3_n_5,plusOp_carry__3_n_6,plusOp_carry__3_n_7}),
        .S(Q[19:16]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__4_n_4,plusOp_carry__4_n_5,plusOp_carry__4_n_6,plusOp_carry__4_n_7}),
        .S(Q[23:20]));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO(NLW_plusOp_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__5_O_UNCONNECTED[3:1],plusOp_carry__5_n_7}),
        .S({1'b0,1'b0,1'b0,Q[24]}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(Q[3]),
        .O(plusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_2
       (.I0(Q[1]),
        .O(plusOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[0]_i_2 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(\i_reg_n_0_[1] ),
        .I3(data1[0]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[0] ),
        .O(\vga_b_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[1]_i_2 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(\i_reg_n_0_[1] ),
        .I3(data1[1]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[1] ),
        .O(\vga_b_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[2]_i_2 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(\i_reg_n_0_[1] ),
        .I3(data1[2]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[2] ),
        .O(\vga_b_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h55400000)) 
    \vga_b[3]_i_2 
       (.I0(\vga_state_reg_n_0_[0] ),
        .I1(vga_v_display),
        .I2(vga_h_display),
        .I3(vga_synch),
        .I4(\vga_state_reg_n_0_[1] ),
        .O(\vga_b[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_b[3]_i_4 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(\i_reg_n_0_[1] ),
        .I3(data1[3]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[3] ),
        .O(\vga_b_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_b_reg[0] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_1[0]),
        .Q(vga_b[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_b_reg[1] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_1[1]),
        .Q(vga_b[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_b_reg[2] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_1[2]),
        .Q(vga_b[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_b_reg[3] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_1[3]),
        .Q(vga_b[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_g[0]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[52] ),
        .I1(\pixel_buffer_reg_n_0_[36] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[20] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(data0[0]),
        .O(\vga_g_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_g[1]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[53] ),
        .I1(\pixel_buffer_reg_n_0_[37] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[21] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(data0[1]),
        .O(\vga_g_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_g[2]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[54] ),
        .I1(\pixel_buffer_reg_n_0_[38] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[22] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(data0[2]),
        .O(\vga_g_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_g[3]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[55] ),
        .I1(\pixel_buffer_reg_n_0_[39] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[23] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(data0[3]),
        .O(\vga_g_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_g_reg[0] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_2[0]),
        .Q(vga_g[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_g_reg[1] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_2[1]),
        .Q(vga_g[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_g_reg[2] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_2[2]),
        .Q(vga_g[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_g_reg[3] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_2[3]),
        .Q(vga_g[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_r[0]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[56] ),
        .I1(\pixel_buffer_reg_n_0_[40] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[24] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[8] ),
        .O(\vga_r_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_r[1]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[57] ),
        .I1(\pixel_buffer_reg_n_0_[41] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[25] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[9] ),
        .O(\vga_r_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_r[2]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[58] ),
        .I1(\pixel_buffer_reg_n_0_[42] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[26] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[10] ),
        .O(\vga_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vga_r[3]_i_2 
       (.I0(\pixel_buffer_reg_n_0_[59] ),
        .I1(\pixel_buffer_reg_n_0_[43] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\pixel_buffer_reg_n_0_[27] ),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\pixel_buffer_reg_n_0_[11] ),
        .O(\vga_r_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vga_r_reg[0] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_3[0]),
        .Q(vga_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_r_reg[1] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_3[1]),
        .Q(vga_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_r_reg[2] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_3[2]),
        .Q(vga_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \vga_r_reg[3] 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_3[3]),
        .Q(vga_r[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hE6A6662600000000)) 
    \vga_state[0]_i_1 
       (.I0(\vga_state_reg_n_0_[0] ),
        .I1(\vga_state[1]_i_2_n_0 ),
        .I2(\vga_state_reg_n_0_[1] ),
        .I3(vga_synch),
        .I4(vga_v_display),
        .I5(axi_aresetn),
        .O(\vga_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66A20000)) 
    \vga_state[1]_i_1 
       (.I0(\vga_state_reg_n_0_[1] ),
        .I1(\vga_state[1]_i_2_n_0 ),
        .I2(vga_synch),
        .I3(\vga_state_reg_n_0_[0] ),
        .I4(axi_aresetn),
        .O(\vga_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00B8CCCC00B8)) 
    \vga_state[1]_i_2 
       (.I0(vga_synch),
        .I1(\vga_state_reg_n_0_[1] ),
        .I2(\start_reg_buff_reg[0] ),
        .I3(vga_h_v_display),
        .I4(\vga_state_reg_n_0_[0] ),
        .I5(vga_state0__0),
        .O(\vga_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_state[1]_i_3 
       (.I0(gat_enable),
        .I1(gat_ready_reg_n_0),
        .O(vga_state0__0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_state_reg[0] 
       (.C(output_buff),
        .CE(1'b1),
        .D(\vga_state[0]_i_1_n_0 ),
        .Q(\vga_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_state_reg[1] 
       (.C(output_buff),
        .CE(1'b1),
        .D(\vga_state[1]_i_1_n_0 ),
        .Q(\vga_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE vga_synch_reg
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(vga_h_v_display),
        .Q(vga_synch),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h08808080)) 
    \word_pointer[0]__0_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(pixel_pointer_reg__0[2]),
        .I3(\word_pointer_reg[5]__0_0 [0]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .O(\word_pointer[0]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \word_pointer[0]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[0] ),
        .O(\word_pointer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0880808080808080)) 
    \word_pointer[1]__0_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(pixel_pointer_reg__0[3]),
        .I3(pixel_pointer_reg__0[2]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(\word_pointer_reg[5]__0_0 [0]),
        .O(\word_pointer[1]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \word_pointer[1]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[1] ),
        .I2(\word_pointer_reg_n_0_[0] ),
        .O(\word_pointer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \word_pointer[2]__0_i_1 
       (.I0(vga_h_v_display),
        .I1(pixel_pointer_reg__0[4]),
        .I2(pixel_pointer_reg__0[3]),
        .I3(\word_pointer_reg[5]__0_0 [0]),
        .I4(\word_pointer_reg[0]__0_0 ),
        .I5(pixel_pointer_reg__0[2]),
        .O(\word_pointer[2]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \word_pointer[2]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[2] ),
        .I2(\word_pointer_reg_n_0_[1] ),
        .I3(\word_pointer_reg_n_0_[0] ),
        .O(\word_pointer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \word_pointer[3]__0_i_2 
       (.I0(pixel_pointer_reg__0[3]),
        .I1(\word_pointer_reg[5]__0_0 [0]),
        .I2(\word_pointer_reg[0]__0_0 ),
        .I3(pixel_pointer_reg__0[2]),
        .I4(pixel_pointer_reg__0[4]),
        .I5(pixel_pointer_reg__0[5]),
        .O(pixel_pointer0));
  LUT5 #(
    .INIT(32'h28888888)) 
    \word_pointer[3]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[3] ),
        .I2(\word_pointer_reg_n_0_[2] ),
        .I3(\word_pointer_reg_n_0_[0] ),
        .I4(\word_pointer_reg_n_0_[1] ),
        .O(\word_pointer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \word_pointer[4]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[4] ),
        .I2(\word_pointer_reg_n_0_[3] ),
        .I3(\word_pointer_reg_n_0_[1] ),
        .I4(\word_pointer_reg_n_0_[0] ),
        .I5(\word_pointer_reg_n_0_[2] ),
        .O(\word_pointer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h08808080)) 
    \word_pointer[5]__0_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(pixel_pointer_reg__0[7]),
        .I3(\word_pointer_reg[5]__0_0 [1]),
        .I4(\word_pointer_reg[5]__0_1 ),
        .O(\word_pointer[5]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \word_pointer[5]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[5] ),
        .I2(\word_pointer[5]_i_2_n_0 ),
        .O(\word_pointer[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \word_pointer[5]_i_2 
       (.I0(\word_pointer_reg_n_0_[4] ),
        .I1(\word_pointer_reg_n_0_[2] ),
        .I2(\word_pointer_reg_n_0_[0] ),
        .I3(\word_pointer_reg_n_0_[1] ),
        .I4(\word_pointer_reg_n_0_[3] ),
        .O(\word_pointer[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0880808080808080)) 
    \word_pointer[6]__0_i_1 
       (.I0(vga_v_display),
        .I1(vga_h_display),
        .I2(pixel_pointer_reg__0[8]),
        .I3(pixel_pointer_reg__0[7]),
        .I4(\word_pointer_reg[5]__0_1 ),
        .I5(\word_pointer_reg[5]__0_0 [1]),
        .O(\word_pointer[6]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \word_pointer[6]_i_1 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[6] ),
        .I2(\word_pointer[7]_i_4_n_0 ),
        .O(\word_pointer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \word_pointer[7]__0_i_1 
       (.I0(vga_h_v_display),
        .I1(pixel_pointer_reg__0[9]),
        .I2(pixel_pointer_reg__0[8]),
        .I3(\word_pointer_reg[5]__0_0 [1]),
        .I4(\word_pointer_reg[5]__0_1 ),
        .I5(pixel_pointer_reg__0[7]),
        .O(\word_pointer[7]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \word_pointer[7]__0_i_2 
       (.I0(pixel_pointer_reg__0[5]),
        .I1(pixel_pointer_reg__0[3]),
        .I2(\word_pointer_reg[5]__0_0 [0]),
        .I3(\word_pointer_reg[0]__0_0 ),
        .I4(pixel_pointer_reg__0[2]),
        .I5(pixel_pointer_reg__0[4]),
        .O(\word_pointer_reg[5]__0_1 ));
  LUT6 #(
    .INIT(64'h000000002EEE2222)) 
    \word_pointer[7]_i_1 
       (.I0(gat_enable),
        .I1(gat_state),
        .I2(axi_fb_ready),
        .I3(axi_fb_enable),
        .I4(axi_fb_di_ready),
        .I5(gat_ready),
        .O(\word_pointer[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \word_pointer[7]_i_2 
       (.I0(gat_state),
        .I1(\word_pointer_reg_n_0_[7] ),
        .I2(\word_pointer_reg_n_0_[6] ),
        .I3(\word_pointer[7]_i_4_n_0 ),
        .O(\word_pointer[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \word_pointer[7]_i_4 
       (.I0(\word_pointer_reg_n_0_[5] ),
        .I1(\word_pointer_reg_n_0_[3] ),
        .I2(\word_pointer_reg_n_0_[1] ),
        .I3(\word_pointer_reg_n_0_[0] ),
        .I4(\word_pointer_reg_n_0_[2] ),
        .I5(\word_pointer_reg_n_0_[4] ),
        .O(\word_pointer[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[0] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[0]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[0]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(\word_pointer[0]__0_i_1_n_0 ),
        .Q(\word_pointer_reg[0]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[1] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[1]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[1]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(\word_pointer[1]__0_i_1_n_0 ),
        .Q(\word_pointer_reg[1]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[2] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[2]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[2]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(\word_pointer[2]__0_i_1_n_0 ),
        .Q(\word_pointer_reg[2]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[3] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[3]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[3]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_4[0]),
        .Q(\word_pointer_reg[3]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[4] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[4]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[4]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(v_display_buff_reg_4[1]),
        .Q(\word_pointer_reg[4]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[5] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[5]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[5]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(\word_pointer[5]__0_i_1_n_0 ),
        .Q(\word_pointer_reg[5]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[6] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[6]_i_1_n_0 ),
        .Q(\word_pointer_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[6]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(\word_pointer[6]__0_i_1_n_0 ),
        .Q(\word_pointer_reg[6]__0_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[7] 
       (.C(axi_aclk),
        .CE(\word_pointer[7]_i_1_n_0 ),
        .D(\word_pointer[7]_i_2_n_0 ),
        .Q(\word_pointer_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \word_pointer_reg[7]__0 
       (.C(output_buff),
        .CE(\vga_b[3]_i_2_n_0 ),
        .D(\word_pointer[7]__0_i_1_n_0 ),
        .Q(\word_pointer_reg[7]__0_n_0 ),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "VGA_top_VGA_v1_0_0_0,VGA_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "VGA_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axi_aclk,
    axi_aresetn,
    h_sync,
    v_sync,
    vga_b,
    vga_g,
    vga_r,
    s_axi_config_awaddr,
    s_axi_config_awprot,
    s_axi_config_awvalid,
    s_axi_config_awready,
    s_axi_config_wdata,
    s_axi_config_wstrb,
    s_axi_config_wvalid,
    s_axi_config_wready,
    s_axi_config_bresp,
    s_axi_config_bvalid,
    s_axi_config_bready,
    s_axi_config_araddr,
    s_axi_config_arprot,
    s_axi_config_arvalid,
    s_axi_config_arready,
    s_axi_config_rdata,
    s_axi_config_rresp,
    s_axi_config_rvalid,
    s_axi_config_rready,
    m_axi_fb_awid,
    m_axi_fb_awaddr,
    m_axi_fb_awlen,
    m_axi_fb_awsize,
    m_axi_fb_awburst,
    m_axi_fb_awlock,
    m_axi_fb_awcache,
    m_axi_fb_awprot,
    m_axi_fb_awqos,
    m_axi_fb_awuser,
    m_axi_fb_awvalid,
    m_axi_fb_awready,
    m_axi_fb_wdata,
    m_axi_fb_wstrb,
    m_axi_fb_wlast,
    m_axi_fb_wuser,
    m_axi_fb_wvalid,
    m_axi_fb_wready,
    m_axi_fb_bid,
    m_axi_fb_bresp,
    m_axi_fb_buser,
    m_axi_fb_bvalid,
    m_axi_fb_bready,
    m_axi_fb_arid,
    m_axi_fb_araddr,
    m_axi_fb_arlen,
    m_axi_fb_arsize,
    m_axi_fb_arburst,
    m_axi_fb_arlock,
    m_axi_fb_arcache,
    m_axi_fb_arprot,
    m_axi_fb_arqos,
    m_axi_fb_aruser,
    m_axi_fb_arvalid,
    m_axi_fb_arready,
    m_axi_fb_rid,
    m_axi_fb_rdata,
    m_axi_fb_rresp,
    m_axi_fb_rlast,
    m_axi_fb_ruser,
    m_axi_fb_rvalid,
    m_axi_fb_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_aclk, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN VGA_top_processing_system7_0_0_FCLK_CLK0" *) input axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW" *) input axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_b;
  output [3:0]vga_g;
  output [3:0]vga_r;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_config, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s_axi_config_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWPROT" *) input [2:0]s_axi_config_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWVALID" *) input s_axi_config_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config AWREADY" *) output s_axi_config_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WDATA" *) input [31:0]s_axi_config_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WSTRB" *) input [3:0]s_axi_config_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WVALID" *) input s_axi_config_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config WREADY" *) output s_axi_config_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config BRESP" *) output [1:0]s_axi_config_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config BVALID" *) output s_axi_config_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config BREADY" *) input s_axi_config_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARADDR" *) input [3:0]s_axi_config_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARPROT" *) input [2:0]s_axi_config_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARVALID" *) input s_axi_config_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config ARREADY" *) output s_axi_config_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RDATA" *) output [31:0]s_axi_config_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RRESP" *) output [1:0]s_axi_config_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RVALID" *) output s_axi_config_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_config RREADY" *) input s_axi_config_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_fb, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output [0:0]m_axi_fb_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWADDR" *) output [31:0]m_axi_fb_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWLEN" *) output [7:0]m_axi_fb_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWSIZE" *) output [2:0]m_axi_fb_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWBURST" *) output [1:0]m_axi_fb_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWLOCK" *) output m_axi_fb_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWCACHE" *) output [3:0]m_axi_fb_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWPROT" *) output [2:0]m_axi_fb_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWQOS" *) output [3:0]m_axi_fb_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWUSER" *) output [0:0]m_axi_fb_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWVALID" *) output m_axi_fb_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb AWREADY" *) input m_axi_fb_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb WDATA" *) output [63:0]m_axi_fb_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb WSTRB" *) output [7:0]m_axi_fb_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb WLAST" *) output m_axi_fb_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb WUSER" *) output [0:0]m_axi_fb_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb WVALID" *) output m_axi_fb_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb WREADY" *) input m_axi_fb_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb BID" *) input [0:0]m_axi_fb_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb BRESP" *) input [1:0]m_axi_fb_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb BUSER" *) input [0:0]m_axi_fb_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb BVALID" *) input m_axi_fb_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb BREADY" *) output m_axi_fb_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARID" *) output [0:0]m_axi_fb_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARADDR" *) output [31:0]m_axi_fb_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARLEN" *) output [7:0]m_axi_fb_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARSIZE" *) output [2:0]m_axi_fb_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARBURST" *) output [1:0]m_axi_fb_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARLOCK" *) output m_axi_fb_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARCACHE" *) output [3:0]m_axi_fb_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARPROT" *) output [2:0]m_axi_fb_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARQOS" *) output [3:0]m_axi_fb_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARUSER" *) output [0:0]m_axi_fb_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARVALID" *) output m_axi_fb_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb ARREADY" *) input m_axi_fb_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RID" *) input [0:0]m_axi_fb_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RDATA" *) input [63:0]m_axi_fb_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RRESP" *) input [1:0]m_axi_fb_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RLAST" *) input m_axi_fb_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RUSER" *) input [0:0]m_axi_fb_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RVALID" *) input m_axi_fb_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_fb RREADY" *) output m_axi_fb_rready;

  wire axi_aclk;
  wire axi_aresetn;
  wire h_sync;
  wire [31:0]m_axi_fb_araddr;
  wire [1:0]m_axi_fb_arburst;
  wire [3:0]m_axi_fb_arcache;
  wire [0:0]m_axi_fb_arid;
  wire [7:0]m_axi_fb_arlen;
  wire m_axi_fb_arlock;
  wire [2:0]m_axi_fb_arprot;
  wire [3:0]m_axi_fb_arqos;
  wire m_axi_fb_arready;
  wire [2:0]m_axi_fb_arsize;
  wire m_axi_fb_arvalid;
  wire [31:0]m_axi_fb_awaddr;
  wire [1:0]m_axi_fb_awburst;
  wire [3:0]m_axi_fb_awcache;
  wire [0:0]m_axi_fb_awid;
  wire [7:0]m_axi_fb_awlen;
  wire m_axi_fb_awlock;
  wire [2:0]m_axi_fb_awprot;
  wire [3:0]m_axi_fb_awqos;
  wire m_axi_fb_awready;
  wire [2:0]m_axi_fb_awsize;
  wire m_axi_fb_awvalid;
  wire [0:0]m_axi_fb_bid;
  wire m_axi_fb_bready;
  wire [1:0]m_axi_fb_bresp;
  wire m_axi_fb_bvalid;
  wire [63:0]m_axi_fb_rdata;
  wire [0:0]m_axi_fb_rid;
  wire m_axi_fb_rlast;
  wire m_axi_fb_rready;
  wire [1:0]m_axi_fb_rresp;
  wire m_axi_fb_rvalid;
  wire [63:0]m_axi_fb_wdata;
  wire m_axi_fb_wlast;
  wire m_axi_fb_wready;
  wire [7:0]m_axi_fb_wstrb;
  wire m_axi_fb_wvalid;
  wire [3:0]s_axi_config_araddr;
  wire [2:0]s_axi_config_arprot;
  wire s_axi_config_arready;
  wire s_axi_config_arvalid;
  wire [3:0]s_axi_config_awaddr;
  wire [2:0]s_axi_config_awprot;
  wire s_axi_config_awready;
  wire s_axi_config_awvalid;
  wire s_axi_config_bready;
  wire [1:0]s_axi_config_bresp;
  wire s_axi_config_bvalid;
  wire [31:0]s_axi_config_rdata;
  wire s_axi_config_rready;
  wire [1:0]s_axi_config_rresp;
  wire s_axi_config_rvalid;
  wire [31:0]s_axi_config_wdata;
  wire s_axi_config_wready;
  wire [3:0]s_axi_config_wstrb;
  wire s_axi_config_wvalid;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;

  (* BITS_PER_PE = "4" *) 
  (* C_m_axi_fb_ADDR_WIDTH = "32" *) 
  (* C_m_axi_fb_ARUSER_WIDTH = "0" *) 
  (* C_m_axi_fb_AWUSER_WIDTH = "0" *) 
  (* C_m_axi_fb_BURST_LEN = "256" *) 
  (* C_m_axi_fb_BUSER_WIDTH = "0" *) 
  (* C_m_axi_fb_DATA_WIDTH = "64" *) 
  (* C_m_axi_fb_ID_WIDTH = "1" *) 
  (* C_m_axi_fb_RUSER_WIDTH = "0" *) 
  (* C_m_axi_fb_TARGET_SLAVE_BASE_ADDR = "0" *) 
  (* C_m_axi_fb_WUSER_WIDTH = "0" *) 
  (* C_s_axi_config_ADDR_WIDTH = "4" *) 
  (* C_s_axi_config_DATA_WIDTH = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_v1_0 U0
       (.axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .h_sync(h_sync),
        .m_axi_fb_araddr(m_axi_fb_araddr),
        .m_axi_fb_arburst(m_axi_fb_arburst),
        .m_axi_fb_arcache(m_axi_fb_arcache),
        .m_axi_fb_arid(m_axi_fb_arid),
        .m_axi_fb_arlen(m_axi_fb_arlen),
        .m_axi_fb_arlock(m_axi_fb_arlock),
        .m_axi_fb_arprot(m_axi_fb_arprot),
        .m_axi_fb_arqos(m_axi_fb_arqos),
        .m_axi_fb_arready(m_axi_fb_arready),
        .m_axi_fb_arsize(m_axi_fb_arsize),
        .m_axi_fb_arvalid(m_axi_fb_arvalid),
        .m_axi_fb_awaddr(m_axi_fb_awaddr),
        .m_axi_fb_awburst(m_axi_fb_awburst),
        .m_axi_fb_awcache(m_axi_fb_awcache),
        .m_axi_fb_awid(m_axi_fb_awid),
        .m_axi_fb_awlen(m_axi_fb_awlen),
        .m_axi_fb_awlock(m_axi_fb_awlock),
        .m_axi_fb_awprot(m_axi_fb_awprot),
        .m_axi_fb_awqos(m_axi_fb_awqos),
        .m_axi_fb_awready(m_axi_fb_awready),
        .m_axi_fb_awsize(m_axi_fb_awsize),
        .m_axi_fb_awvalid(m_axi_fb_awvalid),
        .m_axi_fb_bid(m_axi_fb_bid),
        .m_axi_fb_bready(m_axi_fb_bready),
        .m_axi_fb_bresp(m_axi_fb_bresp),
        .m_axi_fb_bvalid(m_axi_fb_bvalid),
        .m_axi_fb_rdata(m_axi_fb_rdata),
        .m_axi_fb_rid(m_axi_fb_rid),
        .m_axi_fb_rlast(m_axi_fb_rlast),
        .m_axi_fb_rready(m_axi_fb_rready),
        .m_axi_fb_rresp(m_axi_fb_rresp),
        .m_axi_fb_rvalid(m_axi_fb_rvalid),
        .m_axi_fb_wdata(m_axi_fb_wdata),
        .m_axi_fb_wlast(m_axi_fb_wlast),
        .m_axi_fb_wready(m_axi_fb_wready),
        .m_axi_fb_wstrb(m_axi_fb_wstrb),
        .m_axi_fb_wvalid(m_axi_fb_wvalid),
        .s_axi_config_araddr(s_axi_config_araddr),
        .s_axi_config_arprot(s_axi_config_arprot),
        .s_axi_config_arready(s_axi_config_arready),
        .s_axi_config_arvalid(s_axi_config_arvalid),
        .s_axi_config_awaddr(s_axi_config_awaddr),
        .s_axi_config_awprot(s_axi_config_awprot),
        .s_axi_config_awready(s_axi_config_awready),
        .s_axi_config_awvalid(s_axi_config_awvalid),
        .s_axi_config_bready(s_axi_config_bready),
        .s_axi_config_bresp(s_axi_config_bresp),
        .s_axi_config_bvalid(s_axi_config_bvalid),
        .s_axi_config_rdata(s_axi_config_rdata),
        .s_axi_config_rready(s_axi_config_rready),
        .s_axi_config_rresp(s_axi_config_rresp),
        .s_axi_config_rvalid(s_axi_config_rvalid),
        .s_axi_config_wdata(s_axi_config_wdata),
        .s_axi_config_wready(s_axi_config_wready),
        .s_axi_config_wstrb(s_axi_config_wstrb),
        .s_axi_config_wvalid(s_axi_config_wvalid),
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
endmodule

(* BITS_PER_PE = "4" *) (* C_m_axi_fb_ADDR_WIDTH = "32" *) (* C_m_axi_fb_ARUSER_WIDTH = "0" *) 
(* C_m_axi_fb_AWUSER_WIDTH = "0" *) (* C_m_axi_fb_BURST_LEN = "256" *) (* C_m_axi_fb_BUSER_WIDTH = "0" *) 
(* C_m_axi_fb_DATA_WIDTH = "64" *) (* C_m_axi_fb_ID_WIDTH = "1" *) (* C_m_axi_fb_RUSER_WIDTH = "0" *) 
(* C_m_axi_fb_TARGET_SLAVE_BASE_ADDR = "0" *) (* C_m_axi_fb_WUSER_WIDTH = "0" *) (* C_s_axi_config_ADDR_WIDTH = "4" *) 
(* C_s_axi_config_DATA_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_v1_0
   (axi_aclk,
    axi_aresetn,
    h_sync,
    v_sync,
    vga_b,
    vga_g,
    vga_r,
    s_axi_config_awaddr,
    s_axi_config_awprot,
    s_axi_config_awvalid,
    s_axi_config_awready,
    s_axi_config_wdata,
    s_axi_config_wstrb,
    s_axi_config_wvalid,
    s_axi_config_wready,
    s_axi_config_bresp,
    s_axi_config_bvalid,
    s_axi_config_bready,
    s_axi_config_araddr,
    s_axi_config_arprot,
    s_axi_config_arvalid,
    s_axi_config_arready,
    s_axi_config_rdata,
    s_axi_config_rresp,
    s_axi_config_rvalid,
    s_axi_config_rready,
    m_axi_fb_awid,
    m_axi_fb_awaddr,
    m_axi_fb_awlen,
    m_axi_fb_awsize,
    m_axi_fb_awburst,
    m_axi_fb_awlock,
    m_axi_fb_awcache,
    m_axi_fb_awprot,
    m_axi_fb_awqos,
    m_axi_fb_awvalid,
    m_axi_fb_awready,
    m_axi_fb_wdata,
    m_axi_fb_wstrb,
    m_axi_fb_wlast,
    m_axi_fb_wvalid,
    m_axi_fb_wready,
    m_axi_fb_bid,
    m_axi_fb_bresp,
    m_axi_fb_bvalid,
    m_axi_fb_bready,
    m_axi_fb_arid,
    m_axi_fb_araddr,
    m_axi_fb_arlen,
    m_axi_fb_arsize,
    m_axi_fb_arburst,
    m_axi_fb_arlock,
    m_axi_fb_arcache,
    m_axi_fb_arprot,
    m_axi_fb_arqos,
    m_axi_fb_arvalid,
    m_axi_fb_arready,
    m_axi_fb_rid,
    m_axi_fb_rdata,
    m_axi_fb_rresp,
    m_axi_fb_rlast,
    m_axi_fb_rvalid,
    m_axi_fb_rready);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input axi_aclk;
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
  output m_axi_fb_awvalid;
  input m_axi_fb_awready;
  output [63:0]m_axi_fb_wdata;
  output [7:0]m_axi_fb_wstrb;
  output m_axi_fb_wlast;
  output m_axi_fb_wvalid;
  input m_axi_fb_wready;
  input [0:0]m_axi_fb_bid;
  input [1:0]m_axi_fb_bresp;
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
  output m_axi_fb_arvalid;
  input m_axi_fb_arready;
  input [0:0]m_axi_fb_rid;
  input [63:0]m_axi_fb_rdata;
  input [1:0]m_axi_fb_rresp;
  input m_axi_fb_rlast;
  input m_axi_fb_rvalid;
  output m_axi_fb_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire VGA_0_n_10;
  wire VGA_0_n_11;
  wire VGA_0_n_12;
  wire VGA_0_n_13;
  wire VGA_0_n_14;
  wire VGA_0_n_15;
  wire VGA_0_n_16;
  wire VGA_0_n_17;
  wire VGA_0_n_20;
  wire VGA_0_n_21;
  wire VGA_0_n_4;
  wire VGA_0_n_5;
  wire VGA_0_n_6;
  wire VGA_0_n_7;
  wire VGA_0_n_8;
  wire VGA_0_n_9;
  wire VGA_controller_0_n_26;
  wire VGA_controller_0_n_30;
  wire VGA_controller_0_n_32;
  wire VGA_controller_0_n_33;
  wire VGA_controller_0_n_34;
  wire VGA_controller_0_n_35;
  wire VGA_controller_0_n_36;
  wire VGA_controller_0_n_37;
  wire VGA_controller_0_n_38;
  wire VGA_controller_0_n_39;
  wire VGA_controller_0_n_40;
  wire VGA_controller_0_n_41;
  wire VGA_controller_0_n_42;
  wire VGA_controller_0_n_43;
  wire [30:0]address_reg_buff;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_config_controller_0_n_40;
  wire axi_config_controller_0_n_41;
  wire axi_config_controller_0_n_42;
  wire axi_config_controller_0_n_43;
  wire axi_config_controller_0_n_44;
  wire axi_config_controller_0_n_45;
  wire axi_config_controller_0_n_46;
  wire axi_config_controller_0_n_47;
  wire axi_config_controller_0_n_48;
  wire axi_config_controller_0_n_49;
  wire axi_config_controller_0_n_50;
  wire axi_config_controller_0_n_51;
  wire axi_config_controller_0_n_52;
  wire axi_config_controller_0_n_53;
  wire axi_config_controller_0_n_54;
  wire axi_config_controller_0_n_55;
  wire axi_config_controller_0_n_56;
  wire axi_config_controller_0_n_57;
  wire axi_config_controller_0_n_58;
  wire axi_config_controller_0_n_59;
  wire axi_config_controller_0_n_60;
  wire axi_config_controller_0_n_61;
  wire axi_config_controller_0_n_62;
  wire axi_config_controller_0_n_63;
  wire axi_config_controller_0_n_64;
  wire axi_config_controller_0_n_7;
  wire axi_fb_di_ready;
  wire axi_fb_enable;
  wire axi_fb_ready;
  wire clock;
  wire clock_vga_i_1_n_0;
  wire [31:0]di_address;
  wire [1:0]error_reg;
  wire [31:7]gat_address_base;
  wire h_sync;
  wire [31:0]m_axi_fb_araddr;
  wire m_axi_fb_arready;
  wire m_axi_fb_arvalid;
  wire [63:0]m_axi_fb_rdata;
  wire m_axi_fb_rlast;
  wire m_axi_fb_rready;
  wire [1:0]m_axi_fb_rresp;
  wire m_axi_fb_rvalid;
  wire [5:5]p_0_in;
  wire [5:5]pixel_pointer0;
  wire [6:1]pixel_pointer_reg;
  wire reset;
  wire [3:0]s_axi_config_araddr;
  wire [2:0]s_axi_config_arprot;
  wire s_axi_config_arready;
  wire s_axi_config_arvalid;
  wire [3:0]s_axi_config_awaddr;
  wire [2:0]s_axi_config_awprot;
  wire s_axi_config_awready;
  wire s_axi_config_awvalid;
  wire s_axi_config_bready;
  wire [1:1]\^s_axi_config_bresp ;
  wire s_axi_config_bvalid;
  wire [31:0]s_axi_config_rdata;
  wire s_axi_config_rready;
  wire [1:1]\^s_axi_config_rresp ;
  wire s_axi_config_rvalid;
  wire [31:0]s_axi_config_wdata;
  wire s_axi_config_wready;
  wire [3:0]s_axi_config_wstrb;
  wire s_axi_config_wvalid;
  wire [0:0]start_reg;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire vga_h_display;
  wire vga_h_v_display;
  wire [3:0]vga_r;
  wire vga_v_display;

  assign m_axi_fb_arburst[1] = \<const0> ;
  assign m_axi_fb_arburst[0] = \<const1> ;
  assign m_axi_fb_arcache[3] = \<const0> ;
  assign m_axi_fb_arcache[2] = \<const0> ;
  assign m_axi_fb_arcache[1] = \<const1> ;
  assign m_axi_fb_arcache[0] = \<const0> ;
  assign m_axi_fb_arid[0] = \<const0> ;
  assign m_axi_fb_arlen[7] = \<const1> ;
  assign m_axi_fb_arlen[6] = \<const1> ;
  assign m_axi_fb_arlen[5] = \<const1> ;
  assign m_axi_fb_arlen[4] = \<const1> ;
  assign m_axi_fb_arlen[3] = \<const1> ;
  assign m_axi_fb_arlen[2] = \<const1> ;
  assign m_axi_fb_arlen[1] = \<const1> ;
  assign m_axi_fb_arlen[0] = \<const1> ;
  assign m_axi_fb_arlock = \<const0> ;
  assign m_axi_fb_arprot[2] = \<const0> ;
  assign m_axi_fb_arprot[1] = \<const0> ;
  assign m_axi_fb_arprot[0] = \<const0> ;
  assign m_axi_fb_arqos[3] = \<const0> ;
  assign m_axi_fb_arqos[2] = \<const0> ;
  assign m_axi_fb_arqos[1] = \<const0> ;
  assign m_axi_fb_arqos[0] = \<const0> ;
  assign m_axi_fb_arsize[2] = \<const0> ;
  assign m_axi_fb_arsize[1] = \<const1> ;
  assign m_axi_fb_arsize[0] = \<const1> ;
  assign m_axi_fb_awaddr[31] = \<const0> ;
  assign m_axi_fb_awaddr[30] = \<const0> ;
  assign m_axi_fb_awaddr[29] = \<const0> ;
  assign m_axi_fb_awaddr[28] = \<const0> ;
  assign m_axi_fb_awaddr[27] = \<const0> ;
  assign m_axi_fb_awaddr[26] = \<const0> ;
  assign m_axi_fb_awaddr[25] = \<const0> ;
  assign m_axi_fb_awaddr[24] = \<const0> ;
  assign m_axi_fb_awaddr[23] = \<const0> ;
  assign m_axi_fb_awaddr[22] = \<const0> ;
  assign m_axi_fb_awaddr[21] = \<const0> ;
  assign m_axi_fb_awaddr[20] = \<const0> ;
  assign m_axi_fb_awaddr[19] = \<const0> ;
  assign m_axi_fb_awaddr[18] = \<const0> ;
  assign m_axi_fb_awaddr[17] = \<const0> ;
  assign m_axi_fb_awaddr[16] = \<const0> ;
  assign m_axi_fb_awaddr[15] = \<const0> ;
  assign m_axi_fb_awaddr[14] = \<const0> ;
  assign m_axi_fb_awaddr[13] = \<const0> ;
  assign m_axi_fb_awaddr[12] = \<const0> ;
  assign m_axi_fb_awaddr[11] = \<const0> ;
  assign m_axi_fb_awaddr[10] = \<const0> ;
  assign m_axi_fb_awaddr[9] = \<const0> ;
  assign m_axi_fb_awaddr[8] = \<const0> ;
  assign m_axi_fb_awaddr[7] = \<const0> ;
  assign m_axi_fb_awaddr[6] = \<const0> ;
  assign m_axi_fb_awaddr[5] = \<const0> ;
  assign m_axi_fb_awaddr[4] = \<const0> ;
  assign m_axi_fb_awaddr[3] = \<const0> ;
  assign m_axi_fb_awaddr[2] = \<const0> ;
  assign m_axi_fb_awaddr[1] = \<const0> ;
  assign m_axi_fb_awaddr[0] = \<const0> ;
  assign m_axi_fb_awburst[1] = \<const0> ;
  assign m_axi_fb_awburst[0] = \<const0> ;
  assign m_axi_fb_awcache[3] = \<const0> ;
  assign m_axi_fb_awcache[2] = \<const0> ;
  assign m_axi_fb_awcache[1] = \<const0> ;
  assign m_axi_fb_awcache[0] = \<const0> ;
  assign m_axi_fb_awid[0] = \<const0> ;
  assign m_axi_fb_awlen[7] = \<const0> ;
  assign m_axi_fb_awlen[6] = \<const0> ;
  assign m_axi_fb_awlen[5] = \<const0> ;
  assign m_axi_fb_awlen[4] = \<const0> ;
  assign m_axi_fb_awlen[3] = \<const0> ;
  assign m_axi_fb_awlen[2] = \<const0> ;
  assign m_axi_fb_awlen[1] = \<const0> ;
  assign m_axi_fb_awlen[0] = \<const0> ;
  assign m_axi_fb_awlock = \<const0> ;
  assign m_axi_fb_awprot[2] = \<const0> ;
  assign m_axi_fb_awprot[1] = \<const0> ;
  assign m_axi_fb_awprot[0] = \<const0> ;
  assign m_axi_fb_awqos[3] = \<const0> ;
  assign m_axi_fb_awqos[2] = \<const0> ;
  assign m_axi_fb_awqos[1] = \<const0> ;
  assign m_axi_fb_awqos[0] = \<const0> ;
  assign m_axi_fb_awsize[2] = \<const0> ;
  assign m_axi_fb_awsize[1] = \<const0> ;
  assign m_axi_fb_awsize[0] = \<const0> ;
  assign m_axi_fb_awvalid = \<const0> ;
  assign m_axi_fb_bready = \<const0> ;
  assign m_axi_fb_wdata[63] = \<const0> ;
  assign m_axi_fb_wdata[62] = \<const0> ;
  assign m_axi_fb_wdata[61] = \<const0> ;
  assign m_axi_fb_wdata[60] = \<const0> ;
  assign m_axi_fb_wdata[59] = \<const0> ;
  assign m_axi_fb_wdata[58] = \<const0> ;
  assign m_axi_fb_wdata[57] = \<const0> ;
  assign m_axi_fb_wdata[56] = \<const0> ;
  assign m_axi_fb_wdata[55] = \<const0> ;
  assign m_axi_fb_wdata[54] = \<const0> ;
  assign m_axi_fb_wdata[53] = \<const0> ;
  assign m_axi_fb_wdata[52] = \<const0> ;
  assign m_axi_fb_wdata[51] = \<const0> ;
  assign m_axi_fb_wdata[50] = \<const0> ;
  assign m_axi_fb_wdata[49] = \<const0> ;
  assign m_axi_fb_wdata[48] = \<const0> ;
  assign m_axi_fb_wdata[47] = \<const0> ;
  assign m_axi_fb_wdata[46] = \<const0> ;
  assign m_axi_fb_wdata[45] = \<const0> ;
  assign m_axi_fb_wdata[44] = \<const0> ;
  assign m_axi_fb_wdata[43] = \<const0> ;
  assign m_axi_fb_wdata[42] = \<const0> ;
  assign m_axi_fb_wdata[41] = \<const0> ;
  assign m_axi_fb_wdata[40] = \<const0> ;
  assign m_axi_fb_wdata[39] = \<const0> ;
  assign m_axi_fb_wdata[38] = \<const0> ;
  assign m_axi_fb_wdata[37] = \<const0> ;
  assign m_axi_fb_wdata[36] = \<const0> ;
  assign m_axi_fb_wdata[35] = \<const0> ;
  assign m_axi_fb_wdata[34] = \<const0> ;
  assign m_axi_fb_wdata[33] = \<const0> ;
  assign m_axi_fb_wdata[32] = \<const0> ;
  assign m_axi_fb_wdata[31] = \<const0> ;
  assign m_axi_fb_wdata[30] = \<const0> ;
  assign m_axi_fb_wdata[29] = \<const0> ;
  assign m_axi_fb_wdata[28] = \<const0> ;
  assign m_axi_fb_wdata[27] = \<const0> ;
  assign m_axi_fb_wdata[26] = \<const0> ;
  assign m_axi_fb_wdata[25] = \<const0> ;
  assign m_axi_fb_wdata[24] = \<const0> ;
  assign m_axi_fb_wdata[23] = \<const0> ;
  assign m_axi_fb_wdata[22] = \<const0> ;
  assign m_axi_fb_wdata[21] = \<const0> ;
  assign m_axi_fb_wdata[20] = \<const0> ;
  assign m_axi_fb_wdata[19] = \<const0> ;
  assign m_axi_fb_wdata[18] = \<const0> ;
  assign m_axi_fb_wdata[17] = \<const0> ;
  assign m_axi_fb_wdata[16] = \<const0> ;
  assign m_axi_fb_wdata[15] = \<const0> ;
  assign m_axi_fb_wdata[14] = \<const0> ;
  assign m_axi_fb_wdata[13] = \<const0> ;
  assign m_axi_fb_wdata[12] = \<const0> ;
  assign m_axi_fb_wdata[11] = \<const0> ;
  assign m_axi_fb_wdata[10] = \<const0> ;
  assign m_axi_fb_wdata[9] = \<const0> ;
  assign m_axi_fb_wdata[8] = \<const0> ;
  assign m_axi_fb_wdata[7] = \<const0> ;
  assign m_axi_fb_wdata[6] = \<const0> ;
  assign m_axi_fb_wdata[5] = \<const0> ;
  assign m_axi_fb_wdata[4] = \<const0> ;
  assign m_axi_fb_wdata[3] = \<const0> ;
  assign m_axi_fb_wdata[2] = \<const0> ;
  assign m_axi_fb_wdata[1] = \<const0> ;
  assign m_axi_fb_wdata[0] = \<const0> ;
  assign m_axi_fb_wlast = \<const0> ;
  assign m_axi_fb_wstrb[7] = \<const0> ;
  assign m_axi_fb_wstrb[6] = \<const0> ;
  assign m_axi_fb_wstrb[5] = \<const0> ;
  assign m_axi_fb_wstrb[4] = \<const0> ;
  assign m_axi_fb_wstrb[3] = \<const0> ;
  assign m_axi_fb_wstrb[2] = \<const0> ;
  assign m_axi_fb_wstrb[1] = \<const0> ;
  assign m_axi_fb_wstrb[0] = \<const0> ;
  assign m_axi_fb_wvalid = \<const0> ;
  assign s_axi_config_bresp[1] = \^s_axi_config_bresp [1];
  assign s_axi_config_bresp[0] = \<const0> ;
  assign s_axi_config_rresp[1] = \^s_axi_config_rresp [1];
  assign s_axi_config_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA VGA_0
       (.D({VGA_0_n_4,VGA_0_n_5}),
        .Q({pixel_pointer_reg[6],pixel_pointer_reg[1]}),
        .axi_aresetn(axi_aresetn),
        .clock(clock),
        .h_sync(h_sync),
        .\i_reg[0] (VGA_0_n_20),
        .\i_reg[0]_0 (VGA_controller_0_n_26),
        .\i_reg[1] (VGA_0_n_21),
        .\pixel_buffer_reg[48] (VGA_controller_0_n_32),
        .\pixel_buffer_reg[49] (VGA_controller_0_n_33),
        .\pixel_buffer_reg[50] (VGA_controller_0_n_34),
        .\pixel_buffer_reg[51] (VGA_controller_0_n_35),
        .\pixel_buffer_reg[52] (VGA_controller_0_n_36),
        .\pixel_buffer_reg[53] (VGA_controller_0_n_37),
        .\pixel_buffer_reg[54] (VGA_controller_0_n_38),
        .\pixel_buffer_reg[55] (VGA_controller_0_n_39),
        .\pixel_buffer_reg[56] (VGA_controller_0_n_40),
        .\pixel_buffer_reg[57] (VGA_controller_0_n_41),
        .\pixel_buffer_reg[58] (VGA_controller_0_n_42),
        .\pixel_buffer_reg[59] (VGA_controller_0_n_43),
        .pixel_pointer0(pixel_pointer0),
        .\pixel_pointer_reg[5] (p_0_in),
        .\pixel_pointer_reg[5]_0 (VGA_controller_0_n_30),
        .v_sync(v_sync),
        .\vga_b_reg[3] ({VGA_0_n_10,VGA_0_n_11,VGA_0_n_12,VGA_0_n_13}),
        .\vga_g_reg[3] ({VGA_0_n_14,VGA_0_n_15,VGA_0_n_16,VGA_0_n_17}),
        .vga_h_display(vga_h_display),
        .vga_h_v_display(vga_h_v_display),
        .\vga_r_reg[3] ({VGA_0_n_6,VGA_0_n_7,VGA_0_n_8,VGA_0_n_9}),
        .vga_v_display(vga_v_display));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_controller VGA_controller_0
       (.D(p_0_in),
        .Q(gat_address_base),
        .S({axi_config_controller_0_n_41,axi_config_controller_0_n_42,axi_config_controller_0_n_43,axi_config_controller_0_n_44}),
        .SR(reset),
        .\address_reg_buff_reg[14] ({axi_config_controller_0_n_45,axi_config_controller_0_n_46,axi_config_controller_0_n_47,axi_config_controller_0_n_48}),
        .\address_reg_buff_reg[18] ({axi_config_controller_0_n_49,axi_config_controller_0_n_50,axi_config_controller_0_n_51,axi_config_controller_0_n_52}),
        .\address_reg_buff_reg[22] ({axi_config_controller_0_n_53,axi_config_controller_0_n_54,axi_config_controller_0_n_55,axi_config_controller_0_n_56}),
        .\address_reg_buff_reg[26] ({axi_config_controller_0_n_57,axi_config_controller_0_n_58,axi_config_controller_0_n_59,axi_config_controller_0_n_60}),
        .\address_reg_buff_reg[30] (address_reg_buff),
        .\address_reg_buff_reg[30]_0 ({axi_config_controller_0_n_61,axi_config_controller_0_n_62,axi_config_controller_0_n_63,axi_config_controller_0_n_64}),
        .\address_reg_buff_reg[31] (axi_config_controller_0_n_7),
        .\address_reg_buff_reg[7] (axi_config_controller_0_n_40),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_fb_di_ready(axi_fb_di_ready),
        .axi_fb_enable(axi_fb_enable),
        .axi_fb_ready(axi_fb_ready),
        .\m_axi_fb_araddr_buff_reg[31] (di_address),
        .m_axi_fb_rdata(m_axi_fb_rdata),
        .m_axi_fb_rready_buff_reg(m_axi_fb_rready),
        .m_axi_fb_rvalid(m_axi_fb_rvalid),
        .pixel_pointer0(pixel_pointer0),
        .\start_reg_buff_reg[0] (start_reg),
        .v_display_buff_reg(VGA_0_n_21),
        .v_display_buff_reg_0(VGA_0_n_20),
        .v_display_buff_reg_1({VGA_0_n_10,VGA_0_n_11,VGA_0_n_12,VGA_0_n_13}),
        .v_display_buff_reg_2({VGA_0_n_14,VGA_0_n_15,VGA_0_n_16,VGA_0_n_17}),
        .v_display_buff_reg_3({VGA_0_n_6,VGA_0_n_7,VGA_0_n_8,VGA_0_n_9}),
        .v_display_buff_reg_4({VGA_0_n_4,VGA_0_n_5}),
        .vga_b(vga_b),
        .\vga_b_reg[0]_0 (VGA_controller_0_n_32),
        .\vga_b_reg[1]_0 (VGA_controller_0_n_33),
        .\vga_b_reg[2]_0 (VGA_controller_0_n_34),
        .\vga_b_reg[3]_0 (VGA_controller_0_n_35),
        .vga_g(vga_g),
        .\vga_g_reg[0]_0 (VGA_controller_0_n_36),
        .\vga_g_reg[1]_0 (VGA_controller_0_n_37),
        .\vga_g_reg[2]_0 (VGA_controller_0_n_38),
        .\vga_g_reg[3]_0 (VGA_controller_0_n_39),
        .vga_h_display(vga_h_display),
        .vga_h_v_display(vga_h_v_display),
        .vga_r(vga_r),
        .\vga_r_reg[0]_0 (VGA_controller_0_n_40),
        .\vga_r_reg[1]_0 (VGA_controller_0_n_41),
        .\vga_r_reg[2]_0 (VGA_controller_0_n_42),
        .\vga_r_reg[3]_0 (VGA_controller_0_n_43),
        .vga_v_display(vga_v_display),
        .\word_pointer_reg[0]__0_0 (VGA_controller_0_n_26),
        .\word_pointer_reg[5]__0_0 ({pixel_pointer_reg[6],pixel_pointer_reg[1]}),
        .\word_pointer_reg[5]__0_1 (VGA_controller_0_n_30));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_config_controller axi_config_controller_0
       (.Q(address_reg_buff),
        .S({axi_config_controller_0_n_41,axi_config_controller_0_n_42,axi_config_controller_0_n_43,axi_config_controller_0_n_44}),
        .SR(reset),
        .axi_aclk(axi_aclk),
        .\axi_fb_di_address_buff_reg[14] ({axi_config_controller_0_n_45,axi_config_controller_0_n_46,axi_config_controller_0_n_47,axi_config_controller_0_n_48}),
        .\axi_fb_di_address_buff_reg[18] ({axi_config_controller_0_n_49,axi_config_controller_0_n_50,axi_config_controller_0_n_51,axi_config_controller_0_n_52}),
        .\axi_fb_di_address_buff_reg[22] ({axi_config_controller_0_n_53,axi_config_controller_0_n_54,axi_config_controller_0_n_55,axi_config_controller_0_n_56}),
        .\axi_fb_di_address_buff_reg[26] ({axi_config_controller_0_n_57,axi_config_controller_0_n_58,axi_config_controller_0_n_59,axi_config_controller_0_n_60}),
        .\axi_fb_di_address_buff_reg[30] ({axi_config_controller_0_n_61,axi_config_controller_0_n_62,axi_config_controller_0_n_63,axi_config_controller_0_n_64}),
        .\axi_fb_di_address_buff_reg[31] (axi_config_controller_0_n_7),
        .\axi_fb_di_address_buff_reg[7] (axi_config_controller_0_n_40),
        .error_reg(error_reg),
        .\gat_address_base_reg[31] (gat_address_base),
        .s_axi_config_araddr(s_axi_config_araddr),
        .s_axi_config_arprot(s_axi_config_arprot[2]),
        .s_axi_config_arready(s_axi_config_arready),
        .s_axi_config_arvalid(s_axi_config_arvalid),
        .s_axi_config_awaddr(s_axi_config_awaddr),
        .s_axi_config_awprot(s_axi_config_awprot[2]),
        .s_axi_config_awready(s_axi_config_awready),
        .s_axi_config_awvalid(s_axi_config_awvalid),
        .s_axi_config_bready(s_axi_config_bready),
        .s_axi_config_bresp(\^s_axi_config_bresp ),
        .s_axi_config_bvalid(s_axi_config_bvalid),
        .s_axi_config_rdata(s_axi_config_rdata),
        .\s_axi_config_rdata_reg[0]_0 (start_reg),
        .s_axi_config_rready(s_axi_config_rready),
        .s_axi_config_rresp(\^s_axi_config_rresp ),
        .s_axi_config_rvalid(s_axi_config_rvalid),
        .s_axi_config_wdata(s_axi_config_wdata),
        .s_axi_config_wready(s_axi_config_wready),
        .s_axi_config_wstrb(s_axi_config_wstrb),
        .s_axi_config_wvalid(s_axi_config_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fb_controller axi_fb_controller_0
       (.D(di_address),
        .SR(reset),
        .axi_aclk(axi_aclk),
        .axi_fb_di_ready(axi_fb_di_ready),
        .axi_fb_enable(axi_fb_enable),
        .axi_fb_ready(axi_fb_ready),
        .error_reg(error_reg),
        .m_axi_fb_araddr(m_axi_fb_araddr),
        .m_axi_fb_arready(m_axi_fb_arready),
        .m_axi_fb_arvalid(m_axi_fb_arvalid),
        .m_axi_fb_rlast(m_axi_fb_rlast),
        .m_axi_fb_rready(m_axi_fb_rready),
        .m_axi_fb_rresp(m_axi_fb_rresp),
        .m_axi_fb_rvalid(m_axi_fb_rvalid));
  LUT1 #(
    .INIT(2'h1)) 
    clock_vga_i_1
       (.I0(clock),
        .O(clock_vga_i_1_n_0));
  FDRE clock_vga_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(clock_vga_i_1_n_0),
        .Q(clock),
        .R(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_config_controller
   (s_axi_config_rresp,
    s_axi_config_arready,
    s_axi_config_bvalid,
    s_axi_config_wready,
    s_axi_config_awready,
    s_axi_config_bresp,
    s_axi_config_rvalid,
    \axi_fb_di_address_buff_reg[31] ,
    Q,
    \s_axi_config_rdata_reg[0]_0 ,
    \axi_fb_di_address_buff_reg[7] ,
    S,
    \axi_fb_di_address_buff_reg[14] ,
    \axi_fb_di_address_buff_reg[18] ,
    \axi_fb_di_address_buff_reg[22] ,
    \axi_fb_di_address_buff_reg[26] ,
    \axi_fb_di_address_buff_reg[30] ,
    s_axi_config_rdata,
    SR,
    s_axi_config_awprot,
    axi_aclk,
    s_axi_config_arprot,
    s_axi_config_arvalid,
    \gat_address_base_reg[31] ,
    error_reg,
    s_axi_config_bready,
    s_axi_config_wvalid,
    s_axi_config_awvalid,
    s_axi_config_rready,
    s_axi_config_awaddr,
    s_axi_config_wdata,
    s_axi_config_araddr,
    s_axi_config_wstrb);
  output [0:0]s_axi_config_rresp;
  output s_axi_config_arready;
  output s_axi_config_bvalid;
  output s_axi_config_wready;
  output s_axi_config_awready;
  output [0:0]s_axi_config_bresp;
  output s_axi_config_rvalid;
  output [0:0]\axi_fb_di_address_buff_reg[31] ;
  output [30:0]Q;
  output [0:0]\s_axi_config_rdata_reg[0]_0 ;
  output [0:0]\axi_fb_di_address_buff_reg[7] ;
  output [3:0]S;
  output [3:0]\axi_fb_di_address_buff_reg[14] ;
  output [3:0]\axi_fb_di_address_buff_reg[18] ;
  output [3:0]\axi_fb_di_address_buff_reg[22] ;
  output [3:0]\axi_fb_di_address_buff_reg[26] ;
  output [3:0]\axi_fb_di_address_buff_reg[30] ;
  output [31:0]s_axi_config_rdata;
  input [0:0]SR;
  input [0:0]s_axi_config_awprot;
  input axi_aclk;
  input [0:0]s_axi_config_arprot;
  input s_axi_config_arvalid;
  input [24:0]\gat_address_base_reg[31] ;
  input [1:0]error_reg;
  input s_axi_config_bready;
  input s_axi_config_wvalid;
  input s_axi_config_awvalid;
  input s_axi_config_rready;
  input [3:0]s_axi_config_awaddr;
  input [31:0]s_axi_config_wdata;
  input [3:0]s_axi_config_araddr;
  input [3:0]s_axi_config_wstrb;

  wire [30:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [31:31]address_reg_buff;
  wire \address_reg_buff[15]_i_1_n_0 ;
  wire \address_reg_buff[23]_i_1_n_0 ;
  wire \address_reg_buff[31]_i_1_n_0 ;
  wire \address_reg_buff[7]_i_1_n_0 ;
  wire axi_aclk;
  wire [3:0]\axi_fb_di_address_buff_reg[14] ;
  wire [3:0]\axi_fb_di_address_buff_reg[18] ;
  wire [3:0]\axi_fb_di_address_buff_reg[22] ;
  wire [3:0]\axi_fb_di_address_buff_reg[26] ;
  wire [3:0]\axi_fb_di_address_buff_reg[30] ;
  wire [0:0]\axi_fb_di_address_buff_reg[31] ;
  wire [0:0]\axi_fb_di_address_buff_reg[7] ;
  wire [1:0]error_reg;
  wire [24:0]\gat_address_base_reg[31] ;
  wire p_0_in;
  wire [3:0]s_axi_config_araddr;
  wire [1:0]s_axi_config_araddr_buff__0;
  wire \s_axi_config_araddr_buff_reg_n_0_[2] ;
  wire \s_axi_config_araddr_buff_reg_n_0_[3] ;
  wire [0:0]s_axi_config_arprot;
  wire s_axi_config_arprot_buff;
  wire \s_axi_config_arprot_buff_reg_n_0_[2] ;
  wire s_axi_config_arready;
  wire s_axi_config_arready_buff_i_1_n_0;
  wire s_axi_config_arvalid;
  wire [3:0]s_axi_config_awaddr;
  wire \s_axi_config_awaddr_buff_reg_n_0_[0] ;
  wire \s_axi_config_awaddr_buff_reg_n_0_[1] ;
  wire \s_axi_config_awaddr_buff_reg_n_0_[2] ;
  wire \s_axi_config_awaddr_buff_reg_n_0_[3] ;
  wire [0:0]s_axi_config_awprot;
  wire s_axi_config_awprot_buff;
  wire \s_axi_config_awprot_buff_reg_n_0_[2] ;
  wire s_axi_config_awready;
  wire s_axi_config_awready_buff_i_1_n_0;
  wire s_axi_config_awvalid;
  wire s_axi_config_bready;
  wire [0:0]s_axi_config_bresp;
  wire \s_axi_config_bresp_buff[1]_i_1_n_0 ;
  wire s_axi_config_bvalid;
  wire s_axi_config_bvalid_buff_i_1_n_0;
  wire [31:0]s_axi_config_rdata;
  wire \s_axi_config_rdata[0]_i_1_n_0 ;
  wire \s_axi_config_rdata[10]_i_1_n_0 ;
  wire \s_axi_config_rdata[11]_i_1_n_0 ;
  wire \s_axi_config_rdata[12]_i_1_n_0 ;
  wire \s_axi_config_rdata[13]_i_1_n_0 ;
  wire \s_axi_config_rdata[14]_i_1_n_0 ;
  wire \s_axi_config_rdata[15]_i_1_n_0 ;
  wire \s_axi_config_rdata[16]_i_1_n_0 ;
  wire \s_axi_config_rdata[17]_i_1_n_0 ;
  wire \s_axi_config_rdata[18]_i_1_n_0 ;
  wire \s_axi_config_rdata[19]_i_1_n_0 ;
  wire \s_axi_config_rdata[1]_i_1_n_0 ;
  wire \s_axi_config_rdata[20]_i_1_n_0 ;
  wire \s_axi_config_rdata[21]_i_1_n_0 ;
  wire \s_axi_config_rdata[22]_i_1_n_0 ;
  wire \s_axi_config_rdata[23]_i_1_n_0 ;
  wire \s_axi_config_rdata[24]_i_1_n_0 ;
  wire \s_axi_config_rdata[25]_i_1_n_0 ;
  wire \s_axi_config_rdata[26]_i_1_n_0 ;
  wire \s_axi_config_rdata[27]_i_1_n_0 ;
  wire \s_axi_config_rdata[28]_i_1_n_0 ;
  wire \s_axi_config_rdata[29]_i_1_n_0 ;
  wire \s_axi_config_rdata[2]_i_1_n_0 ;
  wire \s_axi_config_rdata[30]_i_1_n_0 ;
  wire \s_axi_config_rdata[31]_i_1_n_0 ;
  wire \s_axi_config_rdata[31]_i_2_n_0 ;
  wire \s_axi_config_rdata[3]_i_1_n_0 ;
  wire \s_axi_config_rdata[4]_i_1_n_0 ;
  wire \s_axi_config_rdata[5]_i_1_n_0 ;
  wire \s_axi_config_rdata[6]_i_1_n_0 ;
  wire \s_axi_config_rdata[7]_i_1_n_0 ;
  wire \s_axi_config_rdata[8]_i_1_n_0 ;
  wire \s_axi_config_rdata[9]_i_1_n_0 ;
  wire [0:0]\s_axi_config_rdata_reg[0]_0 ;
  wire s_axi_config_rready;
  wire [0:0]s_axi_config_rresp;
  wire s_axi_config_rresp_buff1__0;
  wire s_axi_config_rvalid;
  wire s_axi_config_rvalid_buff_i_1_n_0;
  wire [31:0]s_axi_config_wdata;
  wire s_axi_config_wready;
  wire s_axi_config_wready_buff_i_1_n_0;
  wire [3:0]s_axi_config_wstrb;
  wire s_axi_config_wvalid;
  wire \start_reg_buff[31]_i_1_n_0 ;
  wire \start_reg_buff_reg_n_0_[10] ;
  wire \start_reg_buff_reg_n_0_[11] ;
  wire \start_reg_buff_reg_n_0_[12] ;
  wire \start_reg_buff_reg_n_0_[13] ;
  wire \start_reg_buff_reg_n_0_[14] ;
  wire \start_reg_buff_reg_n_0_[15] ;
  wire \start_reg_buff_reg_n_0_[16] ;
  wire \start_reg_buff_reg_n_0_[17] ;
  wire \start_reg_buff_reg_n_0_[18] ;
  wire \start_reg_buff_reg_n_0_[19] ;
  wire \start_reg_buff_reg_n_0_[1] ;
  wire \start_reg_buff_reg_n_0_[20] ;
  wire \start_reg_buff_reg_n_0_[21] ;
  wire \start_reg_buff_reg_n_0_[22] ;
  wire \start_reg_buff_reg_n_0_[23] ;
  wire \start_reg_buff_reg_n_0_[24] ;
  wire \start_reg_buff_reg_n_0_[25] ;
  wire \start_reg_buff_reg_n_0_[26] ;
  wire \start_reg_buff_reg_n_0_[27] ;
  wire \start_reg_buff_reg_n_0_[28] ;
  wire \start_reg_buff_reg_n_0_[29] ;
  wire \start_reg_buff_reg_n_0_[2] ;
  wire \start_reg_buff_reg_n_0_[30] ;
  wire \start_reg_buff_reg_n_0_[31] ;
  wire \start_reg_buff_reg_n_0_[3] ;
  wire \start_reg_buff_reg_n_0_[4] ;
  wire \start_reg_buff_reg_n_0_[5] ;
  wire \start_reg_buff_reg_n_0_[6] ;
  wire \start_reg_buff_reg_n_0_[7] ;
  wire \start_reg_buff_reg_n_0_[8] ;
  wire \start_reg_buff_reg_n_0_[9] ;
  wire [1:0]state_axir;
  wire \state_axir[0]_i_1_n_0 ;
  wire \state_axir[1]_i_1_n_0 ;
  wire state_axiw01_out;
  wire \state_axiw[0]_i_1_n_0 ;
  wire \state_axiw[1]_i_1_n_0 ;
  wire \state_axiw_reg_n_0_[0] ;
  wire \state_axiw_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \address_reg_buff[15]_i_1 
       (.I0(\state_axiw_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\s_axi_config_awaddr_buff_reg_n_0_[3] ),
        .I3(\s_axi_config_awaddr_buff_reg_n_0_[2] ),
        .I4(s_axi_config_wstrb[1]),
        .I5(\state_axiw_reg_n_0_[1] ),
        .O(\address_reg_buff[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \address_reg_buff[23]_i_1 
       (.I0(\state_axiw_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\s_axi_config_awaddr_buff_reg_n_0_[3] ),
        .I3(\s_axi_config_awaddr_buff_reg_n_0_[2] ),
        .I4(s_axi_config_wstrb[2]),
        .I5(\state_axiw_reg_n_0_[1] ),
        .O(\address_reg_buff[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \address_reg_buff[31]_i_1 
       (.I0(\state_axiw_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\s_axi_config_awaddr_buff_reg_n_0_[3] ),
        .I3(\s_axi_config_awaddr_buff_reg_n_0_[2] ),
        .I4(s_axi_config_wstrb[3]),
        .I5(\state_axiw_reg_n_0_[1] ),
        .O(\address_reg_buff[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \address_reg_buff[7]_i_1 
       (.I0(\state_axiw_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(\s_axi_config_awaddr_buff_reg_n_0_[3] ),
        .I3(\s_axi_config_awaddr_buff_reg_n_0_[2] ),
        .I4(s_axi_config_wstrb[0]),
        .I5(\state_axiw_reg_n_0_[1] ),
        .O(\address_reg_buff[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[0] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[10] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[11] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[12] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[13] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[14] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[15] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[16] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[17] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[18] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[19] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[1] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[20] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[21] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[22] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[23] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[23]_i_1_n_0 ),
        .D(s_axi_config_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[24] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[25] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[26] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[27] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[28] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[29] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[2] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[30] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[31] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[31]),
        .Q(address_reg_buff),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[3] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[4] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[5] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[6] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[7] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[7]_i_1_n_0 ),
        .D(s_axi_config_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[8] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_buff_reg[9] 
       (.C(axi_aclk),
        .CE(\address_reg_buff[15]_i_1_n_0 ),
        .D(s_axi_config_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__0_i_1
       (.I0(Q[14]),
        .I1(\gat_address_base_reg[31] [7]),
        .O(\axi_fb_di_address_buff_reg[14] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__0_i_2
       (.I0(Q[13]),
        .I1(\gat_address_base_reg[31] [6]),
        .O(\axi_fb_di_address_buff_reg[14] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__0_i_3
       (.I0(Q[12]),
        .I1(\gat_address_base_reg[31] [5]),
        .O(\axi_fb_di_address_buff_reg[14] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__0_i_4
       (.I0(Q[11]),
        .I1(\gat_address_base_reg[31] [4]),
        .O(\axi_fb_di_address_buff_reg[14] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__1_i_1
       (.I0(Q[18]),
        .I1(\gat_address_base_reg[31] [11]),
        .O(\axi_fb_di_address_buff_reg[18] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__1_i_2
       (.I0(Q[17]),
        .I1(\gat_address_base_reg[31] [10]),
        .O(\axi_fb_di_address_buff_reg[18] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__1_i_3
       (.I0(Q[16]),
        .I1(\gat_address_base_reg[31] [9]),
        .O(\axi_fb_di_address_buff_reg[18] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__1_i_4
       (.I0(Q[15]),
        .I1(\gat_address_base_reg[31] [8]),
        .O(\axi_fb_di_address_buff_reg[18] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__2_i_1
       (.I0(Q[22]),
        .I1(\gat_address_base_reg[31] [15]),
        .O(\axi_fb_di_address_buff_reg[22] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__2_i_2
       (.I0(Q[21]),
        .I1(\gat_address_base_reg[31] [14]),
        .O(\axi_fb_di_address_buff_reg[22] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__2_i_3
       (.I0(Q[20]),
        .I1(\gat_address_base_reg[31] [13]),
        .O(\axi_fb_di_address_buff_reg[22] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__2_i_4
       (.I0(Q[19]),
        .I1(\gat_address_base_reg[31] [12]),
        .O(\axi_fb_di_address_buff_reg[22] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__3_i_1
       (.I0(Q[26]),
        .I1(\gat_address_base_reg[31] [19]),
        .O(\axi_fb_di_address_buff_reg[26] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__3_i_2
       (.I0(Q[25]),
        .I1(\gat_address_base_reg[31] [18]),
        .O(\axi_fb_di_address_buff_reg[26] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__3_i_3
       (.I0(Q[24]),
        .I1(\gat_address_base_reg[31] [17]),
        .O(\axi_fb_di_address_buff_reg[26] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__3_i_4
       (.I0(Q[23]),
        .I1(\gat_address_base_reg[31] [16]),
        .O(\axi_fb_di_address_buff_reg[26] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__4_i_1
       (.I0(Q[30]),
        .I1(\gat_address_base_reg[31] [23]),
        .O(\axi_fb_di_address_buff_reg[30] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__4_i_2
       (.I0(Q[29]),
        .I1(\gat_address_base_reg[31] [22]),
        .O(\axi_fb_di_address_buff_reg[30] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__4_i_3
       (.I0(Q[28]),
        .I1(\gat_address_base_reg[31] [21]),
        .O(\axi_fb_di_address_buff_reg[30] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__4_i_4
       (.I0(Q[27]),
        .I1(\gat_address_base_reg[31] [20]),
        .O(\axi_fb_di_address_buff_reg[30] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry__5_i_1
       (.I0(address_reg_buff),
        .I1(\gat_address_base_reg[31] [24]),
        .O(\axi_fb_di_address_buff_reg[31] ));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry_i_1
       (.I0(Q[10]),
        .I1(\gat_address_base_reg[31] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry_i_2
       (.I0(Q[9]),
        .I1(\gat_address_base_reg[31] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry_i_3
       (.I0(Q[8]),
        .I1(\gat_address_base_reg[31] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    axi_fb_di_address_buff0_carry_i_4
       (.I0(Q[7]),
        .I1(\gat_address_base_reg[31] [0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_fb_di_address_buff[7]_i_1 
       (.I0(Q[7]),
        .I1(\gat_address_base_reg[31] [0]),
        .O(\axi_fb_di_address_buff_reg[7] ));
  LUT4 #(
    .INIT(16'h0008)) 
    s_axi_config_araddr_buff
       (.I0(s_axi_config_arvalid),
        .I1(s_axi_config_arready),
        .I2(state_axir[0]),
        .I3(state_axir[1]),
        .O(s_axi_config_arprot_buff));
  FDRE \s_axi_config_araddr_buff_reg[0] 
       (.C(axi_aclk),
        .CE(s_axi_config_arprot_buff),
        .D(s_axi_config_araddr[0]),
        .Q(s_axi_config_araddr_buff__0[0]),
        .R(SR));
  FDRE \s_axi_config_araddr_buff_reg[1] 
       (.C(axi_aclk),
        .CE(s_axi_config_arprot_buff),
        .D(s_axi_config_araddr[1]),
        .Q(s_axi_config_araddr_buff__0[1]),
        .R(SR));
  FDRE \s_axi_config_araddr_buff_reg[2] 
       (.C(axi_aclk),
        .CE(s_axi_config_arprot_buff),
        .D(s_axi_config_araddr[2]),
        .Q(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .R(SR));
  FDRE \s_axi_config_araddr_buff_reg[3] 
       (.C(axi_aclk),
        .CE(s_axi_config_arprot_buff),
        .D(s_axi_config_araddr[3]),
        .Q(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .R(SR));
  FDRE \s_axi_config_arprot_buff_reg[2] 
       (.C(axi_aclk),
        .CE(s_axi_config_arprot_buff),
        .D(s_axi_config_arprot),
        .Q(\s_axi_config_arprot_buff_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFD03)) 
    s_axi_config_arready_buff_i_1
       (.I0(s_axi_config_arvalid),
        .I1(state_axir[0]),
        .I2(state_axir[1]),
        .I3(s_axi_config_arready),
        .O(s_axi_config_arready_buff_i_1_n_0));
  FDRE s_axi_config_arready_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(s_axi_config_arready_buff_i_1_n_0),
        .Q(s_axi_config_arready),
        .R(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_config_awaddr_buff[3]_i_1 
       (.I0(s_axi_config_awvalid),
        .I1(s_axi_config_awready),
        .I2(\state_axiw_reg_n_0_[0] ),
        .I3(\state_axiw_reg_n_0_[1] ),
        .O(s_axi_config_awprot_buff));
  FDRE \s_axi_config_awaddr_buff_reg[0] 
       (.C(axi_aclk),
        .CE(s_axi_config_awprot_buff),
        .D(s_axi_config_awaddr[0]),
        .Q(\s_axi_config_awaddr_buff_reg_n_0_[0] ),
        .R(SR));
  FDRE \s_axi_config_awaddr_buff_reg[1] 
       (.C(axi_aclk),
        .CE(s_axi_config_awprot_buff),
        .D(s_axi_config_awaddr[1]),
        .Q(\s_axi_config_awaddr_buff_reg_n_0_[1] ),
        .R(SR));
  FDRE \s_axi_config_awaddr_buff_reg[2] 
       (.C(axi_aclk),
        .CE(s_axi_config_awprot_buff),
        .D(s_axi_config_awaddr[2]),
        .Q(\s_axi_config_awaddr_buff_reg_n_0_[2] ),
        .R(SR));
  FDRE \s_axi_config_awaddr_buff_reg[3] 
       (.C(axi_aclk),
        .CE(s_axi_config_awprot_buff),
        .D(s_axi_config_awaddr[3]),
        .Q(\s_axi_config_awaddr_buff_reg_n_0_[3] ),
        .R(SR));
  FDRE \s_axi_config_awprot_buff_reg[2] 
       (.C(axi_aclk),
        .CE(s_axi_config_awprot_buff),
        .D(s_axi_config_awprot),
        .Q(\s_axi_config_awprot_buff_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFD03)) 
    s_axi_config_awready_buff_i_1
       (.I0(s_axi_config_awvalid),
        .I1(\state_axiw_reg_n_0_[0] ),
        .I2(\state_axiw_reg_n_0_[1] ),
        .I3(s_axi_config_awready),
        .O(s_axi_config_awready_buff_i_1_n_0));
  FDRE s_axi_config_awready_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(s_axi_config_awready_buff_i_1_n_0),
        .Q(s_axi_config_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    \s_axi_config_bresp_buff[1]_i_1 
       (.I0(\s_axi_config_awaddr_buff_reg_n_0_[1] ),
        .I1(\s_axi_config_awaddr_buff_reg_n_0_[0] ),
        .I2(\s_axi_config_awprot_buff_reg_n_0_[2] ),
        .I3(\state_axiw_reg_n_0_[0] ),
        .I4(\state_axiw_reg_n_0_[1] ),
        .I5(s_axi_config_bresp),
        .O(\s_axi_config_bresp_buff[1]_i_1_n_0 ));
  FDRE \s_axi_config_bresp_buff_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\s_axi_config_bresp_buff[1]_i_1_n_0 ),
        .Q(s_axi_config_bresp),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7FC0)) 
    s_axi_config_bvalid_buff_i_1
       (.I0(s_axi_config_bready),
        .I1(\state_axiw_reg_n_0_[0] ),
        .I2(\state_axiw_reg_n_0_[1] ),
        .I3(s_axi_config_bvalid),
        .O(s_axi_config_bvalid_buff_i_1_n_0));
  FDRE s_axi_config_bvalid_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(s_axi_config_bvalid_buff_i_1_n_0),
        .Q(s_axi_config_bvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_config_rdata[0]_i_1 
       (.I0(error_reg[0]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .I2(\s_axi_config_rdata_reg[0]_0 ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I4(Q[0]),
        .O(\s_axi_config_rdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[10] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[11] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[12] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[13] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[14] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[15] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[16]_i_1 
       (.I0(Q[16]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[16] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[17] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[18]_i_1 
       (.I0(Q[18]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[18] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[19]_i_1 
       (.I0(Q[19]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[19] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_config_rdata[1]_i_1 
       (.I0(error_reg[1]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .I2(\start_reg_buff_reg_n_0_[1] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I4(Q[1]),
        .O(\s_axi_config_rdata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[20]_i_1 
       (.I0(Q[20]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[20] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[21]_i_1 
       (.I0(Q[21]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[21] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[22] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[23] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[24]_i_1 
       (.I0(Q[24]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[24] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[25] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[26] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[27]_i_1 
       (.I0(Q[27]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[27] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[28]_i_1 
       (.I0(Q[28]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[28] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[29]_i_1 
       (.I0(Q[29]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[29] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[2] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[30]_i_1 
       (.I0(Q[30]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[30] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_config_rdata[31]_i_1 
       (.I0(state_axir[0]),
        .I1(state_axir[1]),
        .O(\s_axi_config_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[31]_i_2 
       (.I0(address_reg_buff),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[31] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[3] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[4] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[5] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[6] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[7] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[8] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_config_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(\s_axi_config_araddr_buff_reg_n_0_[3] ),
        .I2(\start_reg_buff_reg_n_0_[9] ),
        .I3(\s_axi_config_araddr_buff_reg_n_0_[2] ),
        .O(\s_axi_config_rdata[9]_i_1_n_0 ));
  FDRE \s_axi_config_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[0]_i_1_n_0 ),
        .Q(s_axi_config_rdata[0]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[10]_i_1_n_0 ),
        .Q(s_axi_config_rdata[10]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[11]_i_1_n_0 ),
        .Q(s_axi_config_rdata[11]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[12]_i_1_n_0 ),
        .Q(s_axi_config_rdata[12]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[13]_i_1_n_0 ),
        .Q(s_axi_config_rdata[13]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[14]_i_1_n_0 ),
        .Q(s_axi_config_rdata[14]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[15]_i_1_n_0 ),
        .Q(s_axi_config_rdata[15]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[16]_i_1_n_0 ),
        .Q(s_axi_config_rdata[16]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[17]_i_1_n_0 ),
        .Q(s_axi_config_rdata[17]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[18]_i_1_n_0 ),
        .Q(s_axi_config_rdata[18]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[19]_i_1_n_0 ),
        .Q(s_axi_config_rdata[19]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[1]_i_1_n_0 ),
        .Q(s_axi_config_rdata[1]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[20]_i_1_n_0 ),
        .Q(s_axi_config_rdata[20]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[21]_i_1_n_0 ),
        .Q(s_axi_config_rdata[21]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[22]_i_1_n_0 ),
        .Q(s_axi_config_rdata[22]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[23]_i_1_n_0 ),
        .Q(s_axi_config_rdata[23]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[24]_i_1_n_0 ),
        .Q(s_axi_config_rdata[24]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[25]_i_1_n_0 ),
        .Q(s_axi_config_rdata[25]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[26]_i_1_n_0 ),
        .Q(s_axi_config_rdata[26]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[27]_i_1_n_0 ),
        .Q(s_axi_config_rdata[27]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[28]_i_1_n_0 ),
        .Q(s_axi_config_rdata[28]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[29]_i_1_n_0 ),
        .Q(s_axi_config_rdata[29]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[2]_i_1_n_0 ),
        .Q(s_axi_config_rdata[2]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[30]_i_1_n_0 ),
        .Q(s_axi_config_rdata[30]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[31]_i_2_n_0 ),
        .Q(s_axi_config_rdata[31]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[3]_i_1_n_0 ),
        .Q(s_axi_config_rdata[3]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[4]_i_1_n_0 ),
        .Q(s_axi_config_rdata[4]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[5]_i_1_n_0 ),
        .Q(s_axi_config_rdata[5]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[6]_i_1_n_0 ),
        .Q(s_axi_config_rdata[6]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[7]_i_1_n_0 ),
        .Q(s_axi_config_rdata[7]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[8]_i_1_n_0 ),
        .Q(s_axi_config_rdata[8]),
        .R(SR));
  FDRE \s_axi_config_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(\s_axi_config_rdata[9]_i_1_n_0 ),
        .Q(s_axi_config_rdata[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_config_rresp_buff1
       (.I0(s_axi_config_araddr_buff__0[1]),
        .I1(s_axi_config_araddr_buff__0[0]),
        .I2(\s_axi_config_arprot_buff_reg_n_0_[2] ),
        .O(s_axi_config_rresp_buff1__0));
  FDRE \s_axi_config_rresp_buff_reg[1] 
       (.C(axi_aclk),
        .CE(\s_axi_config_rdata[31]_i_1_n_0 ),
        .D(s_axi_config_rresp_buff1__0),
        .Q(s_axi_config_rresp),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF70C)) 
    s_axi_config_rvalid_buff_i_1
       (.I0(s_axi_config_rready),
        .I1(state_axir[1]),
        .I2(state_axir[0]),
        .I3(s_axi_config_rvalid),
        .O(s_axi_config_rvalid_buff_i_1_n_0));
  FDRE s_axi_config_rvalid_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(s_axi_config_rvalid_buff_i_1_n_0),
        .Q(s_axi_config_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF70C)) 
    s_axi_config_wready_buff_i_1
       (.I0(s_axi_config_wvalid),
        .I1(\state_axiw_reg_n_0_[1] ),
        .I2(\state_axiw_reg_n_0_[0] ),
        .I3(s_axi_config_wready),
        .O(s_axi_config_wready_buff_i_1_n_0));
  FDRE s_axi_config_wready_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(s_axi_config_wready_buff_i_1_n_0),
        .Q(s_axi_config_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \start_reg_buff[31]_i_1 
       (.I0(\state_axiw_reg_n_0_[0] ),
        .I1(s_axi_config_wvalid),
        .I2(s_axi_config_wready),
        .I3(\s_axi_config_awaddr_buff_reg_n_0_[2] ),
        .I4(\s_axi_config_awaddr_buff_reg_n_0_[3] ),
        .I5(\state_axiw_reg_n_0_[1] ),
        .O(\start_reg_buff[31]_i_1_n_0 ));
  FDRE \start_reg_buff_reg[0] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[0]),
        .Q(\s_axi_config_rdata_reg[0]_0 ),
        .R(SR));
  FDRE \start_reg_buff_reg[10] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[10]),
        .Q(\start_reg_buff_reg_n_0_[10] ),
        .R(SR));
  FDRE \start_reg_buff_reg[11] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[11]),
        .Q(\start_reg_buff_reg_n_0_[11] ),
        .R(SR));
  FDRE \start_reg_buff_reg[12] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[12]),
        .Q(\start_reg_buff_reg_n_0_[12] ),
        .R(SR));
  FDRE \start_reg_buff_reg[13] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[13]),
        .Q(\start_reg_buff_reg_n_0_[13] ),
        .R(SR));
  FDRE \start_reg_buff_reg[14] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[14]),
        .Q(\start_reg_buff_reg_n_0_[14] ),
        .R(SR));
  FDRE \start_reg_buff_reg[15] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[15]),
        .Q(\start_reg_buff_reg_n_0_[15] ),
        .R(SR));
  FDRE \start_reg_buff_reg[16] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[16]),
        .Q(\start_reg_buff_reg_n_0_[16] ),
        .R(SR));
  FDRE \start_reg_buff_reg[17] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[17]),
        .Q(\start_reg_buff_reg_n_0_[17] ),
        .R(SR));
  FDRE \start_reg_buff_reg[18] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[18]),
        .Q(\start_reg_buff_reg_n_0_[18] ),
        .R(SR));
  FDRE \start_reg_buff_reg[19] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[19]),
        .Q(\start_reg_buff_reg_n_0_[19] ),
        .R(SR));
  FDRE \start_reg_buff_reg[1] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[1]),
        .Q(\start_reg_buff_reg_n_0_[1] ),
        .R(SR));
  FDRE \start_reg_buff_reg[20] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[20]),
        .Q(\start_reg_buff_reg_n_0_[20] ),
        .R(SR));
  FDRE \start_reg_buff_reg[21] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[21]),
        .Q(\start_reg_buff_reg_n_0_[21] ),
        .R(SR));
  FDRE \start_reg_buff_reg[22] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[22]),
        .Q(\start_reg_buff_reg_n_0_[22] ),
        .R(SR));
  FDRE \start_reg_buff_reg[23] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[23]),
        .Q(\start_reg_buff_reg_n_0_[23] ),
        .R(SR));
  FDRE \start_reg_buff_reg[24] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[24]),
        .Q(\start_reg_buff_reg_n_0_[24] ),
        .R(SR));
  FDRE \start_reg_buff_reg[25] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[25]),
        .Q(\start_reg_buff_reg_n_0_[25] ),
        .R(SR));
  FDRE \start_reg_buff_reg[26] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[26]),
        .Q(\start_reg_buff_reg_n_0_[26] ),
        .R(SR));
  FDRE \start_reg_buff_reg[27] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[27]),
        .Q(\start_reg_buff_reg_n_0_[27] ),
        .R(SR));
  FDRE \start_reg_buff_reg[28] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[28]),
        .Q(\start_reg_buff_reg_n_0_[28] ),
        .R(SR));
  FDRE \start_reg_buff_reg[29] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[29]),
        .Q(\start_reg_buff_reg_n_0_[29] ),
        .R(SR));
  FDRE \start_reg_buff_reg[2] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[2]),
        .Q(\start_reg_buff_reg_n_0_[2] ),
        .R(SR));
  FDRE \start_reg_buff_reg[30] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[30]),
        .Q(\start_reg_buff_reg_n_0_[30] ),
        .R(SR));
  FDRE \start_reg_buff_reg[31] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[31]),
        .Q(\start_reg_buff_reg_n_0_[31] ),
        .R(SR));
  FDRE \start_reg_buff_reg[3] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[3]),
        .Q(\start_reg_buff_reg_n_0_[3] ),
        .R(SR));
  FDRE \start_reg_buff_reg[4] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[4]),
        .Q(\start_reg_buff_reg_n_0_[4] ),
        .R(SR));
  FDRE \start_reg_buff_reg[5] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[5]),
        .Q(\start_reg_buff_reg_n_0_[5] ),
        .R(SR));
  FDRE \start_reg_buff_reg[6] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[6]),
        .Q(\start_reg_buff_reg_n_0_[6] ),
        .R(SR));
  FDRE \start_reg_buff_reg[7] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[7]),
        .Q(\start_reg_buff_reg_n_0_[7] ),
        .R(SR));
  FDRE \start_reg_buff_reg[8] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[8]),
        .Q(\start_reg_buff_reg_n_0_[8] ),
        .R(SR));
  FDRE \start_reg_buff_reg[9] 
       (.C(axi_aclk),
        .CE(\start_reg_buff[31]_i_1_n_0 ),
        .D(s_axi_config_wdata[9]),
        .Q(\start_reg_buff_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \state_axir[0]_i_1 
       (.I0(state_axir[0]),
        .I1(s_axi_config_arvalid),
        .I2(s_axi_config_arready),
        .I3(state_axir[1]),
        .O(\state_axir[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \state_axir[1]_i_1 
       (.I0(state_axir[0]),
        .I1(state_axir[1]),
        .I2(s_axi_config_rready),
        .I3(s_axi_config_rvalid),
        .O(\state_axir[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_axir_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\state_axir[0]_i_1_n_0 ),
        .Q(state_axir[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_axir_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\state_axir[1]_i_1_n_0 ),
        .Q(state_axir[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00CAF0CAF0CAF0CA)) 
    \state_axiw[0]_i_1 
       (.I0(state_axiw01_out),
        .I1(p_0_in),
        .I2(\state_axiw_reg_n_0_[1] ),
        .I3(\state_axiw_reg_n_0_[0] ),
        .I4(s_axi_config_bvalid),
        .I5(s_axi_config_bready),
        .O(\state_axiw[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state_axiw[0]_i_2 
       (.I0(s_axi_config_awready),
        .I1(s_axi_config_awvalid),
        .O(state_axiw01_out));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state_axiw[0]_i_3 
       (.I0(s_axi_config_wready),
        .I1(s_axi_config_wvalid),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6EEE)) 
    \state_axiw[1]_i_1 
       (.I0(\state_axiw_reg_n_0_[1] ),
        .I1(\state_axiw_reg_n_0_[0] ),
        .I2(s_axi_config_bvalid),
        .I3(s_axi_config_bready),
        .O(\state_axiw[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_axiw_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\state_axiw[0]_i_1_n_0 ),
        .Q(\state_axiw_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_axiw_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\state_axiw[1]_i_1_n_0 ),
        .Q(\state_axiw_reg_n_0_[1] ),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fb_controller
   (m_axi_fb_rready,
    m_axi_fb_arvalid,
    axi_fb_ready,
    axi_fb_di_ready,
    m_axi_fb_araddr,
    error_reg,
    SR,
    axi_aclk,
    m_axi_fb_rvalid,
    m_axi_fb_arready,
    m_axi_fb_rlast,
    D,
    m_axi_fb_rresp,
    axi_fb_enable);
  output m_axi_fb_rready;
  output m_axi_fb_arvalid;
  output axi_fb_ready;
  output axi_fb_di_ready;
  output [31:0]m_axi_fb_araddr;
  output [1:0]error_reg;
  input [0:0]SR;
  input axi_aclk;
  input m_axi_fb_rvalid;
  input m_axi_fb_arready;
  input m_axi_fb_rlast;
  input [31:0]D;
  input [1:0]m_axi_fb_rresp;
  input axi_fb_enable;

  wire \/FSM_sequential_m_axi_fb_state[1]_i_2_n_0 ;
  wire \/FSM_sequential_m_axi_fb_state[2]_i_2_n_0 ;
  wire [31:0]D;
  wire \FSM_sequential_m_axi_fb_state[0]_i_1_n_0 ;
  wire \FSM_sequential_m_axi_fb_state[1]_i_1_n_0 ;
  wire \FSM_sequential_m_axi_fb_state[2]_i_1_n_0 ;
  wire \FSM_sequential_m_axi_fb_state[2]_i_3_n_0 ;
  wire \FSM_sequential_m_axi_fb_state[2]_i_5_n_0 ;
  wire [0:0]SR;
  wire axi_aclk;
  wire axi_fb_di_ready;
  wire axi_fb_enable;
  wire axi_fb_ready;
  wire [1:0]error_reg;
  wire \error_reg_buff[0]_i_1_n_0 ;
  wire \error_reg_buff[1]_i_1_n_0 ;
  wire [31:0]m_axi_fb_araddr;
  wire m_axi_fb_araddr_buff__0;
  wire m_axi_fb_arready;
  wire m_axi_fb_arvalid;
  wire m_axi_fb_arvalid_buff_i_1_n_0;
  wire m_axi_fb_rlast;
  wire m_axi_fb_rready;
  wire m_axi_fb_rready_buff_i_1_n_0;
  wire [1:0]m_axi_fb_rresp;
  wire m_axi_fb_rvalid;
  (* RTL_KEEP = "yes" *) wire [2:0]m_axi_fb_state;
  wire m_axi_fb_state0;
  wire ready_buff_i_1_n_0;

  LUT5 #(
    .INIT(32'h00AA01AA)) 
    \/FSM_sequential_m_axi_fb_state[1]_i_2 
       (.I0(m_axi_fb_state[0]),
        .I1(m_axi_fb_state[2]),
        .I2(m_axi_fb_rresp[0]),
        .I3(m_axi_fb_state[1]),
        .I4(m_axi_fb_rresp[1]),
        .O(\/FSM_sequential_m_axi_fb_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444000004440)) 
    \/FSM_sequential_m_axi_fb_state[2]_i_2 
       (.I0(m_axi_fb_state[2]),
        .I1(m_axi_fb_state[1]),
        .I2(m_axi_fb_rresp[1]),
        .I3(m_axi_fb_rresp[0]),
        .I4(m_axi_fb_state[0]),
        .I5(axi_fb_enable),
        .O(\/FSM_sequential_m_axi_fb_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \FSM_sequential_m_axi_fb_state[0]_i_1 
       (.I0(m_axi_fb_state[0]),
        .I1(m_axi_fb_state[2]),
        .I2(\FSM_sequential_m_axi_fb_state[2]_i_3_n_0 ),
        .I3(m_axi_fb_state[0]),
        .O(\FSM_sequential_m_axi_fb_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_m_axi_fb_state[1]_i_1 
       (.I0(\/FSM_sequential_m_axi_fb_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_m_axi_fb_state[2]_i_3_n_0 ),
        .I2(m_axi_fb_state[1]),
        .O(\FSM_sequential_m_axi_fb_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_m_axi_fb_state[2]_i_1 
       (.I0(\/FSM_sequential_m_axi_fb_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_m_axi_fb_state[2]_i_3_n_0 ),
        .I2(m_axi_fb_state[2]),
        .O(\FSM_sequential_m_axi_fb_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0CCFFFFF0AA)) 
    \FSM_sequential_m_axi_fb_state[2]_i_3 
       (.I0(axi_fb_enable),
        .I1(m_axi_fb_state0),
        .I2(\FSM_sequential_m_axi_fb_state[2]_i_5_n_0 ),
        .I3(m_axi_fb_state[1]),
        .I4(m_axi_fb_state[2]),
        .I5(m_axi_fb_state[0]),
        .O(\FSM_sequential_m_axi_fb_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_m_axi_fb_state[2]_i_4 
       (.I0(m_axi_fb_arvalid),
        .I1(m_axi_fb_arready),
        .O(m_axi_fb_state0));
  LUT5 #(
    .INIT(32'h74444444)) 
    \FSM_sequential_m_axi_fb_state[2]_i_5 
       (.I0(axi_fb_enable),
        .I1(m_axi_fb_state[0]),
        .I2(m_axi_fb_rvalid),
        .I3(m_axi_fb_rready),
        .I4(m_axi_fb_rlast),
        .O(\FSM_sequential_m_axi_fb_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "m_axi_fb_s_enable:000,m_axi_fb_s_ar:001,m_axi_fb_s_r:010,m_axi_fb_s_ready:011,m_axi_fb_s_err:101,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_m_axi_fb_state_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_m_axi_fb_state[0]_i_1_n_0 ),
        .Q(m_axi_fb_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "m_axi_fb_s_enable:000,m_axi_fb_s_ar:001,m_axi_fb_s_r:010,m_axi_fb_s_ready:011,m_axi_fb_s_err:101,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_m_axi_fb_state_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_m_axi_fb_state[1]_i_1_n_0 ),
        .Q(m_axi_fb_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "m_axi_fb_s_enable:000,m_axi_fb_s_ar:001,m_axi_fb_s_r:010,m_axi_fb_s_ready:011,m_axi_fb_s_err:101,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_m_axi_fb_state_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_m_axi_fb_state[2]_i_1_n_0 ),
        .Q(m_axi_fb_state[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \error_reg_buff[0]_i_1 
       (.I0(m_axi_fb_rresp[0]),
        .I1(m_axi_fb_state[1]),
        .I2(m_axi_fb_state[0]),
        .I3(m_axi_fb_state[2]),
        .I4(error_reg[0]),
        .O(\error_reg_buff[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \error_reg_buff[1]_i_1 
       (.I0(m_axi_fb_rresp[1]),
        .I1(m_axi_fb_state[1]),
        .I2(m_axi_fb_state[0]),
        .I3(m_axi_fb_state[2]),
        .I4(error_reg[1]),
        .O(\error_reg_buff[1]_i_1_n_0 ));
  FDRE \error_reg_buff_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\error_reg_buff[0]_i_1_n_0 ),
        .Q(error_reg[0]),
        .R(SR));
  FDRE \error_reg_buff_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\error_reg_buff[1]_i_1_n_0 ),
        .Q(error_reg[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0010)) 
    m_axi_fb_araddr_buff
       (.I0(m_axi_fb_state[0]),
        .I1(m_axi_fb_state[2]),
        .I2(axi_fb_enable),
        .I3(m_axi_fb_state[1]),
        .O(m_axi_fb_araddr_buff__0));
  FDRE \m_axi_fb_araddr_buff_reg[0] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[0]),
        .Q(m_axi_fb_araddr[0]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[10] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[10]),
        .Q(m_axi_fb_araddr[10]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[11] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[11]),
        .Q(m_axi_fb_araddr[11]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[12] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[12]),
        .Q(m_axi_fb_araddr[12]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[13] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[13]),
        .Q(m_axi_fb_araddr[13]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[14] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[14]),
        .Q(m_axi_fb_araddr[14]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[15] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[15]),
        .Q(m_axi_fb_araddr[15]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[16] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[16]),
        .Q(m_axi_fb_araddr[16]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[17] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[17]),
        .Q(m_axi_fb_araddr[17]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[18] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[18]),
        .Q(m_axi_fb_araddr[18]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[19] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[19]),
        .Q(m_axi_fb_araddr[19]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[1] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[1]),
        .Q(m_axi_fb_araddr[1]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[20] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[20]),
        .Q(m_axi_fb_araddr[20]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[21] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[21]),
        .Q(m_axi_fb_araddr[21]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[22] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[22]),
        .Q(m_axi_fb_araddr[22]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[23] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[23]),
        .Q(m_axi_fb_araddr[23]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[24] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[24]),
        .Q(m_axi_fb_araddr[24]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[25] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[25]),
        .Q(m_axi_fb_araddr[25]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[26] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[26]),
        .Q(m_axi_fb_araddr[26]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[27] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[27]),
        .Q(m_axi_fb_araddr[27]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[28] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[28]),
        .Q(m_axi_fb_araddr[28]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[29] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[29]),
        .Q(m_axi_fb_araddr[29]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[2] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[2]),
        .Q(m_axi_fb_araddr[2]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[30] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[30]),
        .Q(m_axi_fb_araddr[30]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[31] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[31]),
        .Q(m_axi_fb_araddr[31]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[3] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[3]),
        .Q(m_axi_fb_araddr[3]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[4] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[4]),
        .Q(m_axi_fb_araddr[4]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[5] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[5]),
        .Q(m_axi_fb_araddr[5]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[6] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[6]),
        .Q(m_axi_fb_araddr[6]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[7] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[7]),
        .Q(m_axi_fb_araddr[7]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[8] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[8]),
        .Q(m_axi_fb_araddr[8]),
        .R(SR));
  FDRE \m_axi_fb_araddr_buff_reg[9] 
       (.C(axi_aclk),
        .CE(m_axi_fb_araddr_buff__0),
        .D(D[9]),
        .Q(m_axi_fb_araddr[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFF7000C)) 
    m_axi_fb_arvalid_buff_i_1
       (.I0(m_axi_fb_arready),
        .I1(m_axi_fb_state[0]),
        .I2(m_axi_fb_state[2]),
        .I3(m_axi_fb_state[1]),
        .I4(m_axi_fb_arvalid),
        .O(m_axi_fb_arvalid_buff_i_1_n_0));
  FDRE m_axi_fb_arvalid_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(m_axi_fb_arvalid_buff_i_1_n_0),
        .Q(m_axi_fb_arvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFFFFFFF10101010)) 
    m_axi_fb_rready_buff_i_1
       (.I0(m_axi_fb_state[0]),
        .I1(m_axi_fb_state[2]),
        .I2(m_axi_fb_state[1]),
        .I3(m_axi_fb_rlast),
        .I4(m_axi_fb_rvalid),
        .I5(m_axi_fb_rready),
        .O(m_axi_fb_rready_buff_i_1_n_0));
  FDRE m_axi_fb_rready_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(m_axi_fb_rready_buff_i_1_n_0),
        .Q(m_axi_fb_rready),
        .R(SR));
  LUT4 #(
    .INIT(16'hFE40)) 
    ready_buff_i_1
       (.I0(m_axi_fb_state[2]),
        .I1(m_axi_fb_state[1]),
        .I2(m_axi_fb_state[0]),
        .I3(axi_fb_ready),
        .O(ready_buff_i_1_n_0));
  FDRE ready_buff_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(ready_buff_i_1_n_0),
        .Q(axi_fb_ready),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \word_pointer[7]_i_3 
       (.I0(m_axi_fb_rready),
        .I1(m_axi_fb_rvalid),
        .O(axi_fb_di_ready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel
   (D,
    axi_aclk,
    wea,
    Q,
    \blk_dina_reg[63] ,
    \blk_addrb_reg[7] );
  output [47:0]D;
  input axi_aclk;
  input [0:0]wea;
  input [7:0]Q;
  input [63:0]\blk_dina_reg[63] ;
  input [7:0]\blk_addrb_reg[7] ;

  wire [47:0]D;
  wire [7:0]Q;
  wire axi_aclk;
  wire [7:0]\blk_addrb_reg[7] ;
  wire [63:0]\blk_dina_reg[63] ;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [63:12]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.966099 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_pixel.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(Q),
        .addrb(\blk_addrb_reg[7] ),
        .clka(axi_aclk),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(\blk_dina_reg[63] ),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb({NLW_U0_doutb_UNCONNECTED[63:60],D[47:36],NLW_U0_doutb_UNCONNECTED[47:44],D[35:24],NLW_U0_doutb_UNCONNECTED[31:28],D[23:12],NLW_U0_doutb_UNCONNECTED[15:12],D[11:0]}),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [47:0]doutb;
  input clka;
  input [0:0]wea;
  input [7:0]addrb;
  input [7:0]addra;
  input [63:0]dina;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [47:0]doutb;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [47:0]doutb;
  input clka;
  input [0:0]wea;
  input [7:0]addrb;
  input [7:0]addra;
  input [63:0]dina;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [47:0]doutb;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [47:0]doutb;
  input clka;
  input [0:0]wea;
  input [7:0]addrb;
  input [7:0]addra;
  input [63:0]dina;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_23 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_40 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_55 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_56 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92 ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [47:0]doutb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI(dina[31:0]),
        .DIBDI(dina[63:32]),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_23 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_24 ,doutb[23:12],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_40 ,doutb[11:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_55 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_56 ,doutb[47:36],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72 ,doutb[35:24]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(wea),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [47:0]doutb;
  input clka;
  input [0:0]wea;
  input [7:0]addrb;
  input [7:0]addra;
  input [63:0]dina;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [47:0]doutb;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "8" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.966099 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_pixel.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "256" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "64" *) 
(* C_READ_WIDTH_B = "64" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "256" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_MODE_B = "READ_FIRST" *) (* C_WRITE_WIDTH_A = "64" *) (* C_WRITE_WIDTH_B = "64" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [59:0]\^doutb ;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59:48] = \^doutb [59:48];
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43:32] = \^doutb [43:32];
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27:16] = \^doutb [27:16];
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11:0] = \^doutb [11:0];
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb({\^doutb [59:48],\^doutb [43:32],\^doutb [27:16],\^doutb [11:0]}),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [47:0]doutb;
  input clka;
  input [0:0]wea;
  input [7:0]addrb;
  input [7:0]addra;
  input [63:0]dina;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [47:0]doutb;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
