// Code your testbench here
// or browse Examples
module structure;
 typedef struct packed{
    int roll_num;
    int mark;
 }students_detail;
  students_detail s1,s2;
  initial begin
  s1.roll_num=2'b10;
  s1.mark=32'h456;
    $display("Students_detail s1:%p",s1);
   
  
  s2.roll_num=2'b01;
  s2.mark=32'h455;
    $display("Students_detail s2:%p",s2);
    
    $display("student_detail s1:roll_num=%0b,mark=%0h",s1.roll_num,s1.mark);
    $display("student_detail s2:roll_num=%0b,mark=%0h",s2.roll_num,s2.mark);
  end
endmodule
//////////////////////////////////////////////////////////////////
module pack_st;
  typedef struct packed{
    bit[31:0]salary;
    int id;
  }employe;
  initial begin
  employe e1,e2;
    e1.salary = 'h30000;
    e1.id = 'd1234;
    $display("E1:%p",e1);
    
    e2.salary = 'h40000;
    e2.id = 'd4321;
    $display("E2:%p",e2);
  end
endmodule
