module d_ff ( d,q,set,clk,CE);
  input [3:0]d;
         input clk,set,CE;
  output reg[3:0]q;
  always @ (posedge clk or posedge set)
    begin
          if(set==1)
            q<=4'b1111;
          else if(CE==1)
            q<=d;
        end 
      endmodule



// Code your testbench here
// or browse Examples
module d_fft();
  reg [3:0]d;
  reg clk,set,CE;
  wire [3:0]q;  
  d_ff dut (.d(d),.clk(clk),.set(set),.CE(CE),.q(q));
  always #5
    clk=~clk;
  initial begin 
    clk=0;
    d=4'b0000;
    set=1;
    CE=1;
    #100
    set=0;
    #200
    d=4'b0001;
    #100
    CE=0;
    #100
    d=4'b0111;
  end
  initial begin   $monitor("d=%b,clk=%b,set=%b,CE=%b,q=%b",d,clk,set,CE,q);
   $finish();
  
  end
endmodule
