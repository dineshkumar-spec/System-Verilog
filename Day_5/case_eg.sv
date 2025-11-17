// Code your testbench here
// or browse 
module case_eg;
  reg[7:0] a,b,op,op_x,op_z;
  reg [1:0]op_code;
  always@(a or b or op_code)begin
    case(op_code)
      2'b00:op = a+b;
      2'b01:op=a-b;
      default:op = 8'd0;
    endcase
    $display("output of case = %0d",op);
  end
  
  
  always@(a or b or op_code)begin
    casex(op_code)
      2'b00:op_x = a+b;
      2'b01:op_x=a-b;
      default:op_x = 8'd0;
    endcase
    $display("output of case_x = %0d",op_x);
  end
  
  
  always@(a or b or op_code)begin
    casez(op_code)
      2'b00:op_z = a+b;
      2'b01:op_z = a-b;
      default:op_z = 8'd0;
    endcase
    $display("output of case_z = %0d",op_z);
  end
  
  initial begin
  a=8'd12;
  b=8'd9;
  op_code=0;
    $display("op_code=%0d",op_code);
    #10;
     op_code=1;
    $display("op_code=%0d",op_code);
    #10;
     op_code=2;
    $display("op_code=%0d",op_code);
    #10;
     op_code=2'bx;
    $display("op_code=%0d",op_code);
    #10;
     op_code=2'bz;
    $display("op_code=%0d",op_code);
    #10;
    
  end
endmodule
