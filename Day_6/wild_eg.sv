module op;
  logic[15:0]l1,l2;
  initial begin
  l1='hff; l2='hxx;
    $display("l1='hff l2='hxx : l1==?l2 boolean = %0d",l1==?l2);
    $display("l1='hff l2='hxx : l1!=?l2 boolean = %0d",l1!=?l2);
    
     l1='hxx; l2='hff;
    $display("l1='hxx l2='hff : l1==?l2 boolean = %0d",l1==?l2);
    $display("l1='hxx l2='hff : l1!=?l2 boolean = %0d",l1!=?l2);
  end
endmodule
