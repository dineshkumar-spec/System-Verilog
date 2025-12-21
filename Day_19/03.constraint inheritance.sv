class packet;
  rand bit[3:0]data;
  constraint data_range {data<10;}
endclass

class packet2 extends packet;
  rand bit[3:0]data;
  constraint data_range {data>10;}
endclass

module eg;
  initial begin
    packet p1 = new();
    packet2 p2 = new();
    $display("-----------------------");
    repeat(10)begin
      p1.randomize();
      $display("Data=%0d",p1.data);
    end
    
    $display("-----------------------");
    repeat(10)begin
      p2.randomize();
      $display("Data=%0d",p2.data);
    end
  end
endmodule
/*# KERNEL: -----------------------
# KERNEL: Data=8
# KERNEL: Data=3
# KERNEL: Data=0
# KERNEL: Data=6
# KERNEL: Data=0
# KERNEL: Data=6
# KERNEL: Data=5
# KERNEL: Data=5
# KERNEL: Data=8
# KERNEL: Data=1
# KERNEL: -----------------------
# KERNEL: Data=11
# KERNEL: Data=13
# KERNEL: Data=15
# KERNEL: Data=15
# KERNEL: Data=14
# KERNEL: Data=13
# KERNEL: Data=12
# KERNEL: Data=14
# KERNEL: Data=12
# KERNEL: Data=15*/
