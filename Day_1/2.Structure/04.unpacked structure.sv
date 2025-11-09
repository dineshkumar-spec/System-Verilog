module pack_st;
  typedef struct{
    string name;
    bit[31:0]salary;
    int id;
  }employe;
  initial begin
  employe e1,e2;
    e1.name = "dk";
    e1.salary = 'h30000;
    e1.id = 'd1234;
    $display("E1:%p",e1);
    
    e2.name = "dn";
    e2.salary = 'h40000;
    e2.id = 'd4321;
    $display("E2:%p",e2);
    
    $display("employ e1: name=%s,salary=%0d,id=%0d",e1.name,e1.salary,e1.id);
    $display("employ e2: name=%s,salary=%0d,id=%0d",e2.name,e2.salary,e2.id);
  end
endmodule
