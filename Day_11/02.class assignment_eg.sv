/*Q1. Simple Class Assignment
Write a SystemVerilog program with a class student having:
int mark
constructor initializing mark
Create 2 objects
Assign one object to another
Modify the 2nd object*/

class student;
  int mark;
  
  function new();
  mark = 100;
  endfunction
  
  function display();
    $display("mark = %0d",mark);
  endfunction
endclass
module mark;
  student s1;
  student s2;
  initial begin 
    s1 = new();
    $display("content of s1");
    s1.display();
    s2 = s1;
    $display("content of s2");
    s2.mark = 50;
    $display("after calling s2");
    s2.display();
    $display("after calling s1");
    s1.display();
  end
endmodule
