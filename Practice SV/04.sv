/*Write a constraint so val is always:
even number only*/
class eg;
  rand bit[3:0]val;
  constraint c{val % 2==0;}
endclass

module egx;
  initial begin
    eg e = new();
    repeat(10)begin
    e.randomize();
      $display("val=%0d",e.val);
    end
  end
endmodule
/*# KERNEL: val=4
# KERNEL: val=6
# KERNEL: val=6
# KERNEL: val=2
# KERNEL: val=10
# KERNEL: val=14
# KERNEL: val=2
# KERNEL: val=10
# KERNEL: val=8
# KERNEL: val=14*/
