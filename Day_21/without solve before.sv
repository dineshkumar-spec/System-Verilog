class packet;
  rand bit a;
  rand bit[3:0]b;
  constraint c1 {(a==1)->b==0;}
endclass

module solve_before;
  initial begin
    packet pkt = new();
    repeat(15)begin
      pkt.randomize();
      $display("a=%0d b=%0d ",pkt.a,pkt.b);
    end
  end
endmodule
/*a=0 b=10 
a=0 b=10 
a=0 b=3 
a=0 b=5 
a=0 b=0 
a=0 b=2 
a=0 b=0 
a=0 b=15 
a=0 b=13 
a=0 b=5 
a=0 b=10 
a=0 b=14 
a=0 b=9 
a=0 b=4 
a=0 b=5 */
