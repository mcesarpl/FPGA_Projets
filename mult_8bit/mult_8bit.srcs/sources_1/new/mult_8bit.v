`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2019 22:52:28
// Design Name: 
// Module Name: mult_8bit
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


module mult_8bit(
    input [7:0] a,
    input [7:0] b,
    output [15:0] out
    );
genvar i;    
reg [15:0] x, y, z, r;

initial
begin
x = a>>8;
y = b>>8;
z = 16'h0000;
r = 16'h0000;
end

for(i=0; i<8; i = i + 1)
begin
add_16bit add(
.a(y),
.b(z),
.out(r)
);

mux_16bit(
.a(y),
.b(r),
.select(x[i]),
.out(z)
);

shift_16bit shift(
.in(y),
.out(y)
);

end

assign out = z;
    
endmodule
