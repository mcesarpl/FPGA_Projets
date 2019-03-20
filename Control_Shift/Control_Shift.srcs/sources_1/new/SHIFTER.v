`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 17:03:39
// Design Name: 
// Module Name: SHIFTER
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


module SHIFTER(
    input [7:0] INPUT,
    input [1:0] CNT,
    output [15:0] RESULT
);
    
reg [15:0] result;
assign RESULT = result;

always @(INPUT, CNT)
begin
    case (CNT)
        2'b00: begin
            result[15:8] = 8'h00;
            result[7:0] = INPUT;
            end
        2'b01: begin
            result[15:12] = 4'h0;
            result[11:4] = INPUT;
            result[3:0] = 4'h0;
            end
        2'b10: begin
            result[15:8] = INPUT;
            result[7:0] = 8'h00;
            end
        2'b11: begin
            result[15:8] = 8'h00;
            result[7:0] = INPUT;
            end    
    endcase
end
endmodule
