module eg;
  event ev_1;
  event ev_2;
  event ev_3;
  initial begin
  fork
    begin
      #6;
      //process 1
      $display($time,"\t Triggering the event 1");
      ->ev_1;
    end
    //process 2
    begin 
      #2;
      $display($time,"\t Triggering the event 2");
      ->ev_2;
    end
    //process 3
    begin 
      #8;
      $display($time,"\t Triggering the event 2");
      ->ev_3;
    end
    
    begin
      $display($time,"waiting for the event to be triggered");
      wait_order(ev_2,ev_1,ev_3)
      $display($time,"\tEvents triggered inorder");
      else
        $display($time,"\tEvents triggered out of order");
    end
  join
  end
  
endmodule
/*                   0waiting for the event to be triggered
                   2	 Triggering the event 2
                   6	 Triggering the event 1
                   8	 Triggering the event 2
                   8	Events triggered inorder*/
