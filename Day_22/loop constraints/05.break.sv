module eg;
  int i;
  initial begin
    while (i<8)begin
      $display("value of i=%0d",i);
      if(i==5)begin
      break;
      end
      i++;
    end
  end
endmodule
/*value of i=0
value of i=1
value of i=2
value of i=3
value of i=4
value of i=5*/
