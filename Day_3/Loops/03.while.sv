module while_eg;
  logic [2:0]count;
  logic [3:0]mem[0:7];
  initial begin
  count=4;
    while(count)begin
    mem[count]=$urandom;
    $display("mem[%0d]=%0d",count,mem[count]);
    count++;
  end
  end
endmodule
/*# KERNEL: mem[4]=0
# KERNEL: mem[5]=9
# KERNEL: mem[6]=7
# KERNEL: mem[7]=13*/
