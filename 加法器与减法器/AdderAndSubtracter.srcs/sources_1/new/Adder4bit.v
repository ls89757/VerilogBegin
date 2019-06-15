`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 12:31:57
// Design Name: 
// Module Name: Adder4bit
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


module Adder4bit(num1,num2,sum,overflow);
input[3:0] num1,num2;
output[3:0] sum;
output overflow;
//wire s1_temp,s2_temp,s3_temp,s4_temp;
wire c1_temp,c2_temp,c3_temp;
 FullAdder adder1(.a(num1[0]),.b(num2[0]),.cb(0),.s(sum[0]),.cf(c1_temp));
 FullAdder adder2(.a(num1[1]),.b(num2[1]),.cb(c1_temp),.s(sum[1]),.cf(c2_temp));
 FullAdder adder3(.a(num1[2]),.b(num2[2]),.cb(c2_temp),.s(sum[2]),.cf(c3_temp));
 FullAdder adder4(.a(num1[3]),.b(num2[3]),.cb(c3_temp),.s(sum[3]),.cf(overflow));
 
endmodule
