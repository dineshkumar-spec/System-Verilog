class sample;
  static function count_fun();
  int s_count;//using non stati inside static method id used 
  s_count++;
    $display(" s_count=%0d",s_count);
  endfunction
endclass
module class_eg;
  sample s[7];
  initial begin
    foreach(s[i])begin
      s[i]=new();
      s[i].count_fun();
    end
  end
endmodule
