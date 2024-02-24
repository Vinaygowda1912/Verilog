module counter (clk, clr, q);
        input        clk, clr;
        output [3:0] q;
        reg    [3:0] tmp;
        always @(posedge clk or posedge clr)
        begin
           if (clr)
              tmp <= 4’b0000;
           else
              tmp <= tmp + 1’b1;
        end
           assign q = tmp;
        endmodule



module countert();
  reg clk,clr;
  wire [3:0]q;
  counter dut (.clk(clk),.clr(clr),.q(q));
  
  always #5 clk=~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    
    clk=0;
    clr=1;
    
    #5
    clr=0;
    
    $finish();
    end
endmodule
        
