`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 03:43:02 PM
// Design Name: 
// Module Name: Habilitador
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


module Habilitador(
input clk, 
output [3:0]out
    );
    reg [26:0]count = 0;
    reg [0:1]mov =0;
    reg [0:3]mov2 =7;
   always@(posedge clk)
  begin
   count = count+1;
   if(count == 100000)
   begin
   mov= mov+1;
   count = 0;
   end
   end
   
   always@(mov)
   begin
   case(mov)
   2'b00 : mov2<= 7;
    2'b01 : mov2<= 11;
  2'b10 : mov2<= 13;
    2'b11 : mov2<= 14;
 
default : mov2 <= 7;
  endcase
  end
 
  
    assign out = mov2;
endmodule
