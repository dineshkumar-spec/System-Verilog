module static_casting;
  real r_a=2.1;
  int i_a=3.2;
  initial begin
    r_a = (2.1 * 3.2);
    i_a = int'(r_a);
    $display("value of r_a=%0f",r_a);
    $display("value of i_a=%0d",i_a);
  end
endmodule
//# value of r_a=6.720000
//# value of i_a=7
