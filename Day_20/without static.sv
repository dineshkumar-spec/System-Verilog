class packet;
  rand bit[7:0]addr;
  constraint addr_range{addr==5;}
endclass

module eg;
initial begin
  packet p1 = new();
  packet p2 = new();
  
  $display("Before disable");
  p1.randomize();
  $display("addr1=%0d",p1.addr);
  p2.randomize();
  $display(" addr2=%0d",p2.addr);
  
  p2.addr_range.constraint_mode(0);
  $display("After disable");
  p1.randomize();
  $display("addr1=%0d",p1.addr);
  p2.randomize();
  $display("addr2=%0d",p2.addr);
end
endmodule
/**# Before disable
# addr1=5
#  addr2=5
# After disable
# addr1=5
# addr2=169/
