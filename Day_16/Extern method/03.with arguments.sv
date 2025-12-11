class packet;
  
  extern virtual task display(bit[31:0]addr,data);
endclass
    
    task packet::display(bit[31:0]addr,data);
      $display("addr=%0d data=%0d",addr,data);
    endtask
    
    module extern_eg;
      initial begin
        packet p = new();
       // p.addr=10;
        //p.data=20;
        p.display(10,20);
      end
    endmodule
    //addr=10 data=20
