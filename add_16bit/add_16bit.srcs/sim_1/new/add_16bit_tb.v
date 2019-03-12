`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2019 13:47:18
// Design Name: 
// Module Name: add_16bit_tb
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


module add_16bit_tb;

reg [15:0] a,b;
wire [15:0] out;

add_16bit add(
.a(a),
.b(b),
.out(out)
);

initial
begin
a = 16'b0;
b = 16'b1;
#100;

a = 16'b1;
b = 16'b0;
#100;

a = 16'b1;
b = 16'b1;
#100;

a = 16'b0;
b = 16'b0;
#100;

end
endmodule
