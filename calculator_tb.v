`timescale 1ns/1ps
module calculator_tb;
reg [3:0] a,b; reg [1:0] op; wire [7:0] result; wire divide_by_zero;
calculator dut(a,b,op,result,divide_by_zero);
initial begin
 a=4;b=3;op=0;#10;$display("ADD: %d",result);
 a=7;b=2;op=1;#10;$display("SUB: %d",result);
 a=5;b=3;op=2;#10;$display("MUL: %d",result);
 a=8;b=2;op=3;#10;$display("DIV: %d",result);
 a=8;b=0;op=3;#10;$display("DIV0 flag: %b",divide_by_zero);
 $finish;
end
endmodule
