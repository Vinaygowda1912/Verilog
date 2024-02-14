module mux (a,b,c,d,s,y);
  input a,b,c,d;
  input [1:0]s;
  output y;
  reg y;
  always @ (*)
    begin
      if(s == 2'b00)
        y=a;
      if(s == 2'b01)
        y=b;
      if(s == 2'b10)
        y=c;
    end 
endmodule
