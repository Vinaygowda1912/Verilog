module shift_reg(d,clk,load,si,so);
  input [7:0]d;
  input load,clk,si;
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
