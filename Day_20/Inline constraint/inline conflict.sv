class packet;
  rand bit[3:0]addr;
  constraint c1{addr>5;}
endclass

module eg;
initial begin
  packet pkt = new();
  repeat(5)begin
    pkt.randomize() with {addr<5;};
    $display("addr=%0d",pkt.addr);
  end
end
endmodule
/* RCKERNEL: Warning: RC_0024 testbench.sv(10): Randomization failed. The condition of randomize call cannot be satisfied.
# RCKERNEL: Info: RC_0109 testbench.sv(10): ... after reduction pkt.addr to 3'(pkt.addr)
# RCKERNEL: Info: RC_0103 testbench.sv(10): ... the following condition cannot be met: (5<pkt.addr)&&(pkt.addr<5)
# RCKERNEL: Info: RC_1007 testbench.sv(1): ... see class 'packet' declaration.
# KERNEL: addr=0
# KERNEL: addr=0
# KERNEL: addr=0
# KERNEL: addr=0*/
