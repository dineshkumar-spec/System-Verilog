class packet;
  rand bit[3:0]addr;
  rand bit[3:0]start_addr;
  rand bit[3:0]end_addr;
  constraint addr_range{!addr inside{[start_addr:end_addr]};}
endclass

module eg;
  initial begin
    packet p = new();
    repeat(10)begin
      p.randomize();
      $display("start_addr=%0d|end_addr=%0d",p.start_addr,p.end_addr);
      $display("addr=%0d",p.addr);
    end
  end
endmodule
