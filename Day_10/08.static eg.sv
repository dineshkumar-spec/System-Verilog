class packet;
  //class property
  byte packed_id;
  // static property
    static byte no_of_pkt_created;
  //constructor
  function new();
    no_of_pkt_created++;
    packed_id = 10;
  endfunction
  // method
  function void display_packets_created();
    $display("-----------------");
    $display("packed id = %0d",packed_id);
    $display(" %0d Packets created ",no_of_pkt_created);
    $display("-----------------");
  endfunction
endclass

module static_property;
  packet pkt[15];
  initial begin
    foreach (pkt[i])begin
      pkt [i]= new();
    end
    
    pkt.display_packets_created();
  end
endmodule
