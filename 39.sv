module add/sub (a,b,comp,y);
  input [7:0]a,b;
  input comnp;
 assign comp = (a>=b)? 1'b1:1'b0;
endmodule


module ad_t();
  reg[7:0] a,b;
  wire comp;
  ad dut(.a(a),.b(b),.comp(comp));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    a=5;
    b=6;
    #5
    a=100;
    b=50;
    #100
    $monitor("a=%d,b=%d,comp=%d",a,b,comp);
    $finish();
  end
endmodule
