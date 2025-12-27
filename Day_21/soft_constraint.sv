// Code your testbench here
// or browse Examples
class packet;
  rand bit[3:0]addr;
  constraint c1{ soft addr<5;}
endclass

module eg;
initial begin
  packet pkt = new();
  repeat(5)begin
    pkt.randomize() with {addr>5;};
    $display("addr=%0d",pkt.addr);
  end
end
endmodule

/*# KERNEL: addr=12
# KERNEL: addr=7
# KERNEL: addr=13
# KERNEL: addr=14
# KERNEL: addr=10*/
