/*Write a constraint:
if is_write == 1
addr must be in 0–100
else
addr can be any value*/
class eg;
  rand bit write;
  rand bit[7:0]addr;
  constraint c{(write)->addr inside {[0:100]};}
endclass

module code;
  initial begin
    eg e = new();
    repeat(5)begin
      e.randomize();
      $display("write=%0d addr=%0d",e.write,e.addr);
    end
  end
endmodule
/*# write=0 addr=223
# write=0 addr=77
# write=0 addr=159
# write=0 addr=110
# write=1 addr=0*/
