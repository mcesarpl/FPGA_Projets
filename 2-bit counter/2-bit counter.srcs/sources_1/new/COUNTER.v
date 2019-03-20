`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2019 00:08:16
// Design Name: 
// Module Name: COUNTER
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


module COUNTER(
    input clk,
    input clr,
    output [1:0] sum
);

reg [1:0] counter = 0;

always @(posedge clk)
begin
    if(clr==1'b0)
    begin
        counter = 0;
    end
    else begin
        if(clr==1'b1)
        begin
            counter = counter + 1;
        end
    end
end

assign sum = counter;

endmodule
