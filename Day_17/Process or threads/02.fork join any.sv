module fork_joinany;
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
  join_any
    $display($time,"\toutside fork join");
    $finish;
  end
endmodule
/* Process1 started
 Process2 started
 Process1 finished
                    5	outside fork join
*/
