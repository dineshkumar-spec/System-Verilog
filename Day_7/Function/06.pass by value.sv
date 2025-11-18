module eg;
int a,b;
  int out;
  function int fn_multiply(int a=5,int b=6);//pass by value
    a=a*b;//updated value not update in global ariable
    return a;
  endfunction
  
  initial begin
   out=fn_multiply();//no argument
    $display("Function out =%0d|a=%0d|b=%0d",out,a,b);
    
    a=10;b=20;
    out=fn_multiply(a,b);
    $display("Function out =%0d|a=%0d|b=%0d",out,a,b);
  end
endmodule
