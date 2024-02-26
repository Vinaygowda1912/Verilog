module sss(din,dout,clk,rst,out);
  input din,clk,rst;
  output reg dout;
  output out;
  typedef enum logic[3:0]{s1,s2,s3,s4} state_t;
  state_t state;
  always @ (posedge clk or posedge rst)
    begin
      
      if(rst)
        begin
          state<=s1;
          dout<=0;
        end
      
      else begin
        
        case(state)
          
          s1:begin
            if(din) begin
            state<=s2;
            dout<=0;
          end
          else
            begin
            state<=s1;
            dout<=0;
          end
          end
         
         
          s2:begin
            if(din) begin
              state<=s3;
              dout<=0;
            end
              else
                begin
                state<=s1;
              dout<=0;
            end
          end
          
           s3:begin
            if(din) begin
              state<=s2;
              dout<=0;
            end
              else
                begin 
                state<=s4;
              dout<=0;
            end
          end
          
           s4:begin
            if(din) begin
              state<=s2;
              dout<=0;
            end
              else
                begin
                state<=s1;
              dout<=0;
            end
          end
        endcase
          
          end
          end
          assign out=(state==s4 && din==1)?1:0;
          endmodule



module sss_t();
  reg din,clk,rst;
  wire dout;
  wire out;
  sss dut(.din(din),.clk(clk),.rst(rst),.dout(dout),.out(out));
    always #5 clk=~clk;
      
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    clk=0;
    rst=0;
    din=1;
    @(posedge clk)
    din=0;
    @(posedge clk)
    din=1;
    @(posedge clk)
    din=1;
    @(posedge clk)
    $finish();
    
  end
    endmodule
    
