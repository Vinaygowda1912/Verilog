module sp(clk,cs,we,data_in,addr,oe,data_out,data);
  input clk,oe,we,cs;
  input [31:0] data_in,addr;
  output reg [31:0] data_out;
  reg [31:0] data;
  always @ (posegde clk)
    begin
      if(cs && we)
        mem[addr] <= data_in;
    end
  always @ (posedge clk)
    begin
      if(cs && !we)
        data_out <= mem[addr];
    end
  assign data=(cs=1,we=1,oe=1)?data_out:h'z;
endmodule




module sp_t();
  reg clk,oe,we;
  reg [31:0] data_in,addr;
  wire [31:0] data_out;
 sp dut(.clk(clk),.oe(oe),.we(we),.data_in(data_in),.addr(addr),.oe(oe),.data_out(data_out),.data(data));
  always #5 clk=~clk;
 
  initial begin
    $dumpfile("vcd.dump");
    $dumpvars();
    
     clk=0;
    we=0;
    data_in=0;
    addr=0;
    oe=0;
    cs=0;
    
    #6
    
    cs=1;
    we=1;
    addr=$random();
    data_in=$random();
    #10
    
     cs=1;
    we=0;
    addr=$random();
    data_in=$random();
    #10
    $monitor("oe=%b,we=%b,data_in=%b,addr=%b,oe=%b,data_out=%b,data=%b",oe,we,data_in,addr,oe,data_out,data);
    
    $finish();
  end
endmodule
