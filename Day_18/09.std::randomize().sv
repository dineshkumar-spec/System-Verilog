module example;
  int data;
  initial begin
    repeat(10)begin
    std::randomize(data);
    $display("value of data=%0d",data);
    end
  end
endmodule
/* KERNEL: value of data=1039852882
# KERNEL: value of data=1962102891
# KERNEL: value of data=1772129166
# KERNEL: value of data=-9806747
# KERNEL: value of data=-706233211
# KERNEL: value of data=1087925613
# KERNEL: value of data=1606897037
# KERNEL: value of data=-1586228887
# KERNEL: value of data=-1803806293
# KERNEL: value of data=1914942897*/
