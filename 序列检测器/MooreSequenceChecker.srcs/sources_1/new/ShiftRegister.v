`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 16:17:21
// Design Name: 
// Module Name: ShiftRegister
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


module ShiftRegister(clk,load,enable,din,dout);
input clk;
input load;
input enable;
input [7:0] din;
reg [7:0] data;
output dout;
reg dout;
integer i=0;
always@(posedge clk)
begin
  if(load)
      data =din;
  else if(enable)
       begin
       dout = data[i];
       i = i+1;
       end
end
endmodule
