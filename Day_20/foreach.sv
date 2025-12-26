class packet;
  rand byte addr[];
  rand byte data[];
  constraint avalues{foreach(addr[i]) addr[i] inside{4,8,12,16};}
  constraint dvalues{foreach(data[j]) data[j] >4*j;}
  constraint asize{addr.size < 4;}
  constraint dsize{data.size==addr.size;}
endclass

module constraint_foreach;
initial begin
  packet pkt = new();
  repeat(2)begin
    pkt.randomize();
    $display("---------------");
    $display("\taddr-size=%0d data-size=%0d",pkt.addr.size(),pkt.data.size());
    foreach(pkt.addr[i])$display("\taddr=%0d data=%0d",pkt.addr[i],pkt.data[i]);
  end
end
endmodule
/*# ---------------
# 	addr-size=3 data-size=3
# 	addr=8 data=63
# 	addr=12 data=90
# 	addr=4 data=85
# ---------------
# 	addr-size=3 data-size=3
# 	addr=12 data=101
# 	addr=12 data=28
# 	addr=4 data=71*/
