module wait_fork;
  initial begin
  fork
    begin
      $display($time,"\tProcess1 of fork 1 started");
      #5;
      $display($time,"\tProcess1 of fork 1 finished");
    end
    
    begin
      $display($time,"\tProcess2 of fork 1 started");
      #20;
      $display($time,"\tProcess2 of fork 1 finished");
    end
  join_any
    
     fork
    begin
      $display($time,"\tProcess1 of fork 2 started");
      #5;
      $display($time,"\tProcess1 of fork 2 finished");
    end
    
    begin
      $display($time,"\tProcess2 of fork 2 started");
      #20;
      $display($time,"\tProcess2 of fork 2 finished");
    end
     join_none
    disable fork;
    $display($time,"\t After disable fork");
  end
endmodule
/*#                    0	Process1 of fork 1 started
#                    0	Process2 of fork 1 started
#                    5	Process1 of fork 1 finished
#                    5	 After disable fork*/
