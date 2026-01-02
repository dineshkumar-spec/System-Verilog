class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
    this.m=m1;
  endfunction
  
  task tra_data;
    for(i=0;i<3;i++)begin
      a++;
   m.put(a);
    $display("[%0t]Transmitter : value of a = %0d",$time,a);
   end
    $display("put successful");
  endtask
endclass

class B;
  int a;
  int i;
  mailbox m;
  
  function new (mailbox m2);
    this.m = m2;
  endfunction
  
  task rec_data;
    for(i=0;i<3;i++)begin
      m.get(a);
      $display("[%0t]Receiver: value of a = %0d",$time,a);
    end
  $display("get successfull");
  endtask
  
endclass
module tb;
  A a1;
  B b1;
  mailbox main = new(2);
  initial begin
    a1 = new(main);
    b1 = new(main);
    repeat(5)begin
      a1.tra_data();
      b1.rec_data();
    end
  end
endmodule
