//prime number between i to 100
class eg;
  rand bit[31:0] a;
  constraint c{a inside{[1:100]};}
  constraint c1{
    if(a==2)
      a==2;
    else
      a%2!=0;
    if(a==3)
      a==3;
    else
      a%3!=0;
    if(a==5)
      a==5;
    else
      a%5!=0;
    if(a==7)
      a==7;
    else
      a%7!=0;
    }
endclass

module code;
  initial begin
    eg e = new();
    repeat(15)begin
    e.randomize();
      $display("a=%0d",e.a);
    end
  end
endmodule
/*# a=7
# a=53
# a=11
# a=31
# a=3
# a=11
# a=61
# a=3
# a=73
# a=11
# a=11
# a=43
# a=37
# a=71
# a=89*/
