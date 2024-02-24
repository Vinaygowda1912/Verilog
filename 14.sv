module counter (clk,d,load,q);
  input clk,sload;
  input  [3:0] d;
  output reg[3:0] q;
  reg [3:0] temp;
  always @ (posedge clk )
    begin
      if (sload)
      temp<=4'b0010;
      else 
        temp<=temp+1'b1;
    end
  assign q = temp;
endmodule


module countert();
  reg clk,sload;
  wire [3:0]q;
  counter dut (.clk(clk),.sload(sload),.q(q));
  
  always #5 clk=~clk;

  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    clk=0;
 
    sload=1;
    #5
    sload=0;
    #100

    $finish();
    end
endmodule
        
      
