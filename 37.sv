module co (a,b,cin,sum,cout);
  input [7:0]a,b;
  input [7:0]sum;
  output cout;
   input cin;
  wire [7:0]temp;
  assign temp = a+b+cin;
  assign sum = temp[7:0];
  assign cout = temp[8];
endmodule 
