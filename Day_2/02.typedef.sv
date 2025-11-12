/*Create a typedef for a logic [7:0] type named byte_t.
Then declare two variables of this type and display their values using $display.*/
module typ1;
  typedef logic [7:0] byte_t;
  byte_t b1,b2;
  initial begin
  b1=8'hbb;
  b2=8'h34;
    $display("Data1:%0h",b1);
    $display("Data2:%0h",b2);
  end
endmodule
