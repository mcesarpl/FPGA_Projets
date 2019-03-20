`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 22:57:55
// Design Name: 
// Module Name: REG_tb
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


module REG_tb;

reg [15:0]in_reg;
reg clk, clr, clken;
wire [15:0] out_reg;

REG reg1(
.clk(clk),
.clr(clr),
.clken(clken),
.in_reg(in_reg),
.out_reg(out_reg)
);

initial
begin
    clk = 1'b0;
    #50;
    clk = 1'b1;
    #50;
    clk = 1'b0;
    #50;
    clk = 1'b1;
    #50;
    clk = 1'b0;
    #50
    clk = 1'b1;
    #50;
    clk = 1'b0;
    #50
    clk = 1'b1;
    #50;
    clk = 1'b0;
    #50
    clk = 1'b1;
end

initial
begin
    clr = 1'b0;
    #50;
    clr = 1'b1;
end

initial
begin
    clken = 1'b1;
    #200;
    clken = 1'b0;
end

initial
begin
    in_reg = 16'h1111;
    #100;
    in_reg = 16'h1010;
    #100;
    in_reg  = 16'h0101;
end

endmodule
