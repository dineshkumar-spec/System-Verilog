class packet #(parameter int ADDR_WIDTH = 32, DATA_WIDTH = 32);
  bit [ADDR_WIDTH-1:0]addr;
  bit [DATA_WIDTH-1:0]data;
  
  function new();
  addr = 15983670;
  data = 2112233440;
  endfunction
  
  function void display();
    $display("addr=%0d|data=%0d",addr,data);
  endfunction
endclass

module param;
  packet #(32,64)pkt;//changing parameter value in handle declaration
  initial begin
    pkt = new();
    pkt.display();
    pkt.addr=200;
    pkt.data=500;
    pkt.display();
  end
endmodule
