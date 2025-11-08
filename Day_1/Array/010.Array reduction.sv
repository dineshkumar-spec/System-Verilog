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
