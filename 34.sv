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

      
