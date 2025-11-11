//8.numeric string to integer
module arith;
  string s;
  int i;
  initial begin
    s={"1130abcd"};
    i=s.atoi;
    $display("Result=%0d",i);
    i=i+100;
    $display("Result =%0d",i);
    i=i-10;
    $display("Result =%0d",i);
    i=i*10;
    $display("Result =%0d",i);
  end
endmodule
