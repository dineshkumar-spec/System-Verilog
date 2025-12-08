class parent_cls;
  int data;
  function void calc(int m_data);
    data=m_data;
  endfunction
endclass

class child_cls extends parent_cls;
  int addr;
  function display();
    $display("value of addr=%0h",addr);
  endfunction
endclass

module inheritance;
 
  initial begin
    child_cls c1;
    c1 = new();
    c1.calc(9);
    $display("value of data=%0d",c1.data);
    c1.addr=25;
    c1.display();
  end
endmodule
// value of data=9
// value of addr=25
