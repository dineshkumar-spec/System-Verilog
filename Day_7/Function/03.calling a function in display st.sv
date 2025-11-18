//calling function in display statement
module eg;
  function string odd_even ();
    int n=987;
  
    if(n%2==0)
      return "EVEN";
    else
      return "ODD";

  endfunction
  
  initial begin
    $display(odd_even());//calling in display statement 
  end
endmodule
