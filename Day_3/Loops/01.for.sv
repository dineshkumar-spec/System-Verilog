module for_example;
  initial begin
  int array[15];
  for(int i=0;i<$size(array);i++)begin
    array[i]=i*i;
    $display("array[%0d]=%0d",i,array[i]);
  end
  end
endmodule
/* array[0]=0
# KERNEL: array[1]=1
# KERNEL: array[2]=4
# KERNEL: array[3]=9
# KERNEL: array[4]=16
# KERNEL: array[5]=25
# KERNEL: array[6]=36
# KERNEL: array[7]=49
# KERNEL: array[8]=64
# KERNEL: array[9]=81
# KERNEL: array[10]=100
# KERNEL: array[11]=121
# KERNEL: array[12]=144
# KERNEL: array[13]=169
# KERNEL: array[14]=196*/
