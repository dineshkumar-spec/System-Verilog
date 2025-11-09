// Code your testbench here
// or browse Examples
module structure;
  struct{
  	string name;
    int roll_num;
    int mark;
  }students_detail;
  initial begin
  students_detail.name="Dinesh";
  students_detail.roll_num=2'b10;
  students_detail.mark=32'h456;
    $display("Students_detail:%p",students_detail);
    $display("student_detail:name=%s,roll_num=%0b,mark=%0h",students_detail.name,students_detail.roll_num,students_detail.mark);
  end
endmodule
//Students_detail:'{name:"Dinesh", roll_num:2, mark:1110}
//student_detail:name=Dinesh,roll_num=10,mark=456
