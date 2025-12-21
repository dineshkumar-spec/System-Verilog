class example;
  rand bit  [7:0] addr;
  randc bit[3:0] data;
  rand bit pkt_length;
  bit parity;
  function void pre_randomize();
    $display("addr=%0d|data=%0d|pkt_length=%0d|parity=%0d",addr,data,pkt_length,parity);
  endfunction
  
  
  function void post_randomize();
    parity=^data;
    $display("addr=%0d|data=%0d|pkt_length=%0d|parity=%0d",addr,data,pkt_length,parity);
  endfunction
endclass

module rand_method;
initial begin
  example e = new();
  repeat(3)begin
    e.randomize();
  end
  $display("Disabling data variable");
  e.data.rand_mode(0);
  e.randomize();
  
  $display("Enabling data variable");
  e.data.rand_mode(1);
  e.randomize();
end
endmodule
/*# KERNEL: addr=0|data=0|pkt_length=0|parity=0
# KERNEL: addr=218|data=9|pkt_length=0|parity=0
# KERNEL: addr=218|data=9|pkt_length=0|parity=0
# KERNEL: addr=78|data=11|pkt_length=0|parity=1
# KERNEL: addr=78|data=11|pkt_length=0|parity=1
# KERNEL: addr=86|data=2|pkt_length=1|parity=1
# KERNEL: Disabling data variable
# KERNEL: addr=86|data=2|pkt_length=1|parity=1
# KERNEL: addr=32|data=2|pkt_length=1|parity=1
# KERNEL: Enabling data variable
# KERNEL: addr=32|data=2|pkt_length=1|parity=1
# KERNEL: addr=165|data=6|pkt_length=1|parity=0*/
