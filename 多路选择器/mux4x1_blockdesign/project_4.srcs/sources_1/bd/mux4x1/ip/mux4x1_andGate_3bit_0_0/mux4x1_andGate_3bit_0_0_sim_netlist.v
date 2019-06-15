// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 26 00:56:46 2019
// Host        : DESKTOP-A2GTVID running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/SCL_VERILOG/project_4/project_4.srcs/sources_1/bd/mux4x1/ip/mux4x1_andGate_3bit_0_0/mux4x1_andGate_3bit_0_0_sim_netlist.v
// Design      : mux4x1_andGate_3bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mux4x1_andGate_3bit_0_0,andGate_3bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "andGate_3bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mux4x1_andGate_3bit_0_0
   (a,
    b,
    c,
    d);
  input [2:0]a;
  input [2:0]b;
  input [2:0]c;
  output [2:0]d;

  wire [2:0]a;
  wire [2:0]b;
  wire [2:0]c;
  wire [2:0]d;

  mux4x1_andGate_3bit_0_0_andGate_3bit inst
       (.a(a),
        .b(b),
        .c(c),
        .d(d));
endmodule

(* ORIG_REF_NAME = "andGate_3bit" *) 
module mux4x1_andGate_3bit_0_0_andGate_3bit
   (d,
    a,
    b,
    c);
  output [2:0]d;
  input [2:0]a;
  input [2:0]b;
  input [2:0]c;

  wire [2:0]a;
  wire [2:0]b;
  wire [2:0]c;
  wire [2:0]d;

  LUT3 #(
    .INIT(8'h80)) 
    \d[0]_INST_0 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(c[0]),
        .O(d[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[1]_INST_0 
       (.I0(a[1]),
        .I1(b[1]),
        .I2(c[1]),
        .O(d[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \d[2]_INST_0 
       (.I0(a[2]),
        .I1(b[2]),
        .I2(c[2]),
        .O(d[2]));
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
