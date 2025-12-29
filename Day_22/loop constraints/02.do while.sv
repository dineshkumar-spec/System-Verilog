module eg;
  int i;
  initial begin
    do begin
      $display("value of i=%0d",i);
      i++;
      end
      while (i<8);
      end
endmodule
/*value of i=0
value of i=1
value of i=2
value of i=3
value of i=4
value of i=5
value of i=6
value of i=7*/
