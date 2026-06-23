`timescale 1ns / 1ps
module tb_ripple_carry_adder;
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Cout;
ripple_carry_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);
initial begin
    A = 4'b0001; B = 4'b0010; Cin = 0; #10; // 1+2=3
    A = 4'b0101; B = 4'b0011; Cin = 0; #10; // 5+3=8
    A = 4'b1111; B = 4'b0001; Cin = 0; #10; // overflow
    A = 4'b1010; B = 4'b0101; Cin = 0; #10; // 10+5=15
    $finish;
end
endmodule