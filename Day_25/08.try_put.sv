class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
  this.m = m1;
  endfunction
  
  task tra_data;
    for(i=0;i<4;i++)begin
    a++;
      if(m.try_put(a))
        $display("%0t Transmitter: value of a=%0d",$time,a);
      else
        $display("failed while trying to put data=%0d",a);
    end
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
    repeat(3)begin
    m.get(a);
      $display("%0t Receiver:value of a=%0d",$time,a);
    end
  endtask
endclass

module tb;
  A a1;
  B b1;
  mailbox main = new(3);
  initial begin
    a1 = new(main);
    b1= new(main);
    repeat(2)begin
      a1.tra_data();
      b1.rec_data();
    end
  end
endmodule
/*0 Transmitter: value of a=1
0 Transmitter: value of a=2
0 Transmitter: value of a=3
failed while trying to put data=4
0 Receiver:value of a=1
0 Receiver:value of a=2
0 Receiver:value of a=3
0 Transmitter: value of a=5
0 Transmitter: value of a=6
0 Transmitter: value of a=7
failed while trying to put data=8
0 Receiver:value of a=5
0 Receiver:value of a=6
0 Receiver:value of a=7*/
