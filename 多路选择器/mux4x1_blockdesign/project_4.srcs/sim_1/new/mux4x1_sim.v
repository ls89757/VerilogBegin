`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 01:08:55
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


module mux4x1_sim();
reg[2:0] W0,W1,W2,W3;
reg S0,S1;
wire[2:0] f;
mux4x1 test(.S1(S1),.S0(S0),.W0(W0),.W1(W1),.W2(W2),.W3(W3),.f(f));
initial
begin
  W0=3'b000;
  W1=3'b001;
  W2=3'b010;
  W3=3'b011;
  #100 S0=0; S1=0;
  #100 S0=1; S1=0;
  #100 S0=0; S1=1;
  #100 S0=1; S1=1;
end
endmodule
