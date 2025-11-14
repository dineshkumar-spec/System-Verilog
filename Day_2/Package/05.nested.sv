// Code your testbench here
// or browse Examples
package A;
int data=581;int id=1;
function void display();
  $display("Data=%0d|id=%0d",data,id);
endfunction
endpackage

package B;
int data=123;int id=2;
function void display();
  $display("Data=%0d|id=%0d",data,id);
endfunction
endpackage

package C;
int data=987;int id=3;
function void display();
  $display("Data=%0d|id=%0d",data,id);
endfunction
endpackage

module example;
initial begin
  A::display();
  B::display();
  C::display();
end
endmodule
/*#  Data=581|id=1
#  Data=123|id=2
#  Data=987|id=3*/
