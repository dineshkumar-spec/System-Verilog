// Code your testbench here
// or browse Examples
package pkg;
class transaction;
  int data=5;
  function void display();
    $display("data=%0d",data);
    endfunction
endclass
function pkg_fun();
  $display("Inside pkg function");
endfunction
endpackage
import pkg::*;
module package_example;
  initial begin
    transaction tr=new();
    tr.display();
    pkg_fun();
  end
endmodule
