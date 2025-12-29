/*Create a constraint for FIFO:
(wr - rd) <= depth
Add condition:
stop writes when FIFO reaches 90% full*/
class eg;
  rand bit[3:0] wr,rd,depth;
  rand bit wr_en;
  constraint c {wr>=rd;//prevent negative value
                (wr - rd) <= depth;//prevent overflow
                (wr - rd) >= (depth*9/10)->(wr_en==0);//wr en=0
                (wr - rd) >= (depth*9/10)->(wr_en==0);}//wr en=1
endclass

module code;
  initial begin
    eg e = new();
    repeat(10)begin
      e.randomize();
      $display("wr_en=%0d wr=%0d rd=%0d fifo_depth=%0d",e.wr_en,e.wr,e.rd,e.depth);
    end
  end
endmodule
/*wr_en=1 wr=14 rd=13 fifo_depth=4
wr_en=0 wr=11 rd=11 fifo_depth=15
wr_en=0 wr=15 rd=10 fifo_depth=12
wr_en=0 wr=9 rd=6 fifo_depth=13
wr_en=1 wr=1 rd=0 fifo_depth=15
wr_en=0 wr=15 rd=10 fifo_depth=6
wr_en=1 wr=4 rd=2 fifo_depth=14
wr_en=0 wr=12 rd=8 fifo_depth=9
wr_en=0 wr=8 rd=5 fifo_depth=11
wr_en=0 wr=11 rd=7 fifo_depth=8*/
