module unique_if_statement;
  int a;
  int b;
  initial begin
    a=10;b=20;
    unique if(a>b) $display("a is greater than b");
    else if(30<b) $display("a is less than b");
  end
endmodule
