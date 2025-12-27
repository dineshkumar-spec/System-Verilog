class unique_elements;
  rand bit[31:0]array[10];
  constraint c2 {unique{array};
                 foreach(array[i])array[i]>10;}
  
  function void display();
    $display("array=%p",array);
  endfunction
endclass

program eg;
  initial begin
    unique_elements pkt = new();
    pkt.randomize();
    pkt.display();
  end
  endprogram
//array='{3551624921, 846332375, 2536345937, 3259433645, 2043334657, 3556365279, 973095077, 2210936526, 3954881761, 1941379781}
