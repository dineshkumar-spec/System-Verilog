class bike;
   string brand = "Yamaha";
endclass

module eg;
  initial begin
    $display("Brand is %s",bike::brand);
  end
endmodule
//ERROR VCP5240 "Cannot access non-static class member 'bike.brand' using scope operator '::'." "testbench.sv" 7  39
