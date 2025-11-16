module forever_eg;
  int count;
  initial begin
  forever begin
    $display("value of count = %0d",count);
    count++;
    #5;
    if(count==10)break;
  end
  end
endmodule
