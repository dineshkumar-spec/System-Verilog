class packet;
int i=1;
  function integer init();
  init=i;
  endfunction
endclass

class childpacket extends packet;
int i=2;
  function integer init();
  init = -i;
  endfunction
endclass
  
module class_eg;
  int j;
  initial begin
    childpacket c = new();
    packet p;
    p = c;
    $display("value of i = %0d",p.i);
    j=p.init();
    $display("value of j = %0d",j);
  end
endmodule
//value of i = 1
//value of j = -2 without virtul it give parent class value
