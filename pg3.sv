module d_ff ( d,q,set,clk);
  input d,t,clk,set;
  output reg q;
  always @ (posedge clk)
    begin
      if(clk==1)
        begin 
          if(set==1)
            q=1;
        end 
      endmodule


      module d_fft;
  reg d,set,clk;
  wire q;
  d_ff dut(.d(d),,set(set),.clk(clk),.q(q));
     always#10
      clk=~clk;
   initial begin
     clk=0;
     set=0;
     d=0;
     #10
     d=1;
     set=0;
     set=1;
     #10
     d=0;
     set=0;
     set=1;
     $finish;
   
  end
endmodule
     
