`timescale 1ns / 1ps

module tb_D_FF();
reg d,clk;
wire q;
integer i;

D_FF DF1(.q(q),.d(d),.clk(clk));

initial
begin
clk=1'b0;
forever #3 clk=~clk;
end

initial
begin
d=1'b0;
#10;
for(i=0;i<5;i=i+1)
begin
d=~d;
#10;
end
end

initial
begin
$monitor($time,"q=%b,d=%b,clk=%b",q,d,clk);
#60 $finish;
end
endmodule
