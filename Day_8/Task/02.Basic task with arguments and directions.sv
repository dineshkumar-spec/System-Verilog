module task_eg;
  bit done;
  task compare(input int a,b, output c);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
	  #5; done=1;
  endtask

  initial begin
 
    compare(5,10,done);
    if (done)$display("Comparision completed at time %0t",$time);
    compare(100,100,done);
    if (done)$display("Comparision completed at time %0t",$time);
    compare(634,34,done);
    if (done)$display("Comparision completed at time %0t",$time);
  end
endmodule
