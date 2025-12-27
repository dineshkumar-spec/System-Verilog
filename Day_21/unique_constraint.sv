class unique_elements;
  rand bit[3:0]var1,var2,var3;
  rand bit[7:0]array[6];
  constraint c1 {unique{var1,var2,var3};}
  constraint c2 {unique{array};}
  
  function void display();
    $display("var1=%p",var1);
    $display("var2=%p",var2);
    $display("var2=%p",var2);
    $display("array=%p",array);
  endfunction
endclass

module eg;
  initial begin
    unique_elements pkt = new();
    pkt.randomize();
    pkt.display();
  end
endmodule
/*# var1=11
# var2=14
# var2=14
# array='{68, 58, 217, 180, 142, 213}*/
