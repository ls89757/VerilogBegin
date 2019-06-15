//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue May 28 11:28:10 2019
//Host        : DESKTOP-Q4VSV1P running 64-bit major release  (build 9200)
//Command     : generate_target mux4x1_wrapper.bd
//Design      : mux4x1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux4x1_wrapper
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

  wire S0;
  wire S1;
  wire [2:0]W0;
  wire [2:0]W1;
  wire [2:0]W2;
  wire [2:0]W3;
  wire [2:0]f;

  mux4x1 mux4x1_i
       (.S0(S0),
        .S1(S1),
        .W0(W0),
        .W1(W1),
        .W2(W2),
        .W3(W3),
        .f(f));
endmodule
