module union_eg;
   union {
    int salary;
     int  id;
  } employ;
  initial begin
  employ.id=10;
    employ.salary=32'h45678;
    $display("salary=%0h|id=%0d",employ.salary,employ.id);
    
    employ.salary=32'h87654;
    employ.id=100;
    $display("salary=%0h|id=%0d",employ.salary,employ.id);
  end
endmodule
