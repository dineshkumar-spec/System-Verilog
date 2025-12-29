/*Create a constraint for FIFO:
(wr - rd) <= depth*/
class eg;
  rand bit[3:0] wr,rd,depth;
  constraint c {(wr - rd) <= depth;}
endclass

module code;
  initial begin
    eg e = new();
    repeat(10)begin
      e.randomize();
      //foreach(e.delay[i])begin
      $display("wr=%0d rd=%0d depth=%0d",e.wr,e.rd,e.depth);
    end
  end
endmodule
/*wr=9 rd=4 depth=9
wr=11 rd=7 depth=9
wr=13 rd=10 depth=6
wr=4 rd=11 depth=13
wr=9 rd=1 depth=11
wr=11 rd=3 depth=12
wr=0 rd=0 depth=9
wr=13 rd=12 depth=8
wr=1 rd=14 depth=7
wr=7 rd=10 depth=14*/
