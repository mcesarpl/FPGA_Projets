`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2019 13:46:30
// Design Name: 
// Module Name: add_16bit
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


module add_16bit(
    input [15:0] a,
    input [15:0] b,
    output [15:0] out
    );
    
    assign out = a + b;
    
endmodule
