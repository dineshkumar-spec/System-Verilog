/*Create a constraint so x takes only:
10, 20, 30, 40
(using inside {})*/

class eg;
  rand bit[31:0]x;
  constraint c{x inside{10,20,30,40};}
endclass

module egx;
  initial begin
    eg e = new();
    repeat(10)begin
    e.randomize();
      $display("x=%0d",e.x);
    end
  end
endmodule
/*# x=20
# x=20
# x=30
# x=20
# x=20
# x=30
# x=30
# x=10
# x=30
# x=40*/
