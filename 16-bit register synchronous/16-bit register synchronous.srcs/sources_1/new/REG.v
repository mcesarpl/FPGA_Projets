`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 22:38:41
// Design Name: 
// Module Name: REG
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


module REG(
    input clk,
    input clr,
    input clken,
    input [15:0] in_reg,
    output [15:0] out_reg
    );

reg [15:00] register = 16'h0000;
    
always @(posedge clk)
begin
    if(clr==1'b1)
    begin
        if(clken==1'b0)begin
            register = in_reg;
        end
    end
    else begin
        if(clr==1'b0)
        begin
            register = 16'h0000;
        end
    end    
end

assign out_reg = register;
    
endmodule
