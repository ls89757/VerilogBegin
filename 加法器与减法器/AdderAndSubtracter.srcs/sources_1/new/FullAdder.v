`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 12:18:33
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(a,b,cb,s,cf);
 // cb -> carry before 
 // cf -> carry after
input a,b,cb;
output s,cf;
 wire s_temp,c_temp,c_temp2;
 HalfAdd half1(.a(a),.b(b),.s(s_temp),.c(c_temp));
 HalfAdd half2(.a(cb),.b(s_temp),.s(s),.c(c_temp2));
 assign cf = c_temp|c_temp2;
endmodule
