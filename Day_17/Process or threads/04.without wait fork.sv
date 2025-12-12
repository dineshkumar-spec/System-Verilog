module wait_fork;
  initial begin
  fork
    begin
      $display($time,"\tProcess1 started");
      #5;
      $display($time,"\tProcess1 finished");
    end
    
    begin
      $display($time,"\tProcess2 started");
      #20;
      $display($time,"\tProcess2 finished");
    end
  join_any
   // wait fork;
    $display($time,"\toutside fork join");
    $finish;
  end
endmodule
/*  0	Process1 started
                   0	Process2 started
                   5	Process1 finished
                   5	outside fork join*/
