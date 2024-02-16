module mult (a,b,y);
  input [7:0]a;
  input [3:0]b;
  output [11:0]y;
  assign y = a*b;
endmodule
