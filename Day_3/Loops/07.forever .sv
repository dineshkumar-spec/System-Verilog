module forever_eg;
  int count;
  initial begin
  forever begin
    $display("value of count = %0d",count);
    count++;
    #5;
  end
  end
  initial begin
  
    #50 $finish;
  end
endmodule
