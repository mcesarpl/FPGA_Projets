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
a = 16'd0;
b = 16'd1;
#100;

a = 16'd1;
b = 16'd0;
#100;

a = 16'd1;
b = 16'd1;
#100;

a = 16'd0;
b = 16'd0;
#100;

a = 16'h000a;
b = 16'h000b;
#100;

a = 16'h000c;
b = 16'h000d;
#100;

a = 16'h0fff;
b = 16'h0aaa;
#100;


a = 16'h0eee;
b = 16'h0147;
#100;
end
endmodule
