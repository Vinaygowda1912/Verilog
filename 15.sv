module counter (clk, clr, ce, q);
	input        clk, clr, ce;
	output [3:0] q;
	reg    [3:0] tmp;
	always @(posedge clk or posedge clr)
	begin
	   if (clr)
	      tmp <= 4’b0000;
	   else if (ce)
	      tmp <= tmp + 1’b1;
	end
	   assign q = tmp;
        endmodule
        
