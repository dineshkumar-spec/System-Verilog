class sample;
  static int s_count;
  int count;
  
  function new();
    s_count++;
    count++;
  endfunction
endclass

module sample_eg;
  sample s[7];
  initial begin
    foreach(s[i])begin
      s[i]=new();
      $display("value od s_count[%0d]=%0d,value of count[%0d]=%0d",i,s[i].s_count,i,s[i].count);
    end
     $display("Reading last count");
    foreach(s[i])begin
      $display("value of s_count[%0d]=%0d",i,s[i].s_count);
    end
  end
endmodule
