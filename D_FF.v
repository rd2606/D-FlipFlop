`timescale 1ns / 1ps

module D_FF(q,d,clk);
input d,clk;
output reg q;

always @(posedge clk)
q<=d;

endmodule
