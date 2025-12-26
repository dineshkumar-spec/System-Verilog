//calling constraint mode using inheritance constrait
class packet;
  rand bit[3:0] addr;
  constraint addr_range{addr inside{5,10,1,2,3};}
endclass

class pack extends packet;
  rand bit[3:0] addr;
  constraint addr_range{addr inside{5,10,1,2,3};}
endclass

module eg;
  initial begin
    packet pkt = new();
    pack p = new();
    $display("Before constraint mode");
    repeat(2)begin
      $display("constraint mode=%0d",pkt.addr_range.constraint_mode());
    pkt.randomize();
      $display("addr1=%0d addr2=%0d",pkt.addr,p.addr);
    end
    
    p.addr_range.constraint_mode(0);
    $display("After constraint mode");
    repeat(2)begin
      $display("constraint mode=%0d",pkt.addr_range.constraint_mode());
    pkt.randomize();
      $display("addr1=%0d addr2=%0d",pkt.addr,p.addr);
    end
  end
endmodule
/*Before constraint mode
constraint mode=1
addr1=2 addr2=0
constraint mode=1
addr1=5 addr2=0
After constraint mode
constraint mode=1
addr1=3 addr2=0
constraint mode=1
addr1=5 addr2=0*/
