`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2019 13:14:50
// Design Name: 
// Module Name: mux_16bit_tb
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


module mux_16bit_tb;

reg [15:0] a,b;
reg select;
wire [15:0] out;

mux_16bit m(
.a(a),
.b(b),
.select(select),
.out(out)
);

initial 
begin
 a = 16'hFFFF;
 b = 16'hAAAA;
 select = 0;
 #100;
 
 a = 16'hFFFF;
 b = 16'hAAAA;
 select = 1;
 #100;
 
 a = 16'hFFFF;
 b = 16'hAAAA;
 select = 0;
 #100;
 
 a = 16'hFFFF;
 b = 16'hAAAA;
 select = 1;
 #100;
 
end
endmodule
