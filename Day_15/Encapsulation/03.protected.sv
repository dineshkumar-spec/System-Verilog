class parent_class;
  local bit[31:0]tmp_addr;
  function new(bit[31:0]r_addr);
    tmp_addr = r_addr+10;
  endfunction
  
  function display();
    $display("tmp_addr=%0d",tmp_addr);
  endfunction
endclass

class child extends parent_class;
  function new(bit[31:0]r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
  tmp_addr++;
  endfunction
endclass

module encapsulation;
initial begin
  parent_class p = new(5);
  child c = new(10);
  p.tmp_addr=20;//protected unable to use in module
  p.display();
  c.incr_addr();
  c.display();
end
endmodule
/*ERROR VCP5248 "Cannot access local/protected member ""tmp_addr"" from this scope." "testbench.sv" 18  11
WARNING VCP5090 "Explicit lifetime definition is required for local variable ""p"" initialized at declaration." "testbench.sv" 24  26
WARNING VCP5090 "Explicit lifetime definition is required for local variable ""c"" initialized at declaration." "testbench.sv" 25  20
ERROR VCP5248 "Cannot access local/protected member ""p.tmp_addr"" from this scope." "testbench.sv" 26  13*/
