class parentclass;
int data;
  function calc(int m_data);
  data = m_data;
  endfunction
endclass

class childclass extends parentclass;
int addr;
  function calc(int m_data);
  data = m_data+10;
  endfunction
endclass

module override;
  initial begin
    childclass c;
    parentclass p;
    c = new();
    p = new();
    p.calc(100);
    c.calc(100);
    c.addr=15;
    $display("using childclass value of data=%0d and addr=%0d",c.data,c.addr);
    $display("using parentclass value of data=%0d",p.data);
  end
endmodule
// using childclass value of data=110 and addr=15
//using parentclass value of data=100
