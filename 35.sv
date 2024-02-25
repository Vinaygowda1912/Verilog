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


module addercarry_int();
  reg[7:0] a,b;
  reg cin;
  wire[7:0] sum;
  addercarry_in dut(.a(a),.b(b),.cin(cin),.sum(sum));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    a=8'b01001010;
    #10
    b=8'b01010011;
    #6
    cin=0;
    #100
    $monitor("a=%b,b=%b,cin=%b,sum=%b",a,b,cin,sum);
    $finish();
  end
endmodule
