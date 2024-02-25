module co(a,b,sum,cout);
  input [7:0]a,b;
  input [7:0]sum;
  output cout;
 
  assign {cout,sum} = a+b;
endmodule 

module co_t();
  reg[7:0] a,b;
  reg[7:0] sum;
  wire[7:0] cout;
    co dut(.a(a),.b(b),.sum(sum),.cout(cout));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  a=8'b11111111;
    b=8'b00000000;
  
    #100
    $monitor("a=%b,b=%b,sum=%b,cout=%b",a,b,sum,cout);
    $finish();
  end
endmodule
