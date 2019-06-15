`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 22:37:19
// Design Name: 
// Module Name: andGate_3bit
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

module andGate_3bit(a,b,c,d);
input[2:0] a;
input[2:0] b;
input[2:0] c;
 output [2:0] d;
//always @(a or b or c)
//  d=a&b&c;
//input[2:0] a;
//input[2:0] b;
//output[2:0] d;
 assign  d=a&b&c;

endmodule
