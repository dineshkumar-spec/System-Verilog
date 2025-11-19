module eg;
int a,b;
  int out;
  int d;
  function automatic fn_multiply(const int a, b);//const causes error because it uable to change value 
    a=a*b;//updated value  update in global ariable
    d=a;
    return a;
  endfunction
  
  initial begin
 
    
    a=10;b=20;
    out=fn_multiply(a,b);
    $display("Function out =%0d|a=%0d|b=%0d",out,a,b);
  end
endmodule
