`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 10:07:18
// Design Name: 
// Module Name: clock_sim
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


module clock_sim();
reg clk=1;
wire outclk;
clock_div clock(.clk(clk),.outclk(outclk));

always
begin
  #10   clk = ~clk;
end

endmodule
