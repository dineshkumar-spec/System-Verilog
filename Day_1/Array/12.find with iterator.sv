module iterator;
  int q[$]='{29,76,3,72,28};
  int result[$];
  initial begin
    result=q.find with (item>28);
    $display("Element >28 is %p",result);
  end
endmodule
// Element >28 is '{29, 76, 72}
