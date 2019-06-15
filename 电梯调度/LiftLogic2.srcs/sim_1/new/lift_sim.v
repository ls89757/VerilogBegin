`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 20:00:13
// Design Name: 
// Module Name: lift_sim
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


module lift_sim();
reg[4:0] r;
wire [4:0] led;
wire slow_clock;
reg clk;
wire[7:0] floor_decode;
wire delay;
wire running;
wire isup,isdown;
lift lift(.r(r),.led(led),.clk(clk),.floor_decode(floor_decode),.delay(delay),.running(running),.isup(isup),.isdown(isdown),.slow_clock(slow_clock));
initial 
begin
  
   clk = 1;
   #500 r = 5'b10000;
  #500 r=5'b00000;
end   
always
begin
    #10  clk =~clk;
end
endmodule
