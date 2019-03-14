`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2019 13:12:58
// Design Name: 
// Module Name: mux_16bit
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


module mux_16bit(
    input [15:0] a,
    input [15:0] b,
    input select,
    output [15:0] out
    );
    
reg [15:0] out;
wire select;
wire [15:0] a,b;

always @(select or a)
begin
    case (select)
        0 : out = a;
        1 : out = b;
    endcase
end    
endmodule
