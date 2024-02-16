module add/sub (a,b,comp,y);
  input [7:0]a,b;
  input comnp;
 assign comp = (a>=b)? 1'b1:1'b0;
endmodule
