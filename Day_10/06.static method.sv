class packet;
  // static property
   static byte no_of_pkt_created;
  //constructor
  function new();
    no_of_pkt_created++;
  endfunction
  //static method
 static function void display_packets_created();
    $display("-----------------");
    $display(" %0d Packets created ",no_of_pkt_created);
    $display("-----------------");
  endfunction
endclass

module static_property;
  packet pkt[5];
  initial begin
    foreach (pkt[i])begin
      pkt[i] = new();
    end
    pkt[0].display_packets_created();
  end
endmodule
