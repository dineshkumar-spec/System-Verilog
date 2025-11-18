module function_call_by_value;
  int result;
  function int sum(int a,int b );
  return a+b;
  endfunction
  
  function int mul(int a,b);
  return a*b;
  endfunction
  
  function int sub(int a,b);
  return a-b;
  endfunction
  initial begin
    result = sum(5,6);
    $display("Sum is %0d",result);
    
    result = mul(10,6);
    $display("multiplication is %0d",result);
    
    result = sub(100,10);
    $display("Subtraction is %0d",result);
  end
endmodule
