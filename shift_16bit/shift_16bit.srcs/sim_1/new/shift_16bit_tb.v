`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2019 14:04:42
// Design Name: 
// Module Name: shift_16bit_tb
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


module shift_16bit_tb;

reg [15:0] in;
wire [15:0] out;

shift_16bit shift(
.in(in),
.out(out)
);

initial
begin

in = 16'b0000_0000_0000_0001;
#100;

in = 16'b0000_0000_0001_0000;
#100;

in = 16'b0000_0001_0000_0000;
#100;

in = 16'b0001_0000_0000_0000;
#100;

end

endmodule
