class packet #(parameter type T = int);
  int addr;
  int data;
  
  function new();
  addr = 670;
  data = 440;
  endfunction
  
  function void display();
    $display("addr=%0d|data=%0d",addr,data);
  endfunction
endclass

module param;
  packet #(bit [31:0])pkt;//changing parameter datatype in handle declaration
  initial begin
    pkt = new();
    pkt.display();
    pkt.addr=200;
    pkt.data=500;
    pkt.display();
  end
endmodule
