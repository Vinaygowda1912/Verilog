module counter (clk,d,load,q);
  input clk,load;
  input  [3:0] d;
  output reg[3:0] q;
  reg [3:0] temp;
  always @ (posedge clk or posedge load)
    begin
    if (load)
      temp<=d;
      else 
        temp<=temp+1'b1;
    end
  assign q = temp;
endmodule
      
