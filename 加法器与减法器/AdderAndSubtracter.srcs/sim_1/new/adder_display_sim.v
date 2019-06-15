`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 23:31:00
// Design Name: 
// Module Name: adder_display_sim
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


module adder_display_sim();
reg[3:0] num1,num2;
wire[7:0] outID;
wire[7:0] out;
reg clk=0;
AdderDisplay test1(.num1(num1),.num2(num2),.outID(outID),.out(out),.clk(clk));
always
begin
#10 clk= ~clk;
end
initial
begin
  num1 = 3;
  num2 = 2;
  #50
  num1 = 1;
  num2 = 5;
end
endmodule
