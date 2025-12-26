class packet;
  rand bit[3:0]addr;
  constraint c1{addr inside {[6:10]};}
endclass

module eg;
initial begin
  packet pkt = new();
  repeat(5)begin
    pkt.randomize() with {addr==8;};
    $display("addr=%0d",pkt.addr);
  end
end
endmodule
/*# KERNEL: addr=8
# KERNEL: addr=8
# KERNEL: addr=8
# KERNEL: addr=8
# KERNEL: addr=8*/
