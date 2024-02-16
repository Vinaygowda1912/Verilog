module co (a,b,sum,cout);
  input [7:0]a,b;
  input [7:0]sum;
  input cout;
  wire [7:0]temp;
  assign temp = a+b;
  assign sum = temp[7:0];
  assign cout = temp[8];
endmodule 
