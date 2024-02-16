module adder carry_in (a,b,cin,sum);
  input [7:0]a,b;
  input cin;
  output [7:0]sum;
  reg [7:0]sum;
  always @ (*)
    begin 
      sum = a+b+cin;
    end
endmodule
