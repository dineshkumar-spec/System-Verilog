module wait_fork;
  initial begin
  fork
    begin
      $display($time,"\tProcess1 of fork 1 started");
      #5;
      $display($time,"\tProcess1 of fork 1 finished");
    end
    
    begin
      subprocess();
    end
  join_any

    disable fork;
    $display($time,"\t After disable fork");
  end
      task subprocess;
        $display($time,"\tSub process strted");
        #10;
        $display($time,"\tSub process finished");
      endtask
endmodule
/*#                    0	Process1 of fork 1 started
#                    0	Sub process strted
#                    5	Process1 of fork 1 finished
#                    5	 After disable fork
# exit*/
