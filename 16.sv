module counter ( clk,clr,up_down,q);
  input clk,clr,up_down;
  output[3:0] q;
  reg [3:0] temp;
  always @ (posedge clk or posedge clr)
    begin
      if(clr)
        temp<=4'b0000;
      else if (up_down)
        temp<=temp+1'b1;
      else
        temp<=temp-1'b1;
    end
  assign q=temp;
endmodule


module counter_t();
  reg clk,clr,up_down;
  wire[3:0]q;
  counter dut (.clk(clk),.clr(clr),.up_down(up_down),.q(q));
  initial begin
    clk=0;
    clr=0;
    up_down=0;
    #10
    clk=1;
    #5
    clr=1;
    #5
    up_down=1;
    $finish();
    endmodule
