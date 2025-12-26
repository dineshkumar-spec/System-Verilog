// Code your testbench here
// or browse Examples
class data_frames;
  rand int val[];
  constraint c1 {val.size()==10;}
  constraint c2 {foreach (val[i])
    val[i]==fact(i+1);}
  function int fact(int num);
    if(num==0)
      fact=1;
    else
      fact=num*fact(num-1);
  endfunction
endclass
    
module eg;
    data_frames  d;
  initial begin
  d = new();
    d.randomize();
    foreach(d.val[i])
      $display("value of val[%0d]=%0d",i,d.val[i]);
  end
endmodule
/*# KERNEL: value of val[0]=1
# KERNEL: value of val[1]=2
# KERNEL: value of val[2]=6
# KERNEL: value of val[3]=24
# KERNEL: value of val[4]=120
# KERNEL: value of val[5]=720
# KERNEL: value of val[6]=5040
# KERNEL: value of val[7]=40320
# KERNEL: value of val[8]=362880
# KERNEL: value of val[9]=3628800*/
