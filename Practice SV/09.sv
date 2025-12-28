/*Constrain packet length:
Minimum = 64
Maximum = 1500*/
class eg;
  rand bit[31:0] value;
  constraint c{value inside{[64:1500]};}
endclass

module code;
  initial begin
    eg e = new();
    repeat(10)begin
      e.randomize();
      $display("value=%0d",e.value);
    end
  end
endmodule
/*# value=638
# value=157
# value=983
# value=847
# value=1387
# value=406
# value=1210
# value=905
# value=1490
# value=469*/
