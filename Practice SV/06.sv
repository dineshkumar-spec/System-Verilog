/*Create a constraint to generate:
addr between 0–100 except 40–50*/
class eg;
  rand int addr;
  constraint c{addr inside {[0:100]};
  !(addr inside{[40:50]});}
endclass

module egx;
  initial begin
    eg e = new();
    repeat(5)begin
      e.randomize();
    $display("addr=%0d",e.addr);
    end
  end
endmodule
/*# addr=31
# addr=14
# addr=38
# addr=85
# addr=7*/
