//constraints even number between 50 to 100
class even;
  randc int num;
  constraint even_c
  {num inside {[50:100]};
   num % 2 == 0;
  }
endclass
module evenumber;
  initial begin
  even en = new();
    repeat(13)begin
    en.randomize();
    $display("Even numbers between 50 to 100 : %0d ",en.num);
  end
  end
endmodule
