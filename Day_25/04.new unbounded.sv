class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
  this.m = m1;
  endfunction
  
 function void check();
    if(m==null)
      $display("Mailbox is not full");
    else
      $display("Mailbox is created");
 endfunction
  task tra_data();
    for(i=0;i<5;i++)begin
    a++;
      m.put(a);
      $display("value of a = %0d",a);
    end
    $display("No of messages in mailbox = %0d",m.num());
  endtask
endclass

module tb;
  A a1;
  mailbox main = new();
  initial begin
    a1 = new(main);
    a1.check();
    
    repeat(2)begin
      a1.tra_data();
    end
  end
endmodule
/*Mailbox is created
value of a = 1
value of a = 2
value of a = 3
value of a = 4
value of a = 5
No of messages in mailbox = 5
value of a = 6
value of a = 7
value of a = 8
value of a = 9
value of a = 10
No of messages in mailbox = 10*/
