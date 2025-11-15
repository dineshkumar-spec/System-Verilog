module union_eg;
  logic[31:0]x;
  typedef union{
  int a;
    byte b;
    bit [15:0]c;
  }data;
   data d1;
  initial begin
    
    d1.a=32'h ffff_ffff;//write
    
    d1.b=32'hffffaaaa;
    x=d1.b;
    $display("x=%h",x);
    
    d1.b=8'h1;
    x=d1.c;
    $display("x=%h",x);
    
    d1.c=16'h1010;
    x=d1.a;
    $display("x=%h",x);
  end
endmodule
