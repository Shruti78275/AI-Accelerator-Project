`timescale 1ns / 1ps
module tb_multiplier_4bit;
reg [3:0] A;
reg [3:0] B;
wire [7:0] Product;
multiplier_4bit uut(
    .A(A),
    .B(B),
    .Product(Product)
);
initial begin
    A = 4'd3;  B = 4'd2;  #10;   // 6
    A = 4'd5;  B = 4'd4;  #10;   // 20
    A = 4'd7;  B = 4'd3;  #10;   // 21
    A = 4'd15; B = 4'd15; #10;   // 225
    $finish;
end
endmodule