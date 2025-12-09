class parentclass;
int addr;
  function display();
    $display("value of addr=%0d",addr);
  endfunction
endclass

class childclass extends parentclass;
int data;
  function display();
    super.display();
    $display("value of data=%0d",data);
  endfunction
endclass

module casting;
  initial begin
    parentclass p = new();
    childclass c = new();
    childclass c1;
    c.addr = 10;
    c.data=20;
    p=c;//p is point to child class handle
    c1=p;// cast type check fails occur at runtime
    c1.display();
  end
endmodule
