class packet;
  rand bit[7:0]addr;
  rand bit wr_rd;
       bit tmp_wr_rd;
//pre randomize
  function void pre_randomize();
    if(tmp_wr_rd==1)
      addr.rand_mode(0);
    else
      addr.rand_mode(1);
  endfunction
  
  //post randomize
  function void post_randomize();
    tmp_wr_rd=wr_rd;
    $display("POST RANDOMIZATION :: Addr=%0h data=%0h",addr,wr_rd);
  endfunction
endclass

module randomize_method;
  initial begin
    packet pkt = new();
    repeat(10)
    pkt.randomize();
  end
endmodule
/*# POST RANDOMIZATION :: Addr=e9 data=0
# POST RANDOMIZATION :: Addr=7 data=1
# POST RANDOMIZATION :: Addr=7 data=0
# POST RANDOMIZATION :: Addr=7 data=0
# POST RANDOMIZATION :: Addr=31 data=1
# POST RANDOMIZATION :: Addr=31 data=1
# POST RANDOMIZATION :: Addr=31 data=1
# POST RANDOMIZATION :: Addr=31 data=1
# POST RANDOMIZATION :: Addr=31 data=0
# POST RANDOMIZATION :: Addr=ec data=0*/
