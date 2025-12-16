class packet;
  rand bit[7:0]addr;
  rand bit[7:0]data;
//pre randomize
  function void pre_randomize();
    $display("Inside Pre randomize");
  endfunction
  
  //post randomize
  function void post_randomize();
    $display("Inside Post randomize");
    $display("value of addr=%0d data=%0d",addr,data);
  endfunction
endclass

module randomize_method;
  initial begin
    packet pkt = new();
    pkt.randomize();
  end
endmodule
/*# Inside Pre randomize
# Inside Post randomize
# value of addr=233 data=37*/
