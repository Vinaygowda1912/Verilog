module dff ( d,rst,clk,clr,q);
  input d, rst,clk,clr,;
  output reg q;  
  always @ (negedge clk or posedge clr)
    begin
      if(clr==1)
        q<=0;
      else
        q<=d;
      
   end
endmodule


module dfft ();
  reg d, rst,clk,clr,;
  wire reg q;  
  dff dut ( d,rst,clk,clr,q);
  always #10
    clk=~clk
    initial begin
   clk=0;
      d=0;
      rst=0;
      clr=0;
      #10
      clr=1;
      d=0;
      #clr=0;
      d=1;
      $finish;
    end 
endmodule
      
      
