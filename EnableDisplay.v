`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 12:31:48 PM
// Design Name: 
// Module Name: EnableDisplay
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


module EnableDisplay(
input [3:0]out, 
input [6:0]seg1, seg2, seg3, seg4,
output [6:0]Display
    );
    reg [6:0]Interior= 7'b0110000;
     always@(out)
   begin
   case(out)
 14 : Interior<= seg3; //2
    13: Interior<= seg2 ; //3
11 : Interior<= seg1;  //4
   7 : Interior<= seg4; // 1  
   

   
    default : Interior <= 7'b0110000;
    endcase
   end
    
    assign Display = Interior;
endmodule
