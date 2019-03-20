`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 13:45:07
// Design Name: 
// Module Name: MUX4
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


module MUX4(
    input [3:0] a,
    input [3:0] b,
    input sel,
    output [3:0] y
    );
    
reg [3:0] y1, a1, b1;
    
always @(a or b or sel)
begin
    if(sel==0)begin
        y1 = a;
    end
    else begin
        if(sel==1)begin
            y1 = b;
        end
        else begin
            y1 = 4'h0;
        end
    end    
end

assign y = y1;

endmodule
