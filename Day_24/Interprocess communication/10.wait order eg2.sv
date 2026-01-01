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
      #1;
      $display($time,"\t Triggering the event 3");
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
/*Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jan  1 07:10 2026
                   0waiting for the event to be triggered
                   1	 Triggering the event 3
                   1	Events triggered out of order
                   2	 Triggering the event 2
                   6	 Triggering the event 1*/
