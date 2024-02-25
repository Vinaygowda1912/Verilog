module add/sub (a,b,oper,y);
  input [7:0]a,b;
  input [1:0]oper;
  output [7:0]y;
  reg [7:0]y;
  always @ (*)
    begin
      if(oper == 2'b00)
        y = a+b;
      else y = a-b;
    end
endmodule


module add_t();
  reg[7:0] a,b;
  reg[1:0] oper;
  wire[7:0] y;
  add dut(.a(a),.b(b),.oper(oper),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    oper=2'b00;
    a=5;
    b=1;
    #5
    oper=2'b01;
    a=6;
    b=1;
    #100
    $monitor("a=%d,b=%d,y=%d",a,b,y);
  end
endmodule
