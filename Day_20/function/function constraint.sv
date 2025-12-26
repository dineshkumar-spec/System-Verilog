class packet;
  rand bit[3:0]start_addr;
  rand bit[3:0]end_addr;
  constraint st_c{start_addr==s_addr(end_addr);}
  
  function bit[3:0]s_addr(bit[3:0]e_addr);
    if(e_addr<4)
      s_addr=0;
    else
      s_addr = e_addr - 4;
  endfunction
endclass

module eg;
  initial begin
    packet pkt = new();
    repeat(3)begin
      pkt.randomize();
      $display("start_addr=%0d end_addr=%0d",pkt.start_addr,pkt.end_addr);
    end
  end
endmodule
/*start_addr=1 end_addr=5
start_addr=0 end_addr=4
start_addr=2 end_addr=6*/
