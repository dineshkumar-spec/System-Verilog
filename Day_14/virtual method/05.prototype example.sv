//prototype
virtual class bikes;
  virtual function bikebrand();
  endfunction
  virtual task features();
  endtask
endclass

class royalenfield extends bikes;
  function bikebrand();
    $display("bikebrand--->Royalenfield");
  endfunction
  task features();
    $display("Model:350\n engine capacity is 349cc ");
  endtask
endclass

class yamaha extends bikes;
  function bikebrand();
    $display("bikebrand--->Yamaha");
  endfunction
  task features();
    $display("Model:FZ series\n Engine capacity is 149cc ");
  endtask
endclass

module prototype;
  initial begin
    royalenfield r1=new();
    yamaha y1=new();
    r1.bikebrand();
    r1.features();
    y1.features();
    y1.bikebrand();
  end
endmodule
