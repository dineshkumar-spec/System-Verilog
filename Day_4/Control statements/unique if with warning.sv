module unique_if_statement;
  int a;
  int b;
  initial begin
    a=10;b=20;
    unique if(a>b) $display("a is greater than b");
    else if(a<b) $display("a is less than b");
    else if(a<50)$display("a is lesser");//warning st
    else $display("a is equal to b ");
  end
endmodule
