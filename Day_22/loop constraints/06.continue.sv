module eg;
  initial begin
    for(int i=0;i<8;i++)begin
      if(i==5)
        continue;
      $display("value=%0d",i);
    end
  end
endmodule
/*value=0
value=1
value=2
value=3
value=4
value=6
value=7*/
