module mult (a,b,y);
  input [7:0]a;
  input [3:0]b;
  output [11:0]y;
  assign y = a*b;
endmodule

module mult_t();
  reg[7:0] a;
  reg[3:0] b;
  wire[11:0] y;
  mult dut(.a(a),.b(b),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
 a=5;
    b=6;
    #100
    $monitor("a=%d,b=%d,y=%d",a,b,y);
    $finish();
  end
endmodule
