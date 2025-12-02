class packet;
  // class property
    byte no_of_pkt_created;
  //constructor
  function new();
    no_of_pkt_created++;
  endfunction
  // method
  function void display_packets_created();
    $display("-----------------");
    $display(" %0d Packets created ",no_of_pkt_created);
    $display("-----------------");
  endfunction
endclass

module static_property;
  packet pkt[5];
  initial begin
    foreach (pkt[i])begin
      pkt [i]= new();
    end
    pkt.display_packets_created();
  end
endmodule
/*-----------------
 1 Packets created 
 -----------------*/
