module semaphore_eg;
  semaphore sem = new(10);
  initial begin
    $display("In first initial block time=%0t",$time);
    sem.get(6);
    $display("Thread 1:Accessing 6 keys from semaphore at time=%0t",$time);#5;
    sem.put(4);
    $display("Thread 1:Done 4 keys to semaphore at time=%0t",$time);
    #20;
    $display("Thread 1: Still using the remaining 4 keys At time=[%0t]", $time);

  end
  
  initial begin
    $display("In second initial block time=%0t",$time);
    sem.get(9);
    $display("Thread 2:Accessing 7 keys from semaphore at time=%0t",$time);#15;
    sem.put(7);
    $display("Thread 2:Done 7 keys to semaphore at time=%0t",$time);
  end 
endmodule
/*In first initial block time=0
Thread 1:Accessing 6 keys from semaphore at time=0
In second initial block time=0
Thread 1:Done 4 keys to semaphore at time=5
Thread 1: Still using the remaining 4 keys At time=[25]*/
