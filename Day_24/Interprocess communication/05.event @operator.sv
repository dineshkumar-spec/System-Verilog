module eg;
  event ev_1;
  initial begin
  fork
    begin
      //process 1
    #40;
      $display($time,"\t Triggering the event");
      ->ev_1;
    end
    //process 2
    begin
      $display($time,"\twaiting for the event to trigger");
      @(ev_1.triggered);
      $display($time,"\tEvent triggered");
    end
  join
  end
endmodule
/*                   0	waiting for the event to trigger
                  40	 Triggering the event
                  40	Event triggered*/
