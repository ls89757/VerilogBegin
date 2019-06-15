`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 12:44:09
// Design Name: 
// Module Name: Adder_Sim
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


module Adder_Sim();
reg[3:0] num1;
reg[3:0] num2;
wire[3:0] sum;
Adder4bit adder(.num1(num1),.num2(num2),.sum(sum));
initial
begin
 num1 = 4'b0000;
 num2 = 4'b0010;
 #50
 num1 = 4'b1000;
 num2 = 4'b0010;
 #50
 num1 = 4'b0111;
 num2 = 4'b0001;
 #50
 num1 = 4'b1111;
 num2 = 4'b0001;
 #50
 num1 = 4'b1111;
 num2 = 4'b0010;
end
endmodule
