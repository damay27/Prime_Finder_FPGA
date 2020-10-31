// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Oct 30 21:50:28 2020
// Host        : DESKTOP-JPU69U7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/prime_finder_git/project.srcs/sources_1/bd/prime_finder_design/ip/prime_finder_design_prime_finder_0_0/prime_finder_design_prime_finder_0_0_stub.v
// Design      : prime_finder_design_prime_finder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "prime_finder,Vivado 2020.1" *)
module prime_finder_design_prime_finder_0_0(aclk, aresetn, araddr, arprot, arvalid, arready, 
  rdata, rresp, rvalid, rready, awaddr, awprot, awvalid, awready, wdata, wstrb, wvalid, wready, bresp, 
  bvalid, bready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,araddr[31:0],arprot[2:0],arvalid,arready,rdata[31:0],rresp,rvalid,rready,awaddr[31:0],awprot[2:0],awvalid,awready,wdata[31:0],wstrb[7:0],wvalid,wready,bresp[1:0],bvalid,bready" */;
  input aclk;
  input aresetn;
  input [31:0]araddr;
  input [2:0]arprot;
  input arvalid;
  output arready;
  output [31:0]rdata;
  output rresp;
  output rvalid;
  input rready;
  input [31:0]awaddr;
  input [2:0]awprot;
  input awvalid;
  output awready;
  input [31:0]wdata;
  input [7:0]wstrb;
  input wvalid;
  output wready;
  output [1:0]bresp;
  output bvalid;
  input bready;
endmodule
