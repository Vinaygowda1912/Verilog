module shift_reg(d,clk,sload,si,so);
  input [7:0]d;
  input sload,clk,si;
  output so;
  reg[7:0] temp;
  always @ (posedge clk or posedge load)
    begin
      if(clr)
        temp<=d;
      else
        temp<={temp[6:0],si}
        end
        assign so=temp[7];
      endmodule
