module increment;
  int a=5,b=6,c;
  initial begin
  a--;
    $display("5-- drecrement %0d",a);
    b--;
    $display("6-- drecrement %0d",b);
    b=a--;
    $display("drecrement of a %0d",b);
    c=--a;
    $display("pre decrement of c %0d",c);
    --c;
    $display("pre drecrement of c %0d",c);
    a=4'd15;
    --a;
    $display(a);
  end
endmodule
