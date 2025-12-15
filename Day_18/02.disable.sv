/*rand_mode(1) means randomization enabled
rand_mode(0) means randomization disabled
The default value of rand_mode is 1, i.e enabled
Once the randomization is disabled, it is required to make rand_mode(1) enable back the randomization
rand_mode can be called as SystemVerilog method, the randomization enables/disable status of a variable can be obtained by calling vairble.rand_mode().
the rand_mode method returns 1 if randomization is enabled else returns 0*/
class packet;
  rand byte addr1;
  rand byte data;
endclass

module randomize_eg;
  initial begin
    packet pkt = new();
    
    pkt.addr1.rand_mode(0);
    pkt.randomize();
    $display("\taddr1=%0d \taddr2=%0d",pkt.addr1,pkt.data);
    
    $display("\t addr1.rand_mode=%0d addr2.rand_mode=%0d",pkt.addr1.rand_mode(),pkt.data.rand_mode());
  end
endmodule
/* 	addr1=0 	addr2=37
# 	 addr1.rand_mode=0 addr2.rand_mode=1*/
