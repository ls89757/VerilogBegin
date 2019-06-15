module SequenceChecker(clk,rst,a,z);
input clk;
input rst;
input a;
output z;
reg z;
reg[3:0] currentstate=0,nextstate=0;
parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;
always@(posedge clk or negedge rst)
begin 
  if(!rst)
    currentstate = S0;
  else
    currentstate =nextstate;
end
always@(currentstate or rst or a)
begin 
  if(!rst)
    nextstate = S0;
  else
    case(currentstate)
    S0: nextstate = (a==1)?S1:S0;
    S1: nextstate = (a==0)?S2:S1;
    S2: nextstate = (a==1)?S3:S0;
    S3: nextstate = (a==1)?S4:S2;
    S4: nextstate = (a==0)?S2:S1;
    default:nextstate = S0;
    endcase
end
always@(currentstate or rst)
begin 
  if(!rst)
      z=0;
  else 
      case(currentstate)
         S0:z=0;
         S1:z=0;
         S2:z=0;
         S3:z=0;
         S4:z=1;
         default:z=0;
       endcase
 end
endmodule