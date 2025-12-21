class packet;
  rand bit[3:0]addr;
  rand bit[3:0]start_addr;
  rand bit[3:0]end_addr;
  constraint addr_range{addr inside{[start_addr:end_addr]};}
endclass

module eg;
  initial begin
    packet p = new();
    repeat(10)begin
      p.randomize();
      $display("start_addr=%0d|end_addr=%0d",p.start_addr,p.end_addr);
      $display("addr=%0d",p.addr);
    end
  end
endmodule
/*# KERNEL: start_addr=6|end_addr=12
# KERNEL: addr=8
# KERNEL: start_addr=5|end_addr=13
# KERNEL: addr=11
# KERNEL: start_addr=9|end_addr=15
# KERNEL: addr=9
# KERNEL: start_addr=0|end_addr=14
# KERNEL: addr=13
# KERNEL: start_addr=5|end_addr=11
# KERNEL: addr=5
# KERNEL: start_addr=0|end_addr=11
# KERNEL: addr=9
# KERNEL: start_addr=1|end_addr=9
# KERNEL: addr=5
# KERNEL: start_addr=2|end_addr=13
# KERNEL: addr=4
# KERNEL: start_addr=0|end_addr=14
# KERNEL: addr=11
# KERNEL: start_addr=4|end_addr=13
# KERNEL: addr=8*/
