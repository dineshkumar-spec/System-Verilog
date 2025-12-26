//calling constraint mode
class packet;
  rand bit[3:0] addr;
  constraint addr_range{addr inside{5,10,1,2,3};}
endclass

module eg;
  initial begin
    packet pkt = new();
    $display("Before constraint mode");
    repeat(2)begin
      $display("constraint mode=%0d",pkt.addr_range.constraint_mode());
    pkt.randomize();
    $display("addr=%0d",pkt.addr);
    end
    
    pkt.addr_range.constraint_mode(0);
    $display("After constraint mode");
    repeat(2)begin
      $display("constraint mode=%0d",pkt.addr_range.constraint_mode());
    pkt.randomize();
    $display("addr=%0d",pkt.addr);
    end
  end
endmodule
/*Before constraint mode
constraint mode=1
addr=2
constraint mode=1
addr=5
After constraint mode
constraint mode=0
addr=12
constraint mode=0
addr=8*/
