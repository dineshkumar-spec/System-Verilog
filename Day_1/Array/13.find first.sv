module iterator;
  int q[$]='{29,76,3,72,28,99,76,2,1,45,9,87,0};
  int result[$];
  initial begin
    result=q.find_first with (item>40 & item <80);
    $display("Elements >40 and <80 are %p",result);
  end
endmodule
//Elements >40 and <80 are '{76}
