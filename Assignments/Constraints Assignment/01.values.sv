//constraint to specific values 25,27,30,36,40,45
class numbers;
  rand int a;
  constraint values {a inside{25,27,30,36,40,45};}
endclass

module eg;
  initial begin
  numbers num;
    num = new();
    repeat (10)begin
      num.randomize();
      $display("The specific value is %0d",num.a);
    end
  end
endmodule
/*# The specific value is 30
# The specific value is 25
# The specific value is 40
# The specific value is 27
# The specific value is 36
# The specific value is 30
# The specific value is 27
# The specific value is 36
# The specific value is 25
# The specific value is 25*/
