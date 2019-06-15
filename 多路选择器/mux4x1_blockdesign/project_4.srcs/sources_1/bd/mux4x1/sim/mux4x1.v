//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue May 28 11:28:10 2019
//Host        : DESKTOP-Q4VSV1P running 64-bit major release  (build 9200)
//Command     : generate_target mux4x1.bd
//Design      : mux4x1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mux4x1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mux4x1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mux4x1.hwdef" *) 
module mux4x1
   (S0,
    S1,
    W0,
    W1,
    W2,
    W3,
    f);
  input S0;
  input S1;
  input [2:0]W0;
  input [2:0]W1;
  input [2:0]W2;
  input [2:0]W3;
  output [2:0]f;

  wire S0_1;
  wire S1_1;
  wire [2:0]W0_1;
  wire [2:0]W1_1;
  wire [2:0]W2_1;
  wire [2:0]W3_1;
  wire [2:0]andGate_3bit_0_d;
  wire [2:0]andGate_3bit_1_d;
  wire [2:0]andGate_3bit_2_d;
  wire [2:0]andGate_3bit_3_d;
  wire [2:0]notGate_3bit_0_b;
  wire [2:0]notGate_3bit_1_b;
  wire [2:0]orGate_3bit_2_0_e;

  assign S0_1 = S0;
  assign S1_1 = S1;
  assign W0_1 = W0[2:0];
  assign W1_1 = W1[2:0];
  assign W2_1 = W2[2:0];
  assign W3_1 = W3[2:0];
  assign f[2:0] = orGate_3bit_2_0_e;
  mux4x1_andGate_3bit_0_0 andGate_3bit_0
       (.a(notGate_3bit_0_b),
        .b(W0_1),
        .c(notGate_3bit_1_b),
        .d(andGate_3bit_0_d));
  mux4x1_andGate_3bit_0_1 andGate_3bit_1
       (.a({S0_1,S0_1,S0_1}),
        .b(W1_1),
        .c(notGate_3bit_1_b),
        .d(andGate_3bit_1_d));
  mux4x1_andGate_3bit_0_2 andGate_3bit_2
       (.a(notGate_3bit_0_b),
        .b(W2_1),
        .c({S1_1,S1_1,S1_1}),
        .d(andGate_3bit_2_d));
  mux4x1_andGate_3bit_0_3 andGate_3bit_3
       (.a({S0_1,S0_1,S0_1}),
        .b(W3_1),
        .c({S1_1,S1_1,S1_1}),
        .d(andGate_3bit_3_d));
  mux4x1_notGate_3bit_0_0 notGate_3bit_0
       (.a({S0_1,S0_1,S0_1}),
        .b(notGate_3bit_0_b));
  mux4x1_notGate_3bit_0_1 notGate_3bit_1
       (.a({S1_1,S1_1,S1_1}),
        .b(notGate_3bit_1_b));
  mux4x1_orGate_3bit_2_0_0 orGate_3bit_2_0
       (.a(andGate_3bit_0_d),
        .b(andGate_3bit_1_d),
        .c(andGate_3bit_2_d),
        .d(andGate_3bit_3_d),
        .e(orGate_3bit_2_0_e));
endmodule
