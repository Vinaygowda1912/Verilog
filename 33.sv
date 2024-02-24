module priority encoder (e,y);
  input [7:0]e ;
  output [2:0]y;
  reg [2:0]y;
  always @ (*)
    begin
      case(e)
        8'b10000000:y=3'b000;
         8'b01000000:y=3'b001;
         8'b00100000:y=3'b010;
         8'b00010000:y=3'b011;
         8'b00001000:y=3'b100;
         8'b00000100:y=3'b101;
         8'b00000010:y=3'b110;
         8'b00000001:y=3'b111;
        default:y=3'bxxx;
      endcase
        
    end 
endmodule


module priorityencoder_t();
  reg[7:0] e;
  wire[2:0] y;
  priorityencoder dut(.e(e),.y(y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    #5
    e=8'b10000000;
    #5
    e=8'b01000000;
    
    #5
    e=8'b00100000;
    #5
    e=8'b00010000;
    #5
    e=8'b00001000;
    #100
    $monitor("e=%b,y=%b",e,y);
    $finish();
  end
endmodule
        
