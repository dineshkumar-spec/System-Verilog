class parent_class;
  protected bit[31:0]tmp_addr;
  function new(bit[31:0]r_addr);
    tmp_addr = r_addr+10;
  endfunction
  
  function void display();
    $display("tmp_addr=%0d",tmp_addr);
  endfunction
endclass

class child extends parent_class;
  function new(bit[31:0]r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
  tmp_addr ++;
  endfunction
endclass

module encapsulation;
initial begin
  //parent_class p = new(5);
  child c = new(25);
 // p.tmp_addr=20;
//  p.display();
  c.incr_addr();
  c.display();
end
endmodule
// tmp_addr=36
