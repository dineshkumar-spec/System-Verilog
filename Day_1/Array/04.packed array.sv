module packedarr;
  logic[2:0][3:0]arr='{4'b1010,4'b1111,4'b0011};
  initial begin
    foreach(arr[i])begin
      $display("array[%0d]=[%0d]",i,arr[i]);
    end
  end
endmodule
//---------------
module packedarr;
  logic[3:0][3:0]arr;
  initial begin
    arr=16'h48754989;
    $display("array[%0h]",arr);
    foreach(arr[i])begin
      $display("array[%0d]=[%0d]",i,arr[i]);
    end
  end
endmodule
