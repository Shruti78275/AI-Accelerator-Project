`timescale 1ns / 1ps
module mini_ai_accelerator(
    input [3:0] X1, X2, X3, X4,
    input [3:0] W1, W2, W3, W4,
    input [3:0] V1, V2, V3, V4,
    output [9:0] Y1,
    output [9:0] Y2
);
assign Y1 = (X1*W1) + (X2*W2) + (X3*W3) + (X4*W4);
assign Y2 = (X1*V1) + (X2*V2) + (X3*V3) + (X4*V4);
endmodule