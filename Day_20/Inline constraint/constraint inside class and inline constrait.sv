class packet;
  rand bit[3:0]addr;
  rand bit[3:0]data;
  constraint c1{data>0;
                data<10;}
endclass

module eg;
initial begin
  packet pkt = new();
  repeat(5)begin
    pkt.randomize()with{addr==8;};
    $display("addr=%0d data=%0d",pkt.addr,pkt.data);
  end
end
endmodule
/*# addr=8 data=6
# addr=8 data=1
# addr=8 data=3
# addr=8 data=6
# addr=8 data=5*/
