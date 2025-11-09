// Code your testbench here
// or browse Examples
module structure;
 typedef struct{
  	string name;
    int roll_num;
    int mark;
 }students_detail;
  students_detail s1,s2;
  initial begin
  s1.name="Dinesh";
  s1.roll_num=2'b10;
  s1.mark=32'h456;
    $display("Students_detail s1:%p",s1);
   
   s2.name="Kumar";
  s2.roll_num=2'b01;
  s2.mark=32'h455;
    $display("Students_detail s2:%p",s2);
    $display("student_detail s1:name=%s,roll_num=%0b,mark=%0h",s1.name,s1.roll_num,s1.mark);
    $display("student_detail s2:name=%s,roll_num=%0b,mark=%0h",s2.name,s2.roll_num,s2.mark);
  end
endmodule
