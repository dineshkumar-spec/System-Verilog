class packet;
  //class property
  byte packet_id;
  //non static property
   byte no_of_pkt_created;
  //constructor
  function new();
    no_of_pkt_created++;
    packet_id = no_of_pkt_created;
  endfunction
  //method
  function void display();
    $display("-----------------");
    $display("packet id = %0d",packet_id);
    $display("-----------------");
  endfunction
endclass

module static_property;
  packet pkt[5];
  initial begin
    foreach (pkt[i])begin
      pkt[i] = new();
      pkt[i].display();
    end
  end
endmodule
/*-----------------
packet id = 1
-----------------
-----------------
packet id = 1
-----------------
-----------------
packet id = 1
-----------------
-----------------
packet id = 1
-----------------
-----------------
packet id = 1
-----------------*/
