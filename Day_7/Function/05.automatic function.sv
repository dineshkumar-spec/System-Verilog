//factorial---automatic function allocates separate memory for al variables
module automatic_eg;
  function automatic int factorial(int n);
    if(n<=1)
      return 1;
    else
      return n*factorial(n-1);
  endfunction
  
  initial begin
    $display("Factorial = %0d",factorial(5));
  end
endmodule
