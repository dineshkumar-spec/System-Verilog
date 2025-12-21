module example;
  int data;
  bit[3:0]value;
  initial begin
    repeat(10)begin
    data=$urandom;
    value=$urandom%10;
    $display("value f data=%0d|value=%0d",data,value);
    end
  end
  
  initial begin
    repeat(5)begin
    data=$urandom_range(2,12);
    $display("value of data=%0d",data);
    end
  end
endmodule
/*# value f data=-834229725|value=2
# value f data=1555380746|value=5
# value f data=-1476164168|value=0
# value f data=331422400|value=8
# value f data=-1858438862|value=0
# value f data=-1544933186|value=5
# value f data=1069077208|value=7
# value f data=1399642961|value=7
# value f data=1637257170|value=2
# value f data=1993605954|value=9
# value of data=3
# value of data=9
# value of data=5
# value of data=8
# value of data=8*/
