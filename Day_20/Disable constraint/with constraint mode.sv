class packet;
  rand bit[3:0] addr;
  constraint addr_range{addr inside{5,10,1,2,3};}
endclass

module eg;
  initial begin
    packet pkt = new();
    $display("Before constraint mode");
    repeat(2)begin
    pkt.randomize();
    $display("addr=%0d",pkt.addr);
    end
    
    pkt.addr_range.constraint_mode(0);
    $display("After constraint mode");
    repeat(2)begin
    pkt.randomize();
    $display("addr=%0d",pkt.addr);
    end
  end
endmodule
/*Before constraint mode
addr=2
addr=5
After constraint mode
addr=12
addr=8*/
