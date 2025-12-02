class packet;
  bit[31:0]addr;
  bit[31:0]data;
  bit write;
  string pkt_type;
  
  //constructor
  function new();
  addr = 32'hff;
  data = 32'h9876;
  write = 1'b1;
  pkt_type = "good";
  endfunction
  
  function void display();
    $display("--------------");
    $display("addr=%0d",addr);
    $display("data=%0d",data);
    $display("write=%0b",write);
    $display("packet type=%s",pkt_type);
    $display("--------------");
  endfunction
endclass

module class_assignment;
  packet pk1;
  packet pk2;
  initial begin
    pk1 = new();
    $display("\t calling pk1 display");
    pk1.display();
    
    //assigning pk2
    pk2 = pk1;
    $display("\tcalling pk2 display");
    pk2.display();
    
    pk2.addr = 32'h9867ff;
    pk2.data = 32'h12345678;
    pk2.pkt_type = "vlsi verify";
    //changing values using pk2 handle it will change in pkt 1 
    //calling pk1
    $display("calling pk1");
    pk1.display();
    
    pk1.addr=32'h0;
    pk2.display();
  end
endmodule
/*	 calling pk1 display
--------------
addr=255
data=39030
write=1
packet type=good
--------------
	calling pk2 display
--------------
addr=255
data=39030
write=1
packet type=good
--------------
calling pk1
--------------
addr=9988095
data=305419896
write=1
packet type=vlsi verify
--------------
--------------
addr=0
data=305419896
write=1
packet type=vlsi verify
--------------*/
