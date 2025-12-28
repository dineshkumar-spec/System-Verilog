class eg;
  rand bit[31:0] value;
  constraint c{value inside{[64:1500]};
               !(value inside {[100:120]});}
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
/*# value=659
# value=178
# value=1004
# value=868
# value=1408
# value=427
# value=1231
# value=926
# value=657
# value=490*/
