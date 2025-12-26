class packet;
  rand bit[3:0]addr;
endclass

module eg;
initial begin
  packet pkt = new();
  repeat(5)begin
    pkt.randomize()with{addr>8;};
    $display("addr=%0d",pkt.addr);
  end
end
endmodule
/*# addr=11
# addr=14
# addr=11
# addr=12
# addr=14*/
