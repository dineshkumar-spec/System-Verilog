module array_locator;
  int q[$]='{7,4,5,2,7,8,1};int tq[$];
  int f[5]='{2,5,9,3,6};
  int d[] = '{9,5,2};
  int count;
  initial begin
    $display(q.sum());
    $display(d.product());
    $display(f.sum());
    tq=q.min();
    $display("min of q",tq);
    tq=q.max();
    $display("max of q",tq);
    tq=f.max();
    $display("max of f",tq);
    tq=f.find with(item>3);
    $display("f with greater then 3",tq);
    tq=q.find_index with(item>5);
    $display("q index with greater then 5",tq);
    tq=q.unique;
    $display("unique q",tq);
    tq=f.find with (item<6);
    $display("Item less then 6",tq);
    tq=d.max();
    $display("max of d",tq);
    tq=d.find with (item<=5);
    $display("d with less than or equal to",tq);
   
  end
endmodule
