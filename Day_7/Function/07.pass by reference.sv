module eg;
int a,b;
  int out;
  function automatic int fn_multiply(ref int a, b);//pass by ref
    a=a*b;//updated value  update in global ariable
    return a;
  endfunction
  
  initial begin
 
    
    a=10;b=20;
    out=fn_multiply(a,b);
    $display("Function out =%0d|a=%0d|b=%0d",out,a,b);
  end
endmodule
