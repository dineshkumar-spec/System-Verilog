class packet;
  rand byte addr1;
  rand byte data;
endclass

module randomize_eg;
  initial begin
    packet pkt = new();
    
        $display("\t addr1.rand_mode=%0d addr2.rand_mode=%0d",pkt.addr1.rand_mode(),pkt.data.rand_mode());
    pkt.rand_mode(0);//for all variables its 0
    pkt.randomize();
    $display("\taddr1=%0d \taddr2=%0d",pkt.addr1,pkt.data);
    
    $display("\t addr1.rand_mode=%0d addr2.rand_mode=%0d",pkt.addr1.rand_mode(),pkt.data.rand_mode());
  end
endmodule
/*# 	 addr1.rand_mode=1 addr2.rand_mode=1
# 	addr1=0 	addr2=0
# 	 addr1.rand_mode=0 addr2.rand_mode=0*/
