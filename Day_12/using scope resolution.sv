class sample;
  static int s_count=5;
  static function count_fun();
  s_count++;
  endfunction
endclass
module class_eg;
  sample s1;
  initial begin
    sample::count_fun();
    $display("s_count=%0d",sample::s_count);
    end
endmodule
