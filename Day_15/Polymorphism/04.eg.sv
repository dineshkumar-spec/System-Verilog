
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

class scooty extends yamaha;
  function bikebrand();
    $display("bikebrand--->Yamaha(scooty)");
  endfunction
  task features();
    $display("Model:Facino\n Engine capacity is 125cc ");
  endtask
endclass

module polymorphism;
  initial begin
   bikes b;
   royalenfield r;
   yamaha y;
   scooty s;
   
    r=new();
    y=new();
    s=new();
    
    b=r;
    b.bikebrand();
    b=y;
    b.bikebrand();
    y=s;
    y.features();
  end
endmodule
/*# bikebrand--->Royalenfield
# bikebrand--->Yamaha
# Model:Facino
#  Engine capacity is 125cc */
