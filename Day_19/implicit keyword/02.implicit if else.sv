class packet;
  rand bit[3:0] addr;
  string addr_range;
  
  constraint a_d {if(addr_range=="small")
                         addr<8;
                  else
                         addr>8;}
endclass

module eg;
  initial begin
    packet p = new();
    p.addr_range="small";
    repeat(15)begin
      p.randomize();
      $display("addr_range=%s|addr=%0d",p.addr_range,p.addr);
    end
    
     p.addr_range="high";
    repeat(15)begin
      p.randomize();
      $display("addr_range=%s|addr=%0d",p.addr_range,p.addr);
    end
  end
endmodule
