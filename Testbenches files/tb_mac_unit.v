`timescale 1ns / 1ps
module tb_mac_unit;
reg clk;
reg reset;
reg [3:0] A;
reg [3:0] B;
wire [15:0] ACC;
mac_unit uut(
    .clk(clk),
    .reset(reset),
    .A(A),
    .B(B),
    .ACC(ACC)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    reset = 1;
    #10;
    reset = 0;
    A = 3; B = 2;   // +6
    #10;
    A = 5; B = 4;   // +20
    #10;
    A = 7; B = 3;   // +21
    #10;
    A = 2; B = 8;   // +16
    #10;
    $finish;
end
endmodule