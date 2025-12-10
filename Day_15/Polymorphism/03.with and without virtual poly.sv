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
 int j;
  initial begin
    child c=new();
    packet p=c;
    j=p.init();
    $display("value of j = %0d",j);
  end
endmodule
//value of j = 1
--------------------------------------------------
//with virtual
class packet;
  int i=1;
  virtual function int init();
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
 int j;
  initial begin
    child c=new();
    packet p=c;
    j=p.init();
    $display("value of j = %0d",j);
  end
endmodule
//value of j = -2
