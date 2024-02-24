module shift_reg( clk,si,so);
input clk;
  input[7:0] si;
  output[7:0] so;
  reg [7:0] temp;
  always @ (posedge clk)
    begin
      temp<=temp<<1;
      temp[0]<=si;
    end
  assign s0=temp[7]
    endmodule


    module shift_regt();
  reg clk,clr;
  reg[2:0] si;
  wire[2:0] so;
  shift_reg dut(.clk(clk),.clr(clr),.si(si),.so(so));
  
  always #5 clk=~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    clk=0;
    clr=1;
    si=3'b000;
    
    #5
    clr=0;
    #5
    clr=1;
   #5
    si=3'b001;
    #5
    si=3'b010;
    #5
    si=3'b011;
    #5
    si=3'b100;
    #100
 
    
    $finish();
    end
endmodule
        
