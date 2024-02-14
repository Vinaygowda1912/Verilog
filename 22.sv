module shift_reg(clr,clk,si,so);
  input clr,clk,si;
  output so;
  reg[7:0] temp;
  always @ (posedge clk)
    begin
      if(clr)
        temp<=8'b00000000;
      else
        temp<={temp[6:0],si}
        end
        assign so=temp[7];
      endmodule
