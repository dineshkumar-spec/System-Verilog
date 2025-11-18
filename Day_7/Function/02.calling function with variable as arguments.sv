//call by variables
module function_call_by_value;

  function int sum(int a,int b );
  return a+b;
  endfunction
  
  function int mul(int a,b);
  return a*b;
  endfunction
  
  function int sub(int a,b);
  return a-b;
  endfunction
  
    function int div(int a,b);
  return a/b;
  endfunction
  
  initial begin
      int result;
      int a=15,b=10;
    result = sum(a,b);
    $display("Sum is %0d",result);
    
    result = mul(a,b);
    $display("multiplication is %0d",result);
    
    result = sub(a,b);
    $display("Subtraction is %0d",result);
    
    result = div(a,b);
    $display("Division is %0d",result);
  end
endmodule
