module packedarr;
  logic[0:2][0:3][0:3]arr;
  initial begin
    arr[0]=16'h4875;
    $display("first value",arr[0]);
    arr[1]=16'h4989;
    $display("second value",arr[1]);
    arr[2]=16'habcd;
    $display("third value",arr[2]);
    arr=48'h4875_4989_abcd;
    $display("array[%0h]",arr);
    foreach(arr[i])begin
      $display("array[%0h]=[%0h]",i,arr[i]);
      foreach(arr[i][j])begin
        $display("array[%0h][%0h]=[%0h]",i,j,arr[i][j]);
    end
  end
  end
endmodule
/*# KERNEL: first value18549
# KERNEL: second value18825
# KERNEL: third value43981
# KERNEL: array[48754989abcd]
# KERNEL: array[0]=[4875]
# KERNEL: array[0][0]=[4]
# KERNEL: array[0][1]=[8]
# KERNEL: array[0][2]=[7]
# KERNEL: array[0][3]=[5]
# KERNEL: array[1]=[4989]
# KERNEL: array[1][0]=[4]
# KERNEL: array[1][1]=[9]
# KERNEL: array[1][2]=[8]
# KERNEL: array[1][3]=[9]
# KERNEL: array[2]=[abcd]
# KERNEL: array[2][0]=[a]
# KERNEL: array[2][1]=[b]
# KERNEL: array[2][2]=[c]
# KERNEL: array[2][3]=[d]*/
