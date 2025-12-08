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
    c = new();
    c.calc(10);
    c.addr=15;
    $display("value of data=%0d and addr=%0d",c.data,c.addr);
  end
endmodule
