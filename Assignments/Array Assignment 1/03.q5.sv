//5. Predict the output for the below code
module top;
intnum1;
int num2;
initial
begin
num1 = int'(10.0 - 1.8); // Case 1
  $display("The integer value is : %d",num);----------------error num1
num2 = int'(5/3); // Case 2
  $display("The integer value is : %d",num);-----------------error num2
end
endmodule
//** Error (suppressible): testbench.sv(7): (vopt-7063) Failed to find 'num' in hierarchical name 'num'.
