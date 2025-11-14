module while_eg;
  int count;
  initial begin
    $display("Value of count outside loop");
    while(count<0)begin
      count++;
      $display("Value of count inside loop");
    end
  end
endmodule
//Value of count outside loop

module do_while_eg;
  int count;
  initial begin
    $display("Value of count outside loop");
    do begin
      $display("Value of count inside loop");
      count++;
    end
      while(count<0);
  end
endmodule
// Value of count outside loop
// Value of count inside loop
