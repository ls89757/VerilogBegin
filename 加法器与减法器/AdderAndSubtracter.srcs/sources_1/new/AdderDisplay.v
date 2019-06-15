`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 14:48:12
// Design Name: 
// Module Name: AdderDisplay
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


module AdderDisplay(num1,num2,outID,out,clk,overflow);
input[3:0] num1,num2;
wire[7:0] sum;
output[7:0] outID;
output[7:0] out;
output overflow;
input clk;
reg[2:0] ID1,ID2,sumID;
reg[3:0] in;
reg[2:0] ID;
reg[1:0] pos=0;
reg [11:0]count=0;
always@(posedge clk)
begin
    count=count+1;
    if(count[11]==1)
    begin
     case(pos)
    0: begin ID=0;in=num1;pos=pos+1; end
    1: begin ID=2;in=num2;pos=pos+1; end
    2: begin ID=4;in=sum; pos=0;   end
    endcase 
   count=0;
    end
 
// if(pos==0)
// begin
//    ID = 7;
//    in = num1;
//    pos = pos +1;
// end
// if(pos==1)
// begin
//    ID =5;
//    in = num2;
//    pos = pos+1;
// end
// if(pos==2)
// begin
//   ID = 0;
//   in = sum;
//   pos = 0;
//   end
end
Adder4bit adder(.num1(num1),.num2(num2),.sum(sum),.overflow(overflow));
DriveDigitDisplay driveNum(.in(in),.ID(ID),.outID(outID),.out(out));
endmodule
