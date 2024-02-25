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


module co_t();
  reg[7:0] a,b;
  reg cin;
  reg[7:0] sum;
  wire[7:0] cout;
  co dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  a=8'b11111111;
    b=8'b00000000;
    cin=0;
  
    #100
    $monitor("a=%b,b=%b,sum=%b,cin=%b,cout=%b",a,b,sum,cin,cout);
    $finish();
  end
endmodule
