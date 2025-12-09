// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
class parentclass;
  bit[31:0]data=1;;
  function void display();
  $display("value of data=%0d",data);
  endfunction
endclass

class childclass extends parentclass;
  bit[31:0]data=100;
  function void display();
    $display("value of data=%0d",data);
  endfunction
endclass

module super_eg;
initial begin
  childclass c = new();
 // c.data=10;
  c.display();
end
endmodule
//Child:value of data=10
