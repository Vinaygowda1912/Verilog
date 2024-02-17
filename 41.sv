module mult(a,b,clk,multi);
  input   clk;
  input [17:0] a,b;
  output [35:0] multi;
  reg [35:0] multi;
  wire [35:] mult_res;
  input [17:0] a_in,b_in;
  reg [35:0] pipe_1,pipe_2,pipe_3;
  assign multi_res = a_in*b_in;

  always @ (posedge clk)
    begin
      a_in <= a;
      b_in <= b;
      pipe_1 <= multi_res;
      pipe_2 <= pipe_1;
      pipe_3 <= pipe_2;
      multi <= pipe_3;
    end
endmodule
      
