`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 12:25:36
// Design Name: 
// Module Name: Full_Adder_Sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder_Sim();
reg a,b,cb;
wire s,cf;
 FullAdder fulladder(.a(a),.b(b),.cb(cb),.s(s),.cf(cf));
 initial
 begin
 a = 0;
 b = 0;
 cb = 0;
 #50
 a = 0;
 b = 1;
 cb =0;
 #50
 a = 1;
 b = 0;
 cb = 0;
 #50
 a = 1;
 b = 1;
 cb = 0;
 #50
 a = 1;
 b = 0;
 cb = 1;
 #50
 a = 1;
 b = 1;
 cb = 1;
 end
endmodule
