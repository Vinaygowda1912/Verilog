module three_st (en, i, o);
        input  en, i;
        output o;
        reg    o;
  always @(en or i)
        begin
           if (~t)
              o = i;
           else
              o = 1’bZ;
        end
        endmodule


module threetest ();
  reg t,i;
  wire o;
  three_st dut (.en(en),.i(i),.o(o));
  always #5 en=~en;
  always #5 i=~i;
  initial begin
    en=0;
    i=0;
    #20
    en=1;
    i=1;
  end 
  initial begin
    $monitor(en=%b,i=%b,o=%b);
    $dumpfile(test.vcd);
    $dumpvars(1);
    $finish;
  end 
endmodule
