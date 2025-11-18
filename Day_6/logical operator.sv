module op;
  logic[15:0]l1,l2;
  int i;
  initial begin
  l1=5; l2=50;i=l1->l2;
    $display("l1=%0d l2=%0d l1->l2=%0d",l1,l2,i);
   i=!l1||l2;
    $display("l1=%0d l2=%0d !l1||l2=%0d",l1,l2,i);
    i=l1<->l2;
    $display("l1=%0d l2=%0d l1<->l2=%0d",l1,l2,i);
    
    l1=9;l2=0;i=l1->l2;
    $display("l1=%0d l2=%0d l1->l2=%0d",l1,l2,i);
    i=l1<->l2;
    $display("l1=%0d l2=%0d l1<->l2=%0d",l1,l2,i);
  end
endmodule
