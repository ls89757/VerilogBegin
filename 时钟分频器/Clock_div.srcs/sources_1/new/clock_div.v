`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 09:47:54
// Design Name: 
// Module Name: clock_div
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


module clock_div(clk,outclk);
input clk;
output outclk;
reg outclk=0;
reg [31:0] counter=1;
always@(posedge clk)
begin
   if(counter==200000000)
      counter=1;
   else
   begin
      if(counter>100000000)
        outclk = 1;  
      else
        outclk = 0;
       counter = counter+1;
   end
end
endmodule
