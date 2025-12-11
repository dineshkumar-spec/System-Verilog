class packet;
  bit[31:0]addr;
  bit[31:0]data;
  
  extern virtual function void display();
endclass
    
    function void packet::display();
      $display("addr=%0d data=%0d",addr,data);
    endfunction
    
    module extern_eg;
      initial begin
        packet p = new();
        p.addr=10;
        p.data=20;
        p.display();
      end
    endmodule
    //addr=10 data=20
