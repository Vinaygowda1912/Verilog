module counter (clk,clr,q);
  input clk,clr;
  output signed[3:0]q;
  reg signed[3:0]temp;
  always @ (posedge clk)
    begin
      if(clr)
        temp<=4'b0000;
      else
        temp<=temp+1'b1;
    end
  assign q=temp;
endmodule 
