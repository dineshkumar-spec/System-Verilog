/*Write a class where:
randc cycles values from 1 to 5*/
class eg;
  randc bit[3:0] value;
  constraint c{value inside{[1:5]};}
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
/*# value=2
# value=5
# value=4
# value=3
# value=1
# value=2
# value=3
# value=4
# value=1
# value=5*/
