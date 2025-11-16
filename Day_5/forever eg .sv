module forever_eg;
  bit clk;
  initial begin
    clk=0;
    forever begin
      #10 clk = ~clk;
      $display($stime,,,"clock:%0d",clk);
  end
  end
  initial begin
    #100 $finish;
  end
endmodule
