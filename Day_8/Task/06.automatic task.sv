module swap;
  int a,b;
  task automatic swapping(ref int a,b);
  int temp;
  temp=a;
  a=b;
  b=temp;
  endtask
  
  initial begin
  a=5;b=6;
    swapping(a,b);
    $display("Swapped numbers are a=%0d|b=%0d",a,b);
  end
endmodule
