//1. Sort the contents of a dynamic array which contains 10 elements in it.
module dyn;
  int arr[];
  initial begin
    arr = new[10];
    arr = '{33,56,9,6,3,1,40,67,21,100};
    arr.sort();
    $display("After sorting of array ",arr);
  end
endmodule
