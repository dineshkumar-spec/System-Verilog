module ass_array;
  bit[7:0]arr[int];
  int index;
  initial begin
    arr[5]=2;
    arr[10]=1;
    arr[9]=10;
    arr[19]=25;
    arr[70]=100;
    arr[56]=82;
    foreach (arr[i])$display("Array[%0d]=%0d",i,arr[i]);
    //size and num
    $display("Size of the array is %0d ",arr.size());
    $display("Size of the array is %0d ",arr.num());
    //exit
    if(arr.exists(19))$display("Index 19 is present");
    else $display("Index 19 is not present");
    //first,last,prev,next
    arr.first(index);
    $display("First index value is %0d",index);
    arr.last(index);
    $display("Last index value is %0d",index);
    index=56;
    arr.prev(index);
    $display("Previous index of 56 is %0d",index);
    index=5;
    arr.next(index);
    $display("Next index of 5 is %0d",index);
    //delete
    arr.delete(56);
    $display("After deleting index 56");
    foreach(arr[i])$display("after deleting [%0d]=%0d",i,arr[i]);
   arr.delete();  
  $display("After deleting all indexes",arr.size());
  end
endmodule
