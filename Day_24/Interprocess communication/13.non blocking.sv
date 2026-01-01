module blocking;
event trans;
  initial begin
    $display($time,"\t Triggering the event");
    ->> trans;
  end
  
  initial begin
    $display($time,"\t triggering the event using wait");
    wait(trans.triggered);
    $display($time,"\t After triggered the event using wait");
  end
  
  initial begin
    $display($time,"\t triggering the event using @");
    @(trans.triggered);
    $display($time,"\t After triggered the event using @");
  end
  
endmodule
/*                   0	 Triggering the event
                   0	 triggering the event using wait
                   0	 After triggered the event using wait
                   0	 triggering the event using @
                   0	 After triggered the event using @*/
