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
    c.addr = 10;
    c.data=20;
    p=c;//assigning childclass handle to parent class handle
    c.display();
  end
endmodule
//# value of addr=10
//# value of data=20
