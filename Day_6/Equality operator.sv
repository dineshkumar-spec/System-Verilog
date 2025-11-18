module op;
  logic[15:0]l1,l2;
  initial begin
    $display("No x in data");
    l1='hff; l2='hf0;
    $display("l1='hff l2='hf0 : l1==l2 = boolean =%0d",l1==l2);
    $display("l1='hff l2='hf0 : l1!=l2 = boolean =%0d",l1!=l2);
    $display("l1='hff l2='hf0 : l1===l2 = boolean =%0d",l1===l2);
    $display("l1='hff l2='hf0 : l1!==l2 = boolean =%0d",l1!==l2);
    
    $display("including x in data");
    l1='hxf; l2='hxf;
    $display("l1='hxf l2='hxf : l1==l2 = boolean =%0d",l1==l2);
    $display("l1='hxf l2='hxf : l1!=l2 = boolean =%0d",l1!=l2);
    $display("l1='hxf l2='hxf : l1===l2 = boolean =%0d",l1===l2);
    $display("l1='hxf l2='hxf : l1!==l2 = boolean =%0d",l1!==l2);
  end
endmodule
