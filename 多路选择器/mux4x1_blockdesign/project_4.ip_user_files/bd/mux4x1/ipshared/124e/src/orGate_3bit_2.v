`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/26 00:44:07
// Design Name: 
// Module Name: orGate_3bit_2
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


module orGate_3bit_2(a,b,c,d,e);
input[2:0] a,b,c,d;
output[2:0] e;
assign e = a|b|c|d;
endmodule
