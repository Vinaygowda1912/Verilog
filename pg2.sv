module dff ( d,rst,clk,q);
  input d, rst,clk;
  output reg q;  
  always @ (negedge clk)
    begin
    if(!rst)
      d<=0;
  else
    d<=1;
    end
endmodule
  
