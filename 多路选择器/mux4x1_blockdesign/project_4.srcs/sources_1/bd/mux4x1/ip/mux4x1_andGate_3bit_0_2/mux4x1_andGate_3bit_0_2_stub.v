// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 26 00:56:46 2019
// Host        : DESKTOP-A2GTVID running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mux4x1_andGate_3bit_0_2 -prefix
//               mux4x1_andGate_3bit_0_2_ mux4x1_andGate_3bit_0_0_stub.v
// Design      : mux4x1_andGate_3bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "andGate_3bit,Vivado 2018.3" *)
module mux4x1_andGate_3bit_0_2(a, b, c, d)
/* synthesis syn_black_box black_box_pad_pin="a[2:0],b[2:0],c[2:0],d[2:0]" */;
  input [2:0]a;
  input [2:0]b;
  input [2:0]c;
  output [2:0]d;
endmodule
