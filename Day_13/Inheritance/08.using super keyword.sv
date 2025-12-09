// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
class parentclass;
  bit[31:0]data;
  function void display();
    $display("Base:value of data=%0d",data);
  endfunction
endclass

class childclass extends parentclass;
  bit[31:0]data;
  function void display();
    super.data=3;//assigning to base class
    super.display();//display  base class
    $display("Child:value of data=%0d",data);
  endfunction
endclass

module super_eg;
initial begin
  childclass c = new();
  c.data=10;
  c.display();
end
endmodule
//Base:value of data=3
//Child:value of data=10
