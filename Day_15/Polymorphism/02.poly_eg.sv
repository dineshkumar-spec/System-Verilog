class packet;
  int i=1;
  function int init();
  init=i;
  endfunction
endclass

class child extends packet;
  int i=2;
  function int init();
  init=-i;
  endfunction
endclass

module eg;
 int i,j;
  initial begin
    child c=new();
    packet p=new();
    i=p.init();
     $display("value of i = %0d",i);
    j=c.init();
    $display("value of j = %0d",j);
  end
endmodule
/*# value of i = 1
# value of j = -2*/
