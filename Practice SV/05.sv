/*rand int a, b, c;
(Randomize only a)*/
class eg;
  rand int a,b,c;
endclass

module egx;
  initial begin
    eg e = new();
      e.a.rand_mode(1);
      e.b.rand_mode(0);
      e.c.rand_mode(0);
     
      e.randomize();
      $display("a=%0d,b=%0d,c=%0d",e.a,e.b,e.c);
  end
endmodule
/*a=-443875595,b=0,c=0*/
