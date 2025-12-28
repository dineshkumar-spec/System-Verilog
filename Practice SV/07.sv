/*Create a constraint to prevent randomization failure if:
low > high
(use solve-before or expression logic)*/
class eg;
  rand bit low;
  rand bit[3:0]high;
  rand bit addr;
  constraint c {
  solve low before high;
  low < high; 
}
                    
endclass

module solv_bef;
  initial begin
    eg e = new();
    repeat(10)begin
      e.randomize();
        $display("low=%0d high=%0d",e.low,e.high);
    end
  end
endmodule
/*# low=0 high=4
# low=1 high=7
# low=0 high=10
# low=1 high=13
# low=1 high=2
# low=0 high=4
# low=0 high=1
# low=1 high=8
# low=1 high=12
# low=1 high=8*/
