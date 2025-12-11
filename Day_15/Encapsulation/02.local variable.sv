class parent_class;
  local bit[31:0]tmp_addr;
  function new(bit[31:0]r_addr);
    tmp_addr = r_addr+10;
  endfunction
  
  function display();
    $display("tmp_addr=%0d",tmp_addr);
  endfunction
endclass

module encapsulation;
initial begin
  parent_class p = new(5);
  p.tmp_addr=20;//unable to access local declared variable
  p.display();
end
endmodule
//ERROR VCP5248 "Cannot access local/protected member ""p.tmp_addr"" from this scope." "testbench.sv" 15  13
