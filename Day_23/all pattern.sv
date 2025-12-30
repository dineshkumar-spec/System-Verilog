class eg;
  bit pattern;
  bit prev_pattern;
  bit[7:0]cnt;
  rand bit[7:0]rept;
  
  function void pre_randomize();
    if(rept!=0)begin
      if(cnt<(rept-1))
        cnt=cnt+1;
      else
        cnt=0;
    end
    else
      cnt=0;
    prev_pattern=pattern;
  endfunction
  
  function void post_randomize();
    pattern = (cnt==0)?~prev_pattern:pattern;
  endfunction
endclass

module code;
  initial begin
    eg e = new();
    repeat(20)begin
      e.randomize() with {e.rept==5;};
      $write("%0b",e.pattern);
    end
  end
endmodule
//11111000001111100000 
