`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 16:41:02
// Design Name: 
// Module Name: sc_test
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


module sc_test();
reg clk;
reg[7:0] indata;
wire led;
Top top(.clk(clk),.indata(indata),.led(led));
initial
begin
  indata = 8'b00001101;
  clk =1;
end

always
begin
   #10 clk = ~clk;
end
endmodule
