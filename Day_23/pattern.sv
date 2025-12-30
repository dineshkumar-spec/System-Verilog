class eg;
  rand bit pattern;
  bit temp=0;
  constraint c{pattern !=temp;}
  function void post_randomize();
  temp=pattern;
  endfunction
endclass

module code;
  initial begin
    eg e = new();
    repeat(10)begin
      e.randomize();
      $write("%b",e.pattern);
    end
  end
endmodule
//1010101010
