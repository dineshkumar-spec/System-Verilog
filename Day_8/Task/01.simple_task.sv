module task_eg;
  int a=10,b=10,c;
  task alu(input int a,b,output int c);
    c=a*b;
     $display("Multiplication of numbers are a=%0d, b=%0d, c=%0d",a,b,c);
   #4; c=a+b;
    $display("Addition of numbers are a=%0d, b=%0d, c=%0d",a,b,c);
   #4; c=a-b;
    $display("Subtraction of numbers are a=%0d, b=%0d, c=%0d",a,b,c);
   #4; c=a/b;
    $display("Divisioion of numbers are a=%0d, b=%0d, c=%0d",a,b,c);
  endtask
  
  initial begin;
    alu(9,8,c);
  end
endmodule
