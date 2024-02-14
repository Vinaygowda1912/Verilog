module shift_reg(clk,ce,si,so);
  input clk,ce,si;
  output so;
  reg [7:0] temp;
  always @ (posedge clk)
    begin
      if(ce)
        temp<=temp<<1;
      temp[0]<=si;
    end
  asssign s0=temp[7];
endmodule
  
