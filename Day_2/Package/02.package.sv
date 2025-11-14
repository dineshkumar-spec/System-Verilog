/*Create a class inside a package and call its method.
Class: members id, data
Method: display()
Instantiate in module*/
package pack;
class eg;
 int member_id=4'd3;
  int data = 8'h8;
  function display();
    $display("Member id is%0d,Data is %0h",member_id,data);
  endfunction
  endclass
endpackage
  import pack ::*;
  module en;
     initial begin
       eg obj=new();
       obj.display();
     end
  endmodule
