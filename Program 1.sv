module d_ff (d,clk,reset,q);
  input d,clk,reset;                          
  output reg q;
  always @(posedge clk)
    begin
      if (reset==1'b1)
        q<=1'b0;
      else
        q<=d;
    end 
endmodule


module dff_t();
  reg d,clk,reset;
  wire q;
  d_ff d1 (d,clk,reset,q);
  initial begin
    clk=1'b0;
    forever 
      #10
      clk=~clk;
  end
  initial begin
    reset=1'b1; 
    d=1'b0;
    #20
    reset=1'b0;
    d=1'b1;
  $finish;
  end 
endmodule
    
    
