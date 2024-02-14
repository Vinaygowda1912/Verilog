  module counter (clk, s, q);
        input        clk, s;
        output [3:0] q;
        reg    [3:0] tmp;
        always @(posedge clk)
        begin
           if (s)
              tmp <= 4’b1111;
           else
              tmp <= tmp - 1’b1;
        end
           assign q = tmp;
        endmodule
        
