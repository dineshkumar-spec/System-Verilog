class packet;
  rand bit[7:0]addr;
  rand bit[7:0]data;
  
  function void post_randomize();
    $display("packet::generated");
    $display("packet::Addr=%0d Data=%0d",addr,data);
  endfunction
endclass

//generator
class generator;
  packet pkt;
  mailbox m_box;
  function new(mailbox m_box);
  this.m_box = m_box;
  endfunction
  task run;
    repeat(2)begin
      pkt = new();
      pkt.randomize();
      m_box.put(pkt);
      $display("Generator:: packet put into mailbox");
      #5;
    end
  endtask
endclass

//driver
class driver;
  packet pkt;
  mailbox m_box;
  
  function new(mailbox m_box);
  this.m_box = m_box;
  endfunction
  
  task run;
    repeat(2)begin
      m_box.get(pkt);
      $display("Driver::packet received");
      $display("Driver::Addr=%0d,Data=%0d",pkt.addr,pkt.data);
    end
  endtask
endclass

//tb
module mailbox_tb;
generator gen;
driver dri;
mailbox m_box;
  
initial begin
  m_box = new();
    
  gen = new(m_box);
  dri = new(m_box);
  $display("------------------");
  fork
    gen.run();
    dri.run();
  join
  $display("------------------");

end
endmodule
/*------------------
packet::generated
packet::Addr=40 Data=169
Generator:: packet put into mailbox
Driver::packet received
Driver::Addr=40,Data=169
packet::generated
packet::Addr=223 Data=184
Generator:: packet put into mailbox
Driver::packet received
Driver::Addr=223,Data=184
------------------*/
