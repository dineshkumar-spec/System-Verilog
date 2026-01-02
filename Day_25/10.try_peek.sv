class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
  this.m = m1;
  endfunction
  
  task tra_data;
    for(i=0;i<1;i++)begin
    a++;
      m.put(a);
        $display("%0t Transmitter: value of a=%0d",$time,a);
    end
    $display("put successfull");
    $display("Messages in mailbox = %0d", m.num());
  endtask
endclass

class B;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m2);
  this.m = m2;
  endfunction
  
  task rec_data();
    for(i=0;i<2;i++)begin
      if (m.try_peek(a))begin
      $display("%0t peeking value of a=%0d",$time,a);
        $display("peek successful");end
      else
        $display("failed peek");
      
      m.get(a);
      $display("[%0t] 2. Receiver: value of a = %0d", $time, a);
      $display("get successful");
      $display("Messages in mailbox = %0d", m.num());
    end
  endtask
endclass

module tb;
  A a1;
  B b1;
  mailbox main = new(2);
  initial begin
    a1 = new(main);
    b1= new(main);
    
      a1.tra_data();
      $display("...............................................");
      b1.rec_data();
      $display("...............................................");
      b1.rec_data();
      $display("End of program");
  end
endmodule
/*0 Transmitter: value of a=1
put successfull
Messages in mailbox = 1
...............................................
0 peeking value of a=1
peek successful
[0] 2. Receiver: value of a = 1
get successful
Messages in mailbox = 0
failed peek*/
