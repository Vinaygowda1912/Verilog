module shift_reg(s,clk,si,so);
  input s,clk,si;
  output so;
  reg[7:0] temp;
  always @ (posedge clk)
    begin
      if(clr)
        temp<=8'b11111111;
      else
        temp<={temp[6:0],si}
        end
        assign so=temp[7];
      endmodule
