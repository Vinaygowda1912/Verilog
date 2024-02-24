module logical shift (di,sel,o);
  input [7:0]di;
  input [1:0]sel;
  output [7:0]o;
  reg [7:0]o;
  always @ (*)
    begin
      case(sel)
      2'b00:o=d1;
      2'b01:o=d1<<1;
      2'b10:o=d2<<2;
      default:o=d3<<3;
      endcase
    end 
endmodule



module logicalshift_t() ;
  reg[7:0] di;
  reg[1:0] sel;
  wire[7:0] o;
  logicalshift dut(.di(di),.sel(sel),.o(o));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
   di=8'b10110010;
    #5
 sel=2'b00;
    #5
    sel=2'b01;
    #5
    sel=2'b10;
    #5
    sel=2'b11;
    #100
    
    
   
    $monitor("di=%b,sel=%b,0=%b",di,sel,o);
    $finish();
  end
endmodule
      
