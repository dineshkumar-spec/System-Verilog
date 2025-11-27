//constraints even number between 10 to 30
class even;
  randc int num;
  constraint even_c
  {num inside {[10:30]};
   num % 2 == 0;
  }
endclass
module evenumber;
  initial begin
  even en = new();
    repeat(3)begin
    en.randomize();
      $display("Even numbers between 10 to 30 : %0d ",en.num);
  end
  end
endmodule
