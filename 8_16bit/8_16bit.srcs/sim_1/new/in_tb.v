`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2019 00:41:31
// Design Name: 
// Module Name: in_tb
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


module in_tb;

reg [7:0] in;
wire [15:0] out;

in in_1(
.in(in),
.out(out)
);

initial
begin
in = 8'h00;
#100;

in = 8'h01;
#100;

in = 8'h10;
#100;

in = 8'h11;
#100;

in = 8'hB1;
#100;

in = 8'hAA;
#100;

in = 8'h7F;
#100;

in = 8'hFC;
#100;

end

endmodule
