class packet;
  rand bit[3:0] addr;
  string addr_range;
  
  constraint a_d {(addr_range=="small")->(addr<8);}
endclass

module eg;
  initial begin
    packet p = new();
    p.addr_range="small";
    repeat(15)begin
      p.randomize();
      $display("addr_range=%s|addr=%0d",p.addr_range,p.addr);
    end
  end
endmodule
/*# addr_range=small|addr=2
# addr_range=small|addr=5
# addr_range=small|addr=7
# addr_range=small|addr=3
# addr_range=small|addr=7
# addr_range=small|addr=7
# addr_range=small|addr=6
# addr_range=small|addr=5
# addr_range=small|addr=0
# addr_range=small|addr=2
# addr_range=small|addr=4
# addr_range=small|addr=3
# addr_range=small|addr=5
# addr_range=small|addr=0
# addr_range=small|addr=1*/
