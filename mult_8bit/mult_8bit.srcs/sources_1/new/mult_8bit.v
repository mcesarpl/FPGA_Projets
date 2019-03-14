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
    
reg [7:0] a_out;
reg [15:0] z, y;
wire [15:0] add1_out, shift1_out, mux1_out, in_out;
wire [15:0] add2_out, shift2_out, mux2_out;
wire [15:0] add3_out, shift3_out, mux3_out;
wire [15:0] add4_out, shift4_out, mux4_out;
wire [15:0] add5_out, shift5_out, mux5_out;
wire [15:0] add6_out, shift6_out, mux6_out;
wire [15:0] add7_out, shift7_out, mux7_out;
wire [15:0] add8_out, mux8_out;

//in convert 8 bit to 16 bit
in in1(
    .in(b),
    .out(in_out)
    );

always@(a or b)
begin
    //#200;
    //y = 16'h0004;
    assign a_out = a;
    assign y = in_out; 
    z <= 16'h0000;
end
   
//cell 1

add_16bit add1(
    .a(y),
    .b(z),
    .out(add1_out)
    );
    
mux_16bit mux1(
    .a(z),
    .b(add1_out),
    .select(a_out[0]),
    .out(mux1_out)
    );


shift_16bit shift1(
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
    .select(a_out[1]),
    .out(mux2_out)
    );


shift_16bit shift2(
    .in(shift1_out),
    .out(shift2_out)
    );
    
 //cell 3
 
 add_16bit add3(
     .a(mux2_out),
     .b(shift2_out),
     .out(add3_out)
     );
     
 mux_16bit mux3(
     .a(mux2_out),
     .b(add3_out),
     .select(a_out[2]),
     .out(mux3_out)
     );
 
 
 shift_16bit shift3(
     .in(shift2_out),
     .out(shift3_out)
     );


//cell 4

add_16bit add4(
    .a(mux3_out),
    .b(shift3_out),
    .out(add4_out)
    );
    
mux_16bit mux4(
    .a(mux3_out),
    .b(add4_out),
    .select(a_out[3]),
    .out(mux4_out)
    );


shift_16bit shift4(
    .in(shift3_out),
    .out(shift4_out)
    );

//cell 5

add_16bit add5(
    .a(mux4_out),
    .b(shift4_out),
    .out(add5_out)
    );
    
mux_16bit mux5(
    .a(mux4_out),
    .b(add5_out),
    .select(a_out[4]),
    .out(mux5_out)
    );


shift_16bit shift5(
    .in(shift4_out),
    .out(shift5_out)
    );
    
//cell 6

add_16bit add6(
    .a(mux5_out),
    .b(shift5_out),
    .out(add6_out)
    );
    
mux_16bit mux6(
    .a(mux5_out),
    .b(add6_out),
    .select(a_out[5]),
    .out(mux6_out)
    );


shift_16bit shift6(
    .in(shift5_out),
    .out(shift6_out)
    );

//cell 7

add_16bit add7(
    .a(mux6_out),
    .b(shift6_out),
    .out(add7_out)
    );
    
mux_16bit mux7(
    .a(mux6_out),
    .b(add7_out),
    .select(a_out[6]),
    .out(mux7_out)
    );


shift_16bit shift7(
    .in(shift6_out),
    .out(shift7_out)
    );

//cell 8

add_16bit add8(
    .a(mux7_out),
    .b(shift7_out),
    .out(add8_out)
    );
    
mux_16bit mux8(
    .a(mux7_out),
    .b(add8_out),
    .select(a_out[7]),
    .out(mux8_out)
    );
    
 assign out = mux8_out;
    
endmodule