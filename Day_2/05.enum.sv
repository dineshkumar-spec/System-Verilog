module enu;
  typedef enum{DINESH,KUMAR,VLSI,ENGINEER}job;
   job a,b;
    int i;
  initial begin
    $display("%s",a.name());
    a=a.prev();
    $display("Previous %s",a.name());
    b=a;
    $display("%s",b.name());
    b=job'(a+1);//here out of boundry so its blank 
    $display("%s",b.name());
    $display("Last %s",a.name());
    a=a.next();
    $display("Next %s",a.name()); 
  end
endmodule
