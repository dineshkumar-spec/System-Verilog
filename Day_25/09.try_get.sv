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
      m.put(a);
        $display("%0t Transmitter: value of a=%0d",$time,a);
    end
    $display("put successfull");
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
    repeat(5)begin
      if(m.try_get(a))
      $display("%0t Receiver:value of a=%0d",$time,a);
      else
        $display("failed while trying to put data=%0d",a);
    end
    $display("get successfull");
  endtask
endclass

module tb;
  A a1;
  B b1;
  mailbox main = new(4);
  initial begin
    a1 = new(main);
    b1= new(main);
    repeat(2)begin
      a1.tra_data();
      b1.rec_data();
    end
  end
endmodule
/*In the above fig, you can see that mail box is of size 4 but we are trying to pass 4 data, but at receiver side we are trying to get 5 data at a time. 
So at first we are transmitting a values 1,2,3,4 and at receiver side we are waiting for the fifth data as well. Since it is non blocking method,
it will go to the next set of execution and prints ("get successful").*/

/*0 Transmitter: value of a=1
0 Transmitter: value of a=2
0 Transmitter: value of a=3
0 Transmitter: value of a=4
put successfull
0 Receiver:value of a=1
0 Receiver:value of a=2
0 Receiver:value of a=3
0 Receiver:value of a=4
failed while trying to put data=4
get successfull
0 Transmitter: value of a=5
0 Transmitter: value of a=6
0 Transmitter: value of a=7
0 Transmitter: value of a=8
put successfull
0 Receiver:value of a=5
0 Receiver:value of a=6
0 Receiver:value of a=7
0 Receiver:value of a=8
failed while trying to put data=8
get successfull*/
