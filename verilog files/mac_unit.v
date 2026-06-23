`timescale 1ns / 1ps
module mac_unit(
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    output reg [15:0] ACC
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        ACC <= 16'd0;
    else
        ACC <= ACC + (A * B);
end

endmodule