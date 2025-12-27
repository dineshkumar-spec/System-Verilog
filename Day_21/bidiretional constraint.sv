class packet;
  rand bit[3:0]a;
  rand bit[3:0]b;
  rand bit[3:0]c;
  constraint c1 {a==b+c;}
  constraint c2 {b>7;}
  constraint c3 {c<5;}
endclass

module bidirectional;
  initial begin
    packet pkt = new();
    repeat(5)begin
      pkt.randomize();
      $display("a=%0d b=%0d c=%0d",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule
/*# a=15 b=11 c=4
# a=12 b=11 c=1
# a=11 b=10 c=1
# a=9 b=8 c=1
# a=11 b=10 c=1*/
