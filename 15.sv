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


module countert();
  reg clk,clr,ce;
  wire [3:0]q;
  counter dut(.clk(clk),.clr(clr),.ce(ce),.q(q));
  
  always #5 clk=~clk;
   always #5 ce=~ce;

  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    clk=0;
    clr=1;
    ce=1;
    #5
    clr=0;
    #5
    ce=0;

    #100
 
    
    $finish();
    end
endmodule
        
