class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
    this.m=m1;
  endfunction
  
  task tra_data;
  a++;
    m.put(a);
    $display("[%0t]Transmitter : value of a = %0d",$time,a);
    $display("No of messages in mailbox=%0d",m.num());
  endtask
endclass

module tb;
  A a1;
  mailbox main = new();
  initial begin
    a1 = new(main);
    repeat(25)begin
      a1.tra_data();
    end
  end
endmodule
/*[0]Transmitter : value of a = 1
No of messages in mailbox=1
[0]Transmitter : value of a = 2
No of messages in mailbox=2
[0]Transmitter : value of a = 3
No of messages in mailbox=3
[0]Transmitter : value of a = 4
No of messages in mailbox=4
[0]Transmitter : value of a = 5
No of messages in mailbox=5
[0]Transmitter : value of a = 6
No of messages in mailbox=6
[0]Transmitter : value of a = 7
No of messages in mailbox=7
[0]Transmitter : value of a = 8
No of messages in mailbox=8
[0]Transmitter : value of a = 9
No of messages in mailbox=9
[0]Transmitter : value of a = 10
No of messages in mailbox=10
[0]Transmitter : value of a = 11
No of messages in mailbox=11
[0]Transmitter : value of a = 12
No of messages in mailbox=12
[0]Transmitter : value of a = 13
No of messages in mailbox=13
[0]Transmitter : value of a = 14
No of messages in mailbox=14
[0]Transmitter : value of a = 15
No of messages in mailbox=15
[0]Transmitter : value of a = 16
No of messages in mailbox=16
[0]Transmitter : value of a = 17
No of messages in mailbox=17
[0]Transmitter : value of a = 18
No of messages in mailbox=18
[0]Transmitter : value of a = 19
No of messages in mailbox=19
[0]Transmitter : value of a = 20
No of messages in mailbox=20
[0]Transmitter : value of a = 21
No of messages in mailbox=21
[0]Transmitter : value of a = 22
No of messages in mailbox=22
[0]Transmitter : value of a = 23
No of messages in mailbox=23
[0]Transmitter : value of a = 24
No of messages in mailbox=24
[0]Transmitter : value of a = 25
No of messages in mailbox=25*/
