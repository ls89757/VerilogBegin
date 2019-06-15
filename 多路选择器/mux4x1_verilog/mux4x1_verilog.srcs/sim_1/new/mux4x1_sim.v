`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 13:15:51
// Design Name: 
// Module Name: mux4x1_sim
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


module mux4x1_sim( );
reg[2:0] w0,w1,w2,w3;
reg s0,s1;
wire[2:0] f;
mux4x1 test(.s1(s1),.s0(s0),.w0(w0),.w1(w1),.w2(w2),.w3(w3),.f(f));
initial
begin
  w0=3'b000;
  w1=3'b001;
  w2=3'b010;
  w3=3'b011;
  #100 s0=0; s1=0;
  #100 s0=0; s1=1;
  #100 s0=1; s1=0;
  #100 s0=1; s1=1;
end
endmodule
