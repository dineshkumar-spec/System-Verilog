module break_continue;
  int arr[10]='{78,9,32,4,56,1,3,9,18,33};
  int i;
  initial begin
    for(i=0;i<$size(arr);i++)begin
      $display("array[%0d]=%0d",i,arr[i]);
      arr[i]=i*i;
    end
       $display("-----------------------------");
    
    //break
    for(i=0;i<$size(arr);i++)begin
      if(i==5)break;
        $display("array[%0d]=%0d",i,arr[i]);

    end
          $display("-----------------------------");
    //continue
    for(i=0;i<$size(arr);i++)begin
      if(i==5)continue;
        $display("array[%0d]=%0d",i,arr[i]);
    end
  end
endmodule
