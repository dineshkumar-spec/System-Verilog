//This method is also used to get specified number of keys from the semaphore. But unlike get() method, if keys are unavailable it will not wait and returns 0 and the next step executes.
module semaphore_exa_get_try;
  semaphore car_key = new(1);
  initial begin 
    fork
      begin
        $display("Person A Waiting for car, time=%0t", $time);
        car_key.get(1);
        $display("Person A Got the car, time=%0t", $time);
        #10;
        car_key.put(1);
        $display("Person A Returning back car, time=%0t", $time);
      end 

      begin 
        #1;
        $display("Person B Waiting for car, time=%0t", $time);
        car_key.try_get(1);
        $display("Person B Got the car, time=%0t", $time);
        #10;
        car_key.put(1);
        $display("Person B Returning back car, time=%0t", $time);
      end
    join
  end endmodule 
/*Person A Waiting for car, time=0
Person A Got the car, time=0
Person B Waiting for car, time=1
Person B Got the car, time=1
Person A Returning back car, time=10
Person B Returning back car, time=11*/
