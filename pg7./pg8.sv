module latch (d,g,pre,q);
  input[3:0]d;
  input pre;
  input g;
  output reg[3:0]q;
  always @ (*)
    begin
      if (pre)
        q<=4'b1111;
      else if (~g)
        q<=d;
    end
endmodule

// Code your testbench here
// or browse Examples
module d_llt();
  reg[3:0]d;
  reg g,pre;
  wire[3:0]q;
  latch dut (.d(d),.g(g),.pre(pre),.q(q));
  initial begin 
  d=4'b0000;
     g=4'b0000;
     pre=0;
   #10
      d=4'b0001;
     g=4'b0011;
     pre=1;
           
     
  end
     
  initial begin
    $monitor("d=%b,pre=%b,g=%b,q=%b",d,pre,g,q);
  $finish;
  end
endmodule
