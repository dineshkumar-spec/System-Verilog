module eg;
  event e1;
  task process_A();
  #10;
    $display("Before event trigerring e1 time=%0t",$time);
    ->e1;
    $display("After event trigerring e1 time=%0t",$time);
  endtask
  
  task process_B();
    $display("waiting for event to be triggered time=%0t",$time);
    @e1;
    $display("Done event to be triggered time=%0t",$time);
  endtask
  
  initial begin
  fork
    process_A();
    process_B();
  join
  end
endmodule
/*# waiting for event to be triggered time=0
# Before event trigerring e1 time=10
# After event trigerring e1 time=10
# Done event to be triggered time=10*/
