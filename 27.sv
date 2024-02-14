module shift_reg(left_right,clk,si,so);
  input left_right,clk,si;
  output so;
  reg[7:0] temp;
  always @ (posedge clk)
    begin
      if(left_right == 1'b0)
        temp<={temp[6:0],si};
      else
        temp<={si,temp[7:1}}
        end
        assign so=temp[7];
      endmodule
