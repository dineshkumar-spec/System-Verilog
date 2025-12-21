class packet;
  rand bit[3:0]data;
  constraint data_range;//declaring constraint name
endclass

constraint packet::data_range {data<10;}//using scope resolution operator
module eg;
  initial begin
    packet p = new();
    repeat(10)begin
      p.randomize();
      $display("Data=%0d",p.data);
    end
  end
endmodule
/*# KERNEL: Data=8
# KERNEL: Data=3
# KERNEL: Data=0
# KERNEL: Data=6
# KERNEL: Data=0
# KERNEL: Data=6
# KERNEL: Data=5
# KERNEL: Data=5
# KERNEL: Data=8
# KERNEL: Data=1*/
