`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2019 00:14:18
// Design Name: 
// Module Name: COUNTER_tb
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


module COUNTER_tb;

reg clk, clr;
wire [1:0] sum;

COUNTER count(
.clk(clk),
.clr(clr),
.sum(sum)
);

initial
begin
    clk = 1'b0;
    #20;
    clk = 1'b1;
    #20;
    clk = 1'b0;
    #20;
    clk = 1'b1;
    #20;
    clk = 1'b0;
    #20;
    clk = 1'b1;
    #20;
    clk = 1'b0;
    #20;
    clk = 1'b1;
    #20;
    clk = 1'b0;
    #20;
    clk = 1'b1;

end

initial
begin
    clr = 1'b0;
    #40;
    clr = 1'b1;
end

endmodule
