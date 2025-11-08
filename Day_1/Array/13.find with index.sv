module iterator;
  int q[$]='{29,76,3,72,28};
  int result[$];
  initial begin
    result=q.find_index with (item>28);
    $display("Index are >28 is %p",result);
  end
endmodule
//Index are >28 is '{0, 1, 3}
