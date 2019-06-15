`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 13:05:03
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(w0,w1,w2,w3,s0,s1,f);
input [2:0] w0;
input [2:0] w1;
input [2:0] w2;
input [2:0] w3;
input s0;
input s1;
output[2:0]  f;
reg[2:0] f;
 always@(s0 or s1)
 begin
   if(~s0)
    begin
     if(~s1)
      f=w0;
      else
      f=w1;
    end
    else
    begin
    if(~s1)
    f=w2;
    else
    f=w3;
    end
    
 end
endmodule
