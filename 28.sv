module mux (a,b,c,d,s,y);
input a,b,c,d;
input [1:0] s;
output y;
reg y;
always @ (*)
begin
if(s==2'b00)
y=a;
else if (s=2'b01)
y=b;
else if (s=2'b10)
y=c;
else
y=d;
end 
endmodule



module muxt();
  reg a,b,c,d;
  reg [1:0]s;
  wire o;
  mux dut(.a(a),.b(b),.c(c),.d(d),.s(s),.o(o));
 
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
    s=2'b00;
    a=0;
    b=0;
    c=0;
    d=0;
    #5
    a=1;
    #3
    b=1;
    #5
    c=1;
    #5
    d=1;
    #5
    s=2'b01;
    #5
    s=2'b10;
    #5
    s=2'b11;
    #100
    $finish();
  end
endmodule
