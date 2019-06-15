`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 16:30:49
// Design Name: 
// Module Name: Top
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
module Top(indata,clk,led);
input[7:0] indata;
input clk;
output led;
reg init=0;
reg load;
reg enable;
reg rst;
wire currentdata;
always@(posedge clk)
begin
   if(!init)
   begin
     load = 1;
     enable = 0;
     rst = 1;
     init=1;
   end
   else
   begin
    load = 0;
    enable = 1;
   end
end
ShiftRegister shift(.clk(clk),.load(load),.enable(enable),.din(indata),.dout(currentdata));
SequenceChecker checker(.clk(clk),.rst(rst),.a(currentdata),.z(led));
endmodule
