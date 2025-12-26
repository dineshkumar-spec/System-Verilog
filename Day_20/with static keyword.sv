class packet;
  rand bit[7:0]addr;
  static constraint addr_range{addr==15;}
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
  
  p1.addr_range.constraint_mode(0);
  $display("After disable");
  p1.randomize();
  $display("addr1=%0d",p1.addr);
  p2.randomize();
  $display("addr2=%0d",p2.addr);
end
endmodule
/*# Before disable
# addr1=15
#  addr2=15
# After disable
# addr1=7
# addr2=169*/
