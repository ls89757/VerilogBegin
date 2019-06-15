`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 14:14:25
// Design Name: 
// Module Name: DriveDigitDisplay
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

module DriveDigitDisplay(in,ID,outID,out);
input[3:0] in;
input[2:0] ID;
integer i;
output[7:0] outID;
reg[7:0] outID;
output[7:0] out;
reg[7:0] out;
always@(ID)
begin
outID=7'b1111111;
 for(i=0;i<=7;i=i+1)
   if(ID==i)
   outID[i]=0;
   // outID[i]=1;
   else
   // outID[i]=0;i
   outID[i]=1;
end
always@(in)
begin
  case(in)
//  4'b0000:out=8'b11111100;
//  4'b0001:out=8'b01100000;
//  4'b0010:out=8'b11011010;
//  4'b0011:out=8'b11110010;
//  4'b0100:out=8'b01100110;
//  4'b0101:out=8'b10110110;
//  4'b0110:out=8'b10111110;
//  4'b0111:out=8'b11100000;
//  4'b1000:out=8'b11111110;
//  4'b1001:out=8'b11110110;
//  default:out=8'b00000000;
    4'b0000:out=8'b00000011;
    4'b0001:out=8'b10011111;
    4'b0010:out=8'b00100101;
    4'b0011:out=8'b00001101;
    4'b0100:out=8'b10011001;
    4'b0101:out=8'b01001001;
    4'b0110:out=8'b01000001;
    4'b0111:out=8'b00011111;
    4'b1000:out=8'b00000001;
    4'b1001:out=8'b00001001;
    4'b1010:out=8'b11000101;
    4'b1011:out=8'b11000001;
    4'b1100:out=8'b11100101;
    4'b1101:out=8'b10000101;
    4'b1110:out=8'b01100001;
    4'b1111:out=8'b01110001;
    default:out=8'b11111111;
    
  endcase
end
endmodule

