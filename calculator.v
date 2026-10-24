module calculator(
 input [3:0] a,b,input [1:0] op,
 output reg [7:0] result,output reg divide_by_zero);
always @(*) begin
 result=0; divide_by_zero=0;
 case(op)
  2'b00: result=a+b;
  2'b01: result=a-b;
  2'b10: result=a*b;
  2'b11: if(b==0) divide_by_zero=1; else result=a/b;
 endcase
end
endmodule
