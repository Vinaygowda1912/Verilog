module latch(d,clk,rst,en,q);
  input d,clk,rst,en;
  output reg q;
  always @ (posedge clk)
    begin
      if(rst==1)
        q<=0;
      else
        q<=d;
    end
endmodule



module d_llt();
  reg d,clk,rst,en;
  wire q;
  latch dut (.d(d),.clk(clk),.rst(rst),.en(en),.q(q));
  always #5 
    clk=~clk;
  initial begin
    clk=0;
    d=0;
    rst=0;
    en=0;
   
    #10
    rst=1;
    en=1;
    d=0;
    #10
    rst=0;
    en=0;
    d=0;
  end
  initial begin
    $monitor("en=%b,clk=%b,d=%b,rst=%b,q=%b",en,clk,d,rst,q);
  $finish;
  end
endmodule
    
