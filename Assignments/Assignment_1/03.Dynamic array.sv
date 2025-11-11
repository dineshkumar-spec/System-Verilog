//3.dynamic array
module dyn_arr;
  int arr[];
  initial begin
    arr=new[8];
    arr='{23,15,98,55,09,46,8,3};
    foreach(arr[i])begin
      $display("Elements are [%0d]=%0d",i,arr[i]);
    end
    arr.size();
    $display("Size of the array is %p",arr);
    arr.shuffle();
    $display("Shffled elements are %p",arr);
  end
endmodule
