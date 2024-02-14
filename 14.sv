module counter (clk,d,load,q);
  input clk,sload;
  input  [3:0] d;
  output reg[3:0] q;
  reg [3:0] temp;
  always @ (posedge clk )
    begin
      if (sload)
      temp<=4'b0010;
      else 
        temp<=temp+1'b1;
    end
  assign q = temp;
endmodule
      
