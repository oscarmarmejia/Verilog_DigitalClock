`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 02:53:16 PM
// Design Name: 
// Module Name: Temp
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


module Temp(
input pulse, minplus, hrplus,
output [3:0] min, min2, hr1, hr2, plustest
    );
  reg [6:0]seg= 0;
  reg [3:0]interiorMin = 0;
  reg [3:0]interiorMinDos = 0;
  reg [3:0]interiorHour = 1;
  reg [3:0]interiorHourDos = 0;
    reg [3:0]addmin = 0;
  reg flag= 0;
  reg flagdos= 0;
  reg mintest = 0;
  reg flag3=0;
  

  always@(posedge pulse )
  begin 
  seg = seg+1;
  if (seg == 60)
  begin 
 seg  <=0;
  flag <=1;
  end
else 
begin 
flag <=0;
end
  end



   always@(posedge flag || minplus)
  begin
  interiorMin <= interiorMin +1;
  if(interiorMin == 9)
  begin
interiorMin <= 0;
  interiorMinDos <= interiorMinDos +1;
  end  
  if(interiorMinDos == 5 && interiorMin == 9 )
  begin
interiorMinDos <= 0; 
interiorMin <=0;
interiorHour = interiorHour +1;
end
if (hrplus ==1)
begin
interiorHour = interiorHour +1;
end
 if(interiorHour == 10 )
  begin
interiorHour<= 0;
  interiorHourDos <= interiorHourDos +1;
  end 
 if(interiorHourDos == 1 &  interiorHour == 3)
  begin
interiorHour<= 1;
interiorHourDos<= 0;
  
  end 
 end


 
 

  assign min = interiorMin; 
assign min2 = interiorMinDos; 
  assign hr1 = interiorHour; 
assign hr2 = interiorHourDos; 
assign  plustest = mintest; 

    
    
endmodule

