`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/05 19:58:31
// Design Name: 
// Module Name: lift
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


module lift(r,led,clk,floor_decode,outID,delay,isup,isdown,running,slow_clock);
input[4:0] r;
output [4:0] led;
output[7:0] floor_decode;
input clk;
reg direction = 0;
reg flag;
output isup;
output isdown;
output running;
reg [4:0] request;
reg [4:0] r_list;
reg[2:0] currentstate = 0;
reg[4:0] temp_r;
integer i;
//reg[4:0] led;
reg delay;
reg slow_clock=1;
reg[1:0] load_count=0;
reg[30:0] counter=0;
reg default_work;
output delay;
output[7:0] outID;
assign running = ~delay ;
assign isup = ~direction;
assign isdown = direction;
output slow_clock;
assign led = r_list;
always@(posedge clk)
begin
   if(counter==1000)
        counter = 0;
   if(counter<500)
          slow_clock = 1;
   else 
         slow_clock = 0;
         counter = counter +1;
end

always@(r)
begin
     default_work = 0;
     case(r)
     5'b00001:temp_r = 5'b00001;
     5'b00010:temp_r = 5'b00010;
     5'b00100:temp_r = 5'b00100;
     5'b01000:temp_r = 5'b01000;
     5'b10000:temp_r = 5'b10000;
     default:
         default_work = 1;
     endcase 
    // flag = 0;
     if(r)
     begin
     
      for(i=4;i>=0;i=i-1)
        if(i<=currentstate)
        begin
          if(r[i])
            flag = 0;
        end
        
       for(i=0;i<=4;i=i+1)
         if(i>=currentstate)
         begin
           if(r[i])
              flag = 1;
         end
         
       end
       
     if(flag)
     direction = 0;  // up
     else 
     direction = 1;  // down 
end
always@(posedge slow_clock)
begin
    delay = 0;
    if(r_list[currentstate])
       delay = 1;
    if(!r_list)
       delay = 1;
    if(!delay &&  r_list )
    begin
       if(!direction&&currentstate<4)
             currentstate = currentstate +1;
       else if(currentstate>0) 
             currentstate = currentstate -1 ;
     end
end

always@(posedge clk)
begin
   if(!default_work)
   begin
    for(i=0;i<=4;i = i+1)
      begin
       if(temp_r[i])
          r_list[i] = 1;
      end
    end 
    r_list[currentstate]  = 0;
  
end
driveDigit drivedigit(.in(currentstate[2:0]+1),.out(floor_decode),.outID(outID));

endmodule

