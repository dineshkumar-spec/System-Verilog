/*Create a class with two rand variables addr and data and constrain:
addr between 10 and 200
data between 0 and 255*/
class eg;
  rand bit[7:0]addr;
  rand bit[7:0]data;
  constraint c1{addr inside{[10:200]};}
  constraint c2{data inside{[0:255]};}
endclass

module const_eg;
initial begin
  eg e = new();
  repeat(10)begin
    e.randomize();
    $display("addr=%0d data=%0d",e.addr,e.data);
  end
end
endmodule
/*# KERNEL: addr=158 data=66
# KERNEL: addr=24 data=92
# KERNEL: addr=72 data=71
# KERNEL: addr=62 data=109
# KERNEL: addr=75 data=239
# KERNEL: addr=138 data=81
# KERNEL: addr=158 data=67
# KERNEL: addr=28 data=47
# KERNEL: addr=118 data=208
# KERNEL: addr=23 data=61*/
