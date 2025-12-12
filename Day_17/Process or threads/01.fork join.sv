module fork_join;
  initial begin
  fork
    begin
      $display("Process1 started");
      #5;
      $display("Process1 finished");
    end
    
    begin
      $display("Process2 started");
      #20;
      $display("Process2 finished");
    end
  join
    $display($time,"\toutside fork join");
    $finish;
  end
endmodule
/*# Process1 started
# Process2 started
# Process1 finished
# Process2 finished
#                   20	outside fork join*/
