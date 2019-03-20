`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 14:02:33
// Design Name: 
// Module Name: MUX4_tb
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


module MUX4_tb;

reg [3:0] a, b;
reg sel;
wire [3:0] y;

MUX4 mux(
.a(a),
.b(b),
.sel(sel),
.y(y)
);

initial
begin
a = 4'ha;
b = 4'hb;
sel = 0;
#100;
sel = 1;
#100;

a = 4'hc;
b = 4'hd;
sel = 0;
#100;
sel = 1;
#100;

a = 4'he;
b = 4'hf;
sel = 0;
#100;
sel = 1;
#100;

a = 4'h0;
b = 4'h1;
sel = 0;
#100;
sel = 1;
#100;

a = 4'h2;
b = 4'h3;
sel = 0;
#100;
sel = 1;
#100;

a = 4'h4;
b = 4'h5;
sel = 0;
#100;
sel = 1;
#100;

end

endmodule
