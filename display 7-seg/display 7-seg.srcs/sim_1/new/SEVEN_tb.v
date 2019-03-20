`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 15:59:15
// Design Name: 
// Module Name: SEVEN_tb
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


module SEVEN_tb;

reg [3:0] INPUT;
wire a, b, c, d, e, f, g;

SEVEN display(
.INPUT(INPUT),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g)
);

initial
begin
    INPUT = 3'b000;
    #100;
    
    INPUT = 3'b001;
    #100;
    
    INPUT = 3'b010;
    #100;
    
    INPUT = 3'b011;
    #100;
    
    INPUT = 3'b100;
    #100;
    
    INPUT = 3'b101;
    #100;
    
    INPUT = 3'b110;
    #100;
    
    INPUT = 3'b111;
    #100;    
    
end
endmodule
