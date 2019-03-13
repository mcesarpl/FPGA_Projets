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
    
//integer i;

//reg sel;    
reg [15:0] y, z;
wire [15:0] add1_out, shift1_out, mux1_out;
wire [15:0] add2_out, shift2_out, mux2_out;
wire [15:0] add8_out, shift8_out, mux8_out;

initial
begin
y = b>>8;
z = 16'h000;
end

//cell 1

add_16bit add1(
    .a(y),
    .b(z),
    .out(add1_out)
    );
    
mux_16bit mux1(
    .a(y),
    .b(add1_out),
    .select(a[0]),
    .out(mux1_out)
    );


shift_16bit shit1(
    .in(y),
    .out(shift1_out)
    );

//cell 2

add_16bit add2(
    .a(mux1_out),
    .b(shift1_out),
    .out(add2_out)
    );
    
mux_16bit mux2(
    .a(mux1_out),
    .b(add2_out),
    .select(a[1]),
    .out(mux2_out)
    );


shift_16bit shit2(
    .in(shift1_out),
    .out(shift2_out)
    );
   
assign out = mux8_out;
    
//initial
//begin
//y = b>>8;
//z = 16'h0000;

//    for (i=0; i<8; i = i + 1)
//    begin
//    sel = a[i];
//    z = z_out;
//    y = y_out;
//    end
    

//end
    
endmodule
