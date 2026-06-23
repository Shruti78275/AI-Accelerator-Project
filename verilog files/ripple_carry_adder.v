`timescale 1ns / 1ps
module ripple_carry_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
wire c1, c2, c3;
full_adder FA0(
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .Sum(Sum[0]),
    .Carry(c1)
);
full_adder FA1(
    .A(A[1]),
    .B(B[1]),
    .Cin(c1),
    .Sum(Sum[1]),
    .Carry(c2)
);
full_adder FA2(
    .A(A[2]),
    .B(B[2]),
    .Cin(c2),
    .Sum(Sum[2]),
    .Carry(c3)
);
full_adder FA3(
    .A(A[3]),
    .B(B[3]),
    .Cin(c3),
    .Sum(Sum[3]),
    .Carry(Cout)
);
endmodule