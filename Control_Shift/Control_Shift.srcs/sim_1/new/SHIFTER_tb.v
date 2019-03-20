`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 17:27:27
// Design Name: 
// Module Name: SHIFTER_tb
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


module SHIFTER_tb;

reg [7:0] INPUT;
reg [1:0] CNT;
wire [15:0] RESULT;

SHIFTER sht(
.INPUT(INPUT),
.CNT(CNT),
.RESULT(RESULT)
);

initial
begin
    INPUT = 8'h02;
    CNT = 2'b00;
    #100;
    CNT = 2'b01;
    #100;
    CNT = 2'b10;
    #100;
    CNT = 2'b11;
    #100;
    INPUT = 8'h04;
    CNT = 2'b00;
    #100;
    CNT = 2'b01;
    #100;
    CNT = 2'b10;
    #100;
    CNT = 2'b11;
    #100;
    
end

endmodule
