module example;
  byte my_byte;
  integer my_integer;
  int my_int;
  bit [15:0] my_bit;
  shortint my_short_int1;
  shortint my_short_int2;
  initial begin
  my_integer = 32'b000_1111_xxxx_zzzz;
  my_int = my_integer;
  my_bit = 16'h8000;
  my_short_int1= my_bit;
  my_short_int2 = my_short_int1-1'b1;
  // a) What is the range of values my_byte can take?
    $display("%0b",my_byte);
  // b) What is the value of my_int in hex?
    $display("%0h",my_int);
  // c) What is the value of my_bit in decimal?
    $display("%0f",my_bit);
  // d) What is the value of my_short_int1 in decimal?
    $display("%0f",my_short_int1);
  // e) What is the value of my_short_int2 in decimal?
    $display("%0f",my_short_int2);
  end
endmodule
