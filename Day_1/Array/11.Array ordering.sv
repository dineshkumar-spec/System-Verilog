module ordering;
  int q[$]='{5,8,3,9,0,7,2,1};
 
  initial begin
    q.sort();
    $display("sort is %p:",q);
    q.rsort();
    $display("resort is %p:",q);
    q.reverse();
    $display("reverse is %p",q);
    q.shuffle();
    $display("shuffle is %p",q);
    for(int i=0;i<5;i++)begin
      q.shuffle();
      $display("shuffle iteration:%0d=%p",i,q);
    end
  end
endmodule
