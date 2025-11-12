module enu;
  typedef enum{DINESH,KUMAR,VLSI,ENGINEER}job;
  initial begin
  job a;
    $display("First %s",a.name());
    a=a.prev();
    $display("Previous %s",a.name());
    a=a.last();
    $display("Last %s",a.name());
    a=a.next();
    $display("Next %s",a.name()); 
  end
endmodule
