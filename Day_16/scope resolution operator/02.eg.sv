class bike;
  static string brand = "Yamaha";
  static string model;
  static function void display();
  model = "DUKE";
    $display("Model=%s",model);
  endfunction
endclass

module eg;
  initial begin
    $display("Brand=%s",bike::brand);
    bike::display();
  end
endmodule
// Brand=Yamaha
// Model=DUKE
