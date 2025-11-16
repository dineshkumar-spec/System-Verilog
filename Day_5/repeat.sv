module repeat_eg;
  int arr[10]='{1,2,3,4,5,6,7,8,9,10};
  int i;
initial begin
  repeat($size(arr))begin
    $display("array[%0d]=%0d",i,arr[i]);
    i++;
  end
  repeat(5)begin
    $display("VLSI Design Verification");
  end
end
  
endmodule
