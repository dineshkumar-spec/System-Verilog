/*Constrain a variable burst_size to values:
4, 8, 16
but give higher probability to 16 using dist.*/
class eg;
  rand bit [31:0]burst_size;
  constraint c{burst_size dist{4:=4,8:=4,16:=10};}
endclass

module code;
  initial begin
    eg e = new();
    repeat(10)begin
      e.randomize();
      $display("burst_size=%0d",e.burst_size);
    end
  end
endmodule
/*# burst_size=16
# burst_size=16
# burst_size=16
# burst_size=4
# burst_size=16
# burst_size=8
# burst_size=4
# burst_size=8
# burst_size=16
# burst_size=8*/
