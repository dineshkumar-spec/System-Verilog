module union_eg;
  logic[31:0]x;
  typedef union tagged{
  int a;
    byte b;
    bit [15:0]c;
  }data;
   data d1;
  initial begin
    
    d1 = tagged a 32'h ffff_ffff;//write
    
    d1 = tagged b 8'd1111_0000;
    x=d1.b;
    $display("x=%d",x);
  end
endmodule
