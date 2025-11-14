module do_while;
  int count;
  initial begin
  do begin
  count++;
    $display("values of count=%0d",count);
  end
  while(count<10);
  end
endmodule
