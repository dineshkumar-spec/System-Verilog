/*Create a constraint to ensure:
stop > start
solve start before stop*/
class eg;
  rand bit [3:0]start;
  rand bit [3:0]stop;
  constraint c {solve start before stop;
                stop > start;} 
endclass

module code;
initial begin
  eg e = new();
  repeat(5)begin
    e.randomize();
    $display("start=%0d stop=%0d",e.start,e.stop);
  end
end
endmodule
/*# KERNEL: start=6 stop=13
# KERNEL: start=0 stop=7
# KERNEL: start=1 stop=15
# KERNEL: start=5 stop=6
# KERNEL: start=10 stop=15*/
