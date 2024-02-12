module latch(d,g,clr,q);
  input d,g,clr;
  output reg q;
  always @ (*)
    begin
      if(clr)
        q<=0;
      else 
        q<=d;
    end
endmodule



module d_llt();
  reg d,g,clr;
  wire q;
     latch dut (.d(d),.g(g),.clr(clr),.q(q));
  initial begin 
  d=0;
     g=0;
     clr=0;
    
     
  end
   always #5 d=~d;
     always #5 g=~g;
     always #5 clr=~clr;
     
  initial begin
    $monitor("d=%b,clr=%b,g=%b,q=%b",d,clr,g,q);
  $finish;
  end
endmodule
