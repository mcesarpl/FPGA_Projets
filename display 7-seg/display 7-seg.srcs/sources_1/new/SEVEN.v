`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2019 15:03:01
// Design Name: 
// Module Name: SEVEN
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


module SEVEN(
    input [2:0] INPUT,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
);

reg a1, b1, c1, d1, e1, f1, g1;
assign a = a1, b = b1, c = c1, d = d1, e = e1, f = f1, g = g1;
    
always @(INPUT)
begin
    case(INPUT)
         3'b000 : begin
                    a1 = 1'b1;
                    b1 = 1'b1;
                    c1 = 1'b1;
                    d1 = 1'b1;
                    e1 = 1'b1;
                    f1 = 1'b1;
                    g1 = 1'b0;  
                  end
         3'b001 : begin
                    a1 = 1'b0;
                    b1 = 1'b1;
                    c1 = 1'b1;
                    d1 = 1'b0;
                    e1 = 1'b0;
                    f1 = 1'b0;
                    g1 = 1'b0;  
                  end
         3'b010 : begin
                    a1 = 1'b1;
                    b1 = 1'b1;
                    c1 = 1'b0;
                    d1 = 1'b1;
                    e1 = 1'b1;
                    f1 = 1'b0;
                    g1 = 1'b1;  
                  end
         3'b011 : begin
                    a1 = 1'b1;
                    b1 = 1'b1;
                    c1 = 1'b1;
                    d1 = 1'b1;
                    e1 = 1'b0;
                    f1 = 1'b0;
                    g1 = 1'b1;  
                  end
         3'b100 : begin
                    a1 = 1'b0;
                    b1 = 1'b1;
                    c1 = 1'b1;
                    d1 = 1'b0;
                    e1 = 1'b0;
                    f1 = 1'b1;
                    g1 = 1'b1;  
                  end
         3'b101 : begin
                    a1 = 1'b1;
                    b1 = 1'b0;
                    c1 = 1'b1;
                    d1 = 1'b1;
                    e1 = 1'b0;
                    f1 = 1'b1;
                    g1 = 1'b1;  
                  end
         3'b110 : begin
                    a1 = 1'b1;
                    b1 = 1'b0;
                    c1 = 1'b1;
                    d1 = 1'b1;
                    e1 = 1'b1;
                    f1 = 1'b1;
                    g1 = 1'b1;  
                  end
         3'b111 : begin
                    a1 = 1'b1;
                    b1 = 1'b1;
                    c1 = 1'b1;
                    d1 = 1'b0;
                    e1 = 1'b0;
                    f1 = 1'b0;
                    g1 = 1'b0;  
                  end
    endcase
end

endmodule
