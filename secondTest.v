`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2022 12:01:42 AM
// Design Name: 
// Module Name: secondTest
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


module secondTest(

input clk, 
output ledtest, pulse
    );
    
    reg [7:0] pwm=0;
    reg[28:0] count=0;
    
    reg pwmm;
    reg flag = 0;
    
    always @(posedge clk)
    begin
    
      count <= count+3;
      
      
      if(0 <   count && count <5_000_000)
     begin
      pwmm <= (pwm < 2)? 1:0;
      end 
      else if(20_000_001 <   count && count <10_000_000)
          begin
      pwmm <= (pwm < 4)? 1:0;
      end 
        else if(10_000_001 <   count && count <15_000_000)
          begin
      pwmm <= (pwm < 6)? 1:0;
      end 
            else if(15_000_001 <   count && count <20_000_000)
          begin
      pwmm <= (pwm < 8)? 1:0;
      end 
            else if(20_000_001 <   count && count <25_000_000)
          begin
      pwmm <= (pwm < 10)? 1:0;
      end 
          else if(25_000_001 <   count && count <30_000_000)
          begin
      pwmm <= (pwm < 12)? 1:0;
      end 
          else if(30_000_001 <   count && count <35_000_000)
          begin
      pwmm <= (pwm < 15)? 1:0;
      end 
          else if(35_000_001 <   count && count <40_000_000)
          begin
      pwmm <= (pwm < 17)? 1:0;
      end 
          else if(40_000_001 <   count && count <45_000_000)
          begin
      pwmm <= (pwm < 20)? 1:0;
      end 
          else if(45_000_001 <   count && count <50_000_000)
          begin
      pwmm <= (pwm < 23)? 1:0;
      end 
          else if(50_000_001 <   count && count <55_000_000)
          begin
      pwmm <= (pwm < 25)? 1:0;
      end 
          else if(55_000_001 <   count && count <60_000_000)
          begin
      pwmm <= (pwm < 35)? 1:0;
      end 
          else if(60_000_001 <   count && count <65_000_000)
          begin
      pwmm <= (pwm < 45)? 1:0;
      end 
          else if(65_000_001 <   count && count <70_000_000)
          begin
      pwmm <= (pwm < 55)? 1:0;
      end 
          else if(70_000_001 <   count && count <75_000_000)
          begin
      pwmm <= (pwm < 65)? 1:0;
      end 
          else if(75_000_001 <   count && count <80_000_000)
          begin
      pwmm <= (pwm < 75)? 1:0;
      end 
          else if(80_000_001 <   count && count <85_000_000)
          begin
      pwmm <= (pwm < 85)? 1:0;
      end 
          else if(85_000_001 <   count && count <90_000_000)
          begin
      pwmm <= (pwm < 95)? 1:0;
      end 
          else if(90_000_001 <   count && count <95_000_000)
          begin
      pwmm <= (pwm < 99)? 1:0;
      end 
          else if(95_000_001 <   count && count <100_000_000)
          begin
      pwmm <= (pwm < 99)? 1:0;
      end 
          else if(100_000_001 <   count && count <105_000_000)
          begin
      pwmm <= (pwm < 95)? 1:0;
      end 
          else if(105_000_001 <   count && count <110_000_000)
          begin
      pwmm <= (pwm < 85)? 1:0;
      end 
          else if(110_000_001 <   count && count <115_000_000)
          begin
      pwmm <= (pwm < 75)? 1:0;
      end 
          else if(115_000_001 <   count && count <120_000_000)
          begin
      pwmm <= (pwm < 65)? 1:0;
      end 
          else if(120_000_001 <   count && count <125_000_000)
          begin
      pwmm <= (pwm < 55)? 1:0;
      end
           else if(125_000_001 <   count && count <130_000_000)
          begin
      pwmm <= (pwm < 45)? 1:0;
      end 
          else if(130_000_001 <   count && count <135_000_000)
          begin
      pwmm <= (pwm < 35)? 1:0;
      end 
          else if(135_000_001 <   count && count <140_000_000)
          begin
      pwmm <= (pwm < 25)? 1:0;
      end 
          else if(140_000_001 <   count && count <145_000_000)
          begin
      pwmm <= (pwm < 22)? 1:0;
      end     
      else if(145_000_001 <   count && count <150_000_000)
          begin
      pwmm <= (pwm < 20)? 1:0;
      end 
          else if(150_000_001 <   count && count <155_000_000)
          begin
      pwmm <= (pwm < 17)? 1:0;
      end
           else if(155_000_001 <   count && count <160_000_000)
          begin
      pwmm <= (pwm < 15)? 1:0;
      end    
       else if(160_000_001 <   count && count <165_000_000)
          begin
      pwmm <= (pwm < 13)? 1:0;
      end     else if(165_000_001 <   count && count <170_000_000)
          begin
      pwmm <= (pwm < 10)? 1:0;
      end     else if(170_000_001 <   count && count <175_000_000)
          begin
      pwmm <= (pwm < 7)? 1:0;
      end     else if(175_000_001 <   count && count <180_000_000)
          begin
      pwmm <= (pwm < 5)? 1:0;
      end     else if(180_000_001 <   count && count <185_000_000)
          begin
      pwmm <= (pwm < 4)? 1:0;
      end     else if(185_000_001 <   count && count <190_000_000)
          begin
      pwmm <= (pwm < 2)? 1:0;
      end 
          else if(190_000_001 <   count && count <195_000_000)
          begin
      pwmm <= (pwm < 1)? 1:0;
      end 
      else
      begin
      pwmm <= 0;
      end

    if(count == 300_000_000 )
    begin
    count <= 0;
    flag <= 1;
    end
    else 
    begin
     flag <= 0;
    end 
    if(pwm < 100) pwm <= pwm+1;
    else pwm <= 0;
    end
    assign ledtest=pwmm;
   assign pulse = flag;
endmodule