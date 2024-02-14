module shift_reg( clk,si,so);
input clk;
  input[7:0] si;
  output[7:0] so;
  reg [7:0] temp;
  always @ (posedge clk)
    begin
      temp<=temp<<1;
      temp[0]<=si;
    end
  assign s0=temp[7]
    endmodule
