`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 01:17:06 AM
// Design Name: 
// Module Name: top
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


module top(
input clk, 
input minplus, hrplus,
output [3:0]out,
output [6:0]Display,
output ledtest,
output plustest

    );
    
 secondTest(clk, ledtest, pulse);   
 Temp(pulse, minplus, hrplus,  min, min2, hr1, hr2, plustest);
 SevenSegDrive(min, min2, hr1, hr2,  seg, seg2, seg3, seg4);   
 Habilitador(clk, out);  
 EnableDisplay(out,seg, seg2, seg3, seg4, Display);
 wire [3:0]out, min, min2, hr1, hr2;
 wire [6:0]seg, seg2, seg3, seg4;
 wire pulse;
 
    
endmodule
