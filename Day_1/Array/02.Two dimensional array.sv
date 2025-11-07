module array;
  int arr[3][5]='{'{1,2,3,4,5},
                 '{10,20,30,40,50},
                 '{12,22,53,49,45}};
  			
  initial begin
    foreach(arr[i,j])begin
      $display("array[%0d][%0d]=%0d",i,j,arr[i][j]);
   end
  end
endmodule
