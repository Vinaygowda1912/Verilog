module d_ff ( d,q,CE,clk);
  input d,t,clk,set;
  output reg q;
  always @ (posedge clk)
    begin
      if(clk==1)
        begin 
          if(CE==1)
            q=d;
        end 
      endmodule
