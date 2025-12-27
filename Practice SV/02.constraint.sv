/*Write a constraint to ensure:
a > b
Minimum difference = 5*/

class eg;
  rand bit[3:0]a;
  rand bit[3:0]b;
  constraint c{  a > b + 5;}
endclass

module egx;
  initial begin
    eg e = new();
    repeat(10)begin
    e.randomize();
      $display("a=%0d,b=%0d",e.a,e.b);
    end
  end
endmodule
/*# KERNEL: a=15,b=3
# KERNEL: a=15,b=9
# KERNEL: a=13,b=4
# KERNEL: a=7,b=1
# KERNEL: a=10,b=1
# KERNEL: a=7,b=1
# KERNEL: a=9,b=3
# KERNEL: a=13,b=6
# KERNEL: a=9,b=2
# KERNEL: a=13,b=0*/
