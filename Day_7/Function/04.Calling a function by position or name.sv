module eg;
  function void fn_pass(string name,int val,int roll);
    $display("Function calling in position:Name = %s|Value = %0d| Roll no =  %0d",name,val,roll);
  endfunction
  
  initial begin
    fn_pass(.name("Dineshkumar"), .val(100), .roll(10));
  end
endmodule
