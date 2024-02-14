module counter ( clk,clr,up_down,q);
  input clk,clr,up_down;
  output[3:0] q;
  reg [3:0] temp;
  always @ (posedge clk or posedge clr)
    begin
      if(clr)
        temp<=4'b0000;
      else if (up_down)
        temp<=temp+1'b1;
      else
        temp<=temp-1'b1;
    end
  assign q=temp;
endmodule
  
