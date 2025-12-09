//derived virtual class
virtual class packet;
  bit[31:0]addr;
endclass

class extendpacket extends packet;
  function display();
    $display("value of addr=%0d",addr);
  endfunction
endclass

module virtualclass;
initial begin
  extendpacket p;
  p = new();
  p.addr=15;
  p.display();
end
endmodule
//value of addr=15
