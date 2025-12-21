class packet;
  rand bit[3:0]data;
  constraint data_range {data>5;}
endclass

module eg;
  initial begin
    packet p = new();
    repeat(10)begin
      p.randomize();
      $display("Data=%0d",p.data);
    end
  end
endmodule
/*# KERNEL: Data=12
# KERNEL: Data=7
# KERNEL: Data=13
# KERNEL: Data=14
# KERNEL: Data=10
# KERNEL: Data=10
# KERNEL: Data=7
# KERNEL: Data=15
# KERNEL: Data=12
# KERNEL: Data=11*/
