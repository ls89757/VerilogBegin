`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/10 10:46:53
// Design Name: 
// Module Name: AS_sim
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


module AS_sim();
reg[3:0] num1,num2;
reg clk;
reg flag;
wire symbol;
wire overflow;
wire[7:0] outID;
wire[7:0] out;
AdderSubtracterDisplay as(.num1(num1),.num2(num2),.clk(clk),.overflow(overflow),.symbol(symbol),.flag(flag),.outID(outID),.out(out));
initial
begin
 clk = 0;
 flag = 0;
 num1 = 5;
 num2 = 6;
 #5000
 flag = 0;
 num1 = 10;
 num2 = 1;
 #5000
 flag = 0;
 num1 = 12;
 num2 = 10;
 #5000
 flag = 1;
 num1 = 5;
 num2 = 2;
 #5000
 flag = 1;
 num1 = 5;
 num2 = 8;
end
always
begin
 #5 clk = ~clk;
end
endmodule
