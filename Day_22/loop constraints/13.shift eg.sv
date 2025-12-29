//shift example
class eg;
  rand bit[31:0] data;
  rand bit[4:0]shift;
  constraint c{data==1 << shift;}
endclass

module code;
  initial begin
    eg e = new();
    repeat(15)begin
    e.randomize();
      $display("data=%0b shift=%0d",e.data,e.shift);
    end
  end
endmodule
/*data=1000000000000 shift=12
data=10000000000000000000 shift=19
data=1000000000000000000000000 shift=24
data=100000000000000000 shift=17
data=1000000000 shift=9
data=10000000000000000000000 shift=22
data=100 shift=2
data=100000000000000000000 shift=20
data=10000000000000000000000000000000 shift=31
data=10000000000000000000000 shift=22
data=10000000000000000000000000000 shift=28
data=1000 shift=3
data=100 shift=2
data=100000000000000000000000000000 shift=29
data=10000000000000000000 shift=19*/
