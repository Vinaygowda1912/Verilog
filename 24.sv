module shift_reg(clk,si,po);
  input clk,si;
  output so;
  reg[7:0] temp;
  always @ (posedge clk)
    begin
        temp<={temp[6:0],si}
        end
        assign so=temp;
      endmodule
