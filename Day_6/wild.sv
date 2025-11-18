/*Write a wildcard equality check for:
data = 8'b1101_0011
Pattern:
11xx_00??*/
module wild;
  bit [7:0]data=8'b1101_0011;
  initial begin
    if (data==?8'b11xx_00??)
      $display("Matched data %0b matches pattern %0b",data,8'b11xx_00??);
    else
      $display("not a match");
  end
endmodule
