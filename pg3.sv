module d_ff ( d,q,set,clk);
  input d,t,clk,set;
  output reg q;
  always @ (posedge clk)
    begin
      if(clk==1)
        begin 
          if(set==1)
            q=1;
        end 
      endmodule
  
