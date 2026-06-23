`timescale 1ns / 1ps
module tb_neuron;
reg [3:0] X1, X2, X3, X4;
reg [3:0] W1, W2, W3, W4;
wire [9:0] Y;
neuron uut(
    .X1(X1),
    .X2(X2),
    .X3(X3),
    .X4(X4),
    .W1(W1),
    .W2(W2),
    .W3(W3),
    .W4(W4),
    .Y(Y)
);
initial begin
    // Test Case 1
    X1=2; X2=4; X3=1; X4=3;
    W1=3; W2=5; W3=2; W4=4;
    #10;
    // Test Case 2
    X1=1; X2=2; X3=3; X4=4;
    W1=1; W2=2; W3=3; W4=4;
    #10;
    $finish;
end
endmodule