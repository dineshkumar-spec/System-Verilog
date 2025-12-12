//it access local ad global scope, package scope, class scope 
class packet;
  bit[31:0]addr;
  static bit [31:0] data;
  
  function void display(bit[31:0]a,b);
    $display("values are %0d %0d ",a,b);
  endfunction
endclass

module scope_resolution;
int data = 10;
initial begin
  packet p = new();
  packet::data=20;
  p.display(packet::data,data);
end
endmodule
//values are 20 10 
