module union_eg;
  typedef union {
     int i;
    bit[31:0] b;
  }  normal_u;
  normal_u n1;
  initial begin
  n1.i=32'h345678;
    n1.b=8'd55;
    $display("i=%0h",n1.i);
    $display("b=%0d",n1.b);
  end
endmodule
// i=37 i become garbage value 
// b=55  b is the crt value because its active at last
