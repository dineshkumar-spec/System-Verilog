module eg;
  function automatic int array(ref int arr[5]);
    foreach(arr[i])begin
      arr[i]=i+1;
    end
    $display("Array elements starts from 1");
  endfunction
  
  initial begin
    int arr[5]='{1,2,3,4,5};
    void '(array(arr));
    foreach(arr[i])
      $display(" arr[%0d] = %0d",i,arr[i]);
  end
endmodule
