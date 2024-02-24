module counter (clk,d,load,q);
  input clk,load;
  input  [3:0] d;
  output reg[3:0] q;
  reg [3:0] temp;
  always @ (posedge clk or posedge load)
    begin
    if (load)
      temp<=d;
      else 
        temp<=temp+1'b1;
    end
  assign q = temp;
endmodule


module countert();
  reg clk,load,d;
  wire [3:0]q;
  counter dut (.clk(clk),.d(d),.load(load),.q(q));
  
  always #5 clk=~clk;

  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    clk=0;
    d=0;
    load=1;
    #5
    load=0;
    #5
    d=1;
    #100
    
    $finish();
    end
endmodule
        
      
