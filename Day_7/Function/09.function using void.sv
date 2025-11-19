module eg;
  
  function void compare(int a,int b);
    if(a>b)$display("a is greater than b");
    else if (a<b) $display("a is less than b");
    else $display("a is equal to b");
  endfunction
  initial begin
  
    compare(40,60);
    compare(100,2);
    compare(50,50);
  end
endmodule
