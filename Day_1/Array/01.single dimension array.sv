module array;
  int arr[5]='{1,2,3,4,5};
  initial begin
    foreach(arr[i])begin
      $display("array[%0d]=%0d",i,arr[i]);
   end
  end
endmodule
