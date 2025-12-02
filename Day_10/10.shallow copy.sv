class address_range;
  bit[31:0] start_address;
  bit[31:0] end_address;
  function new();
  start_address=10;
    end_address=20;
  endfunction
endclass

class packet;
  bit[31:0] addr;
  bit[31:0] data;
  address_range ar;
  
  function new();
    addr = 32'h31;
    data = 32'h87;
    ar = new();
  endfunction
  
  function void display();
    $display("-------------------------");
    $display("addr = %0h",addr);
    $display("data = %0h",data);
    $display("start_address = %0d",ar.start_address);
    $display("end_address = %0d",ar.end_address);
    $display("-------------------------");
  endfunction
endclass

module shallow_copy;
  packet pkt1;
  packet pkt2;
  initial begin
    pkt1 = new();
    pkt2 = new pkt1;
    $display("calling pkt1 display");
    pkt1.display();
    
    $display("calling pkt2 display");
    pkt2.display();
    
    pkt2.addr = 32'h764;
    pkt2.ar.start_address = 100;
    pkt2.ar.end_address = 10000;
    $display("calling pkt1 display after changing pkt2 handle ");
    pkt1.display();
    
    $display("calling pkt2 display");
    pkt2.display();
  end
endmodule
/*calling pkt1 display
-------------------------
addr = 31
data = 87
start_address = 10
end_address = 20
-------------------------
calling pkt2 display
-------------------------
addr = 31
data = 87
start_address = 10
end_address = 20
-------------------------
calling pkt1 display after changing pkt2 handle 
-------------------------
addr = 31
data = 87
start_address = 100
end_address = 10000
-------------------------
calling pkt2 display
-------------------------
addr = 764
data = 87
start_address = 100
end_address = 10000
-------------------------*/
