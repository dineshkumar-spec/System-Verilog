module type_def_eg;
  typedef logic [7:0] data;
  initial begin
  data byte_value;
    byte_value = 8'b1010_1100;
    $display("Byte value: %0b",byte_value);
  end
endmodule
