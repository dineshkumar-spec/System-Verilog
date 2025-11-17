module increment;
  int a=5,b=6,c;
  initial begin
  a++;
    $display("5++ increment %0d",a);
    b++;
    $display("6++ increment %0d",b);
    b=a++;
    $display("increment of a %0d",b);
    c=++a;
    $display("pre increment of c %0d",c);
    ++c;
    $display("pre increment of c %0d",c);
  end
endmodule
