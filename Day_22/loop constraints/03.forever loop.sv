module eg;
  int i;
  initial begin
    forever  begin
      $display("value of i=%0d",i);#2;
      i++;
      end
   end
  initial begin
  #10;$finish;
  end
endmodule
