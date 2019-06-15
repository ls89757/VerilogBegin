`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 12:13:07
// Design Name: 
// Module Name: Half_Adder_Sim
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


module Half_Adder_Sim();
reg a,b;
wire s,c;
HalfAdd test(.a(a),.b(b),.s(s),.c(c));
initial
begin
 a = 1;
 b = 1;
 #50
 a = 1;
 b = 0;
 #50 
 a = 0;
 b = 1;
 #50
 a = 0;
 b = 0;
end
endmodule
