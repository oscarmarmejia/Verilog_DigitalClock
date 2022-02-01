`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2022 03:09:28 PM
// Design Name: 
// Module Name: SevenSegDrive
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


module SevenSegDrive(
input [3:0]min, min2, hr1, hr2,
output [6:0]seg, seg2, seg3, seg4
    );
    reg [6:0]disp =7'b0110000;
    reg [6:0]disp2 =7'b0110000;
      reg [6:0]disp3 =7'b0110000;
    reg [6:0]disp4 =7'b0110000;
       always @(min)
    begin
    case(min)
    4'b0000: disp=7'b0000001; //active low logic here, this displays zero on the seven segment
    4'b0001: disp=7'b1001111; //"1"
    4'b0010: disp=7'b0010010;//"2"
           4'b0011: disp=7'b0000110;//3
               4'b0100: disp=7'b1001100;//4
                4'b0101: disp=7'b0100100;//5
                 4'b0110: disp=7'b0100000;//6
                  4'b0111: disp=7'b0001111;//7
                   4'b1000: disp=7'b0000000;//8
                    4'b1001: disp=7'b0001100;//9
       default : disp= 7'b0110000;
                    endcase
                    end
        always @(min2)
    begin
    case(min2)
    4'b0000: disp2 =7'b0000001; //active low logic here, this displays zero on the seven segment
    4'b0001: disp2 =7'b1001111; //"1"
    4'b0010: disp2 =7'b0010010;//"2"
           4'b0011: disp2 =7'b0000110;//3
               4'b0100: disp2 =7'b1001100;//4
                4'b0101: disp2 =7'b0100100;//5
                 4'b0110: disp2 =7'b0100000;//6
                       4'b0111: disp2 =7'b0001111;//7
                   4'b1000: disp2 =7'b0000000;//8
                    4'b1001: disp2 =7'b0001100;//9
  default : disp2= 7'b0110000;
                    endcase
                    end    
    
           always @(hr1)
    begin
    case(hr1)
    4'b0000: disp3=7'b0000001; //active low logic here, this displays zero on the seven segment
    4'b0001: disp3=7'b1001111; //"1"
    4'b0010: disp3=7'b0010010;//"2"
           4'b0011: disp3=7'b0000110;//3
               4'b0100: disp3=7'b1001100;//4
                4'b0101: disp3=7'b0100100;//5
                 4'b0110: disp3=7'b0100000;//6
                  4'b0111: disp3=7'b0001111;//7
                   4'b1000: disp3=7'b0000000;//8
                    4'b1001: disp3=7'b0001100;//9
       default : disp3= 7'b0110000;
                    endcase
                    end
    
              always @(hr2)
    begin
    case(hr2)
    4'b0000: disp4=7'b0000001; //active low logic here, this displays zero on the seven segment
    4'b0001: disp4=7'b1001111; //"1"
    4'b0010: disp4=7'b0010010;//"2"
           4'b0011: disp4=7'b0000110;//3
               4'b0100: disp4=7'b1001100;//4
                4'b0101: disp4=7'b0100100;//5
                 4'b0110: disp4=7'b0100000;//6
                  4'b0111: disp4=7'b0001111;//7
                   4'b1000: disp4=7'b0000000;//8
                    4'b1001: disp4=7'b0001100;//9
       default : disp4= 7'b0110000;
                    endcase
                    end
    
    assign seg = disp;
     assign seg2 = disp2;
        assign seg3 = disp3;
     assign seg4 = disp4;
    
endmodule
