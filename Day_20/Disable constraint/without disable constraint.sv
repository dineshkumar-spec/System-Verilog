class packet;
  rand bit[3:0] addr;
  constraint addr_range{addr inside{5,10,2};}
endclass

module eg;
  initial begin
    packet pkt = new();
    pkt.randomize();
    $display("addr=%0d",pkt.addr);
  end
endmodule
//addr=2
