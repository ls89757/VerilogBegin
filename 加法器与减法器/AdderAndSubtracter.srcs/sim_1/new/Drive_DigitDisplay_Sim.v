`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 14:35:07
// Design Name: 
// Module Name: Drive_DigitDisplay_Sim
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


module Drive_DigitDisplay_Sim();
reg[3:0] in;
reg[2:0] ID;
wire[7:0] out;
wire[7:0] outID;
DriveDigitDisplay test(.in(in),.ID(ID),.out(out),.outID(outID));
initial
begin
 in = 3;
 ID = 0;
 #50
 in = 0;
 ID = 3;
 #50
 in = 1;
 ID = 5;
end
endmodule
