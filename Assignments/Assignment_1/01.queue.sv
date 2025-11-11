//1.Q built in methods
module que;
  int q[$]='{65,34,22,98,44,13,0,33};
  initial begin
    $display("Array elements are %p",q);
    $display("Size of the q = %0d",q.size());
    q.insert((q.size()/2),90);
    $display("After insert at n/2 position %p",q);
    q.insert((q.size),45);
    $display("After insert at nth position %p",q);
    q.delete((q.size-2));
    $display("After deleting at n-1 position %p",q);
    q.pop_front();
    $display("After pop at front element %p",q);
    q.pop_back();
    $display("After pop at back element %p",q);
    q.push_front(6);
    $display("After push at front element %p",q);
    q.push_back(9);
    $display("After push at back element %p",q);
  end
endmodule
