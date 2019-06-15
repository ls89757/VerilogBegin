`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/09 22:02:32
// Design Name: 
// Module Name: AdderSubtracterDisplay
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


module AdderSubtracterDisplay(num1,num2,flag,out,outID,clk,overflow,symbol);
input[3:0] num1,num2;
reg[3:0] sum=0;
input flag;
output[7:0] out;
output[7:0] outID;
input clk;
output overflow;
reg overflow;
reg[4:0] temp_num1,temp_num2;
wire temp_overflow;
wire[4:0] temp_sum;
reg[3:0] in;
output symbol;
reg symbol;
reg[2:0] ID;
reg[11:0] count=0;
reg[1:0] pos=0;
Adder5bit adder(.num1(temp_num1),.num2(temp_num2),.sum(temp_sum),.overflow(temp_overflow));
DriveDigitDisplay driveNumber(.in(in),.ID(ID),.outID(outID),.out(out));
always@(flag or num1 or num2)
begin
    if(!flag) // ->add
    begin
        temp_num1[4] = 0;
        temp_num1[3:0]= num1;
        temp_num2[4] = 0;
        temp_num2[3:0] = num2;
       
    end
    else  // ->subtract
    begin
        temp_num1[4] = 0;
        temp_num1[3:0] = num1;
        temp_num2[4] = 0;
        temp_num2[3:0] = num2;
        temp_num2 = ~temp_num2+1;
        
    end
end
always@(temp_sum)
begin
   if(!flag)
   begin
         sum = temp_sum[3:0];
        symbol = 0;
        if(temp_sum[4]) 
        begin
          overflow = 1;  
        end
        else 
        begin
          overflow = 0;
        end
   end
   else 
   begin
        if(temp_sum[4])  //sum is negative
        begin
            symbol = 1;
            sum = ~temp_sum[3:0]+1;
        end
        else        // sum is positive
        begin
            symbol = 0;
            sum = temp_sum[3:0];
        end
        overflow = 0;
   end
end
always@(posedge clk)
begin
  count= count+1;
  if(count[11]==1)
  begin
    case(pos)
       0: begin ID=0;in=num1;pos=pos+1;end
       1: begin ID=2;in=num2;pos=pos+1;end
       2: begin ID=7;in=sum; pos=0; end
    endcase
    count = 0; 
  end
end
endmodule
