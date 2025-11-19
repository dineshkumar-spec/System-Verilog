module task_eg;
  int a,b;int out;
  task multiply( int a,b,output int out);
  a=a*b; //value of a is updated, it won't update global variables a and b
  out=a;
  endtask
  
  initial begin
  a=10;b=3;
    multiply(a,b,out);
      $display("Out = %0d|a=%0d|b=%0d",out,a,b);
  end
endmodule
