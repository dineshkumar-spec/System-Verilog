class packet;
  
  extern virtual task display(bit[31:0]addr,data);
endclass
    
    task packet::display(bit[31:0]addr_t,data_t);
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
    /*ERROR VCP5420 "Non existing port 'addr_t' in out-of-scope method 'display' definition." "testbench.sv" 6  35
ERROR VCP5420 "Non existing port 'data_t' in out-of-scope method 'display' definition." "testbench.sv" 6  35
ERROR VCP5421 "Too few ports specified in out-of-scope method 'display' definition." "testbench.sv" 6  50*/
