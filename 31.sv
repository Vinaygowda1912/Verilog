module decoder (s0,s1,s2,s3,y);
  input [2:0] s1,si,s2,s3;
  output [7:0]y;
          reg [7:0]y;
  always @ (*)
    begin
      case (s1 or s1 or s2 or s3)
        3'b000:y=8'b00000001;
         3'b001:y=8'b00000010;
         3'b010:y=8'b00000100;
         3'b011:y=8'b00001000;
         3'b100:y=8'b00010000;
         3'b101:y=8'b00100000;
         3'b110:y=8'b01000000;
         3'b111:y=8'100000000;
      endcase
    end 
endmodule
        
