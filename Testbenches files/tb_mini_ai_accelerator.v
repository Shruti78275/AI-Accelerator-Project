`timescale 1ns / 1ps
module tb_mini_ai_accelerator;
reg [3:0] X1, X2, X3, X4;
reg [3:0] W1, W2, W3, W4;
reg [3:0] V1, V2, V3, V4;
wire [9:0] Y1, Y2;
mini_ai_accelerator uut(
    .X1(X1),
    .X2(X2),
    .X3(X3),
    .X4(X4),

    .W1(W1),
    .W2(W2),
    .W3(W3),
    .W4(W4),
    
    .V1(V1),
    .V2(V2),
    .V3(V3),
    .V4(V4),
    .Y1(Y1),
    .Y2(Y2)
);
initial begin
    X1=2; X2=4; X3=1; X4=3;
    W1=3; W2=5; W3=2; W4=4;
    V1=1; V2=2; V3=3; V4=4;
    #10;
    $finish;
end
endmodule