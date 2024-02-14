 module accum (clk, clr, d, q);
        input  clk, clr;
        input  [3:0] d;
        output [3:0] q;
   reg    [3:0] temp;
        always @(posedge clk or posedge clr)
        begin
           if (clr)
              temp <= 4’b0000;
           else
              temp <= temp + d;
        end
           assign q = temp;
        endmodule
        
