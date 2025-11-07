module packedarr;
  logic[2:0][3:0]arr='{4'b1010,4'b1111,4'b0011};
  initial begin
    foreach(arr[i])begin
      $display("array[%0d]=[%0d]",i,arr[i]);
    end
  end
endmodule
