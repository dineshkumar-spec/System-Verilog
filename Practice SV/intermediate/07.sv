/*Write a constraint such that:
delay must be multiple of 5*/
class eg;
  rand int delay[];
  constraint c {delay.size ==10;
    foreach (delay[i])
      delay[i]%5==0;}
endclass

module code;
  initial begin
    eg e = new();
   // repeat(10)begin
      e.randomize();
      foreach(e.delay[i])begin
        $display("delay[%0d]=%0d",i,e.delay[i]);end
   // end
  end
endmodule
/*# KERNEL: delay[0]=-1214407540
# KERNEL: delay[1]=-968044825
# KERNEL: delay[2]=-1828612145
# KERNEL: delay[3]=-896063705
# KERNEL: delay[4]=-633922875
# KERNEL: delay[5]=1182471405
# KERNEL: delay[6]=-803525965
# KERNEL: delay[7]=857461865
# KERNEL: delay[8]=-1978601295
# KERNEL: delay[9]=-1913915430*/
