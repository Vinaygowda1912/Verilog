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

module countert();
  reg clk,clr;
  reg [3:0]d;
  wire [3:0]q;
  accum dut(.clk(clk),.clr(clr),.d(d),.q(q));
  always #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk=0;
    clr=1;
    d=0;
    #5
    clr=0;
    #5
    d=1;
    #100
 
    
    $finish();
    end
endmodule
        
        
