module counter (clk,clr,q);
  input clk,clr;
  output signed[3:0]q;
  reg signed[3:0]temp;
  always @ (posedge clk)
    begin
      if(clr)
        temp<=4'b0000;
      else
        temp<=temp+1'b1;
    end
  assign q=temp;
endmodule 


module countert();
  reg clk,clr;
  wire signed [3:0]q;
  counter dut(.clk(clk),.clr(clr),.q(q));
  
  always #5 clk=~clk;


  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0);
    clk=0;
    clr=1;
  
    #5
    clr=0;


    #100
 
    
    $finish();
    end
endmodule
        
