`timescale 1ns / 1ps
module neuron(
    input [3:0] X1,
    input [3:0] X2,
    input [3:0] X3,
    input [3:0] X4,
    input [3:0] W1,
    input [3:0] W2,
    input [3:0] W3,
    input [3:0] W4,
    output [9:0] Y
);
assign Y = (X1 * W1) +
           (X2 * W2) +
           (X3 * W3) +
           (X4 * W4);
endmodule
