module task_eg;
  int a,b;int out;
  task automatic multiply(const ref int a,b,output int out);//gives error by using const unable to change value  
  a=a*b;
  out=a;
  endtask
  
  initial begin
  a=10;b=3;
    multiply(a,b,out);
      $display("Out = %0d|a=%0d|b=%0d",out,a,b);
  end
endmodule
