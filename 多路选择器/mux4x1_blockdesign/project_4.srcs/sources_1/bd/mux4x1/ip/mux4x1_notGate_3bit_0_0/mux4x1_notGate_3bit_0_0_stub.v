// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 26 00:56:10 2019
// Host        : DESKTOP-A2GTVID running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/SCL_VERILOG/project_4/project_4.srcs/sources_1/bd/mux4x1/ip/mux4x1_notGate_3bit_0_0/mux4x1_notGate_3bit_0_0_stub.v
// Design      : mux4x1_notGate_3bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "notGate_3bit,Vivado 2018.3" *)
module mux4x1_notGate_3bit_0_0(a, b)
/* synthesis syn_black_box black_box_pad_pin="a[2:0],b[2:0]" */;
  input [2:0]a;
  output [2:0]b;
endmodule
