module add/sub (a,b,oper,y);
  input [7:0]a,b;
  input [1:0]oper;
  output [7:0]y;
  reg [7:0]y;
  always @ (*)
    begin
      if(oper == 2'b00)
        y = a+b;
      else y = a-b;
    end
endmodule
