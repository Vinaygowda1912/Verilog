module shift_reg(d,clk,si,so);
  input d,clk,si;
  output so;
  reg[7:0] temp;
  always @ (posedge clk)
    begin
      if(clr)
        temp<=d;
      else
        temp<={temp[6:0],si}
        end
        assign so=temp[7];
      endmodule
