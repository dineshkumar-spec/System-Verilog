module arr_reduction;
  int arr[10];
  int result;
  initial begin
    foreach(arr[i])begin
      arr[i]=i;
      result = arr.sum();
      $display(result);
    end
  end
endmodule
-----------------------------------------------------------------
module arr_reduction;
  int arr[]='{10,89,6,43,1};
  int result;
  initial begin
    $display("sum is %0d",arr.sum());
    $display("product is %0d",arr.product());
    $display("and is %0d",arr.and());
    $display("or is %0d",arr.or());
    $display("xor is %0d",arr.xor());
    foreach(arr[i])begin
      arr[i]=i;
      result = arr.sum();
      $display(" sum is %0d",result);
    end
  end
endmodule
