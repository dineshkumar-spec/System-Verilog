module dynamicarray();
  int array[];
  initial begin
    array = new[5];
    array = '{9,7,5,3,1};
    foreach(array[i])begin
      $display("array [%0d]=%0d",i,array[i]);
    end
    $display("size of array=%0d",array.size());
    array=new[8](array);
    $display("Resize of array=%0d",array.size());
    array = new[6];
    $display("size of array after overridding=%0d",array.size());
    foreach(array[i])begin
      $display("array [%0d]=%0d",i,array[i]);end
    array.delete();
    $display("size of array after deleting=%0d",array.size());
  end
endmodule
