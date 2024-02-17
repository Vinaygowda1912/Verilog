module multi(a,b,multi,clk);
  input clk;
  input [17:0] a,b;
  output [35:0] multi;
  reg [35:0] multi;
  reg [17:0] a_in,b_in;
  wire [35:0] multi_res;
  reg [35:0] pipe_2,pipe_3;
  always @ (posedge clk)
    begin
      a_in <= a;
      b_in <= b;
      multi_res <= a_in * b_in;
      pipe_2 <= multi_res;
      pipe_3 <= pipe_2;
      multi <= pipe_3;
    end
endmodule
