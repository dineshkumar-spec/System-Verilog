// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
class packet;
  bit[31:0] addr;
  bit[3:0] data;
  bit write;
  string pkt_type;
  
  function new ( bit[31:0] addr,data, bit write,string pkt_type);
  this.addr=addr;
  this.data=data;
  this.write=write;
  this.pkt_type=pkt_type;
   // $display("addr=%0h|data=%0h|write=%0h|pkt_type=%0s",addr,data,write,pkt_type);
  endfunction
  
  function display();
//     $display("addr = %0h",addr);
//     $display("data = %0h",data);
//     $display("write = %0h",write);
//     $display("pkt_type = %0s",pkt_type);
    $display("addr = %0h | data = %0h | write = %0h | pkt_type = %0s",addr,data,write,pkt_type);
  endfunction
endclass

module example;
  initial begin
  packet pkt;
  pkt = new(32'h30,32'hff,'h1,"Nice packet");   
  pkt.display();
  end
endmodule
// addr = 30 | data = f | write = 1 | pkt_type = Nice packet
