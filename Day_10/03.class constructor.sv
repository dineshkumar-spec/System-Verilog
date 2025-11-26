// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
class packet;
  bit[31:0] addr;
  bit[3:0] data;
  bit write;
  string pkt_type ;
  
  function new ();
  addr = 32'h2345;
  data  = 32'h987;
  write  = 'h1;
  pkt_type = "vlsi design verification";
  
  endfunction
  
  function void display();
    $display("addr = %0h",addr);
    $display("data = %0h",data);
    $display("write = %0h",write);
    $display("pkt_type = %0s",pkt_type);
    //$display("addr = %0h | data = %0h | write = %0h | pkt_type = %0s",addr,data,write,pkt_type);
  endfunction
endclass

module example;
  initial begin
  packet pkt;
  pkt = new();
  pkt.display();
    
  end
endmodule
