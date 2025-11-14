/*Create a package with multiple functions: add, sub, mul.
Call each function from a module
Print results*/
package arithmetic;
int num1=4'd10;int num2=4'd10;
function int add();
  add=num1+num2;
  $display("Addition of numbers are:%0d",add);
endfunction
function int sub();
  sub=num1-num2;
  $display("Subtration of numbers are:%0d",sub);
endfunction
function int mul();
  mul=num1*num2;
  $display("Multiplication of numbers are:%0d",mul);
endfunction
endpackage
import arithmetic::*;
module example;
initial begin
  add();
  sub();
  mul();
end
endmodule
