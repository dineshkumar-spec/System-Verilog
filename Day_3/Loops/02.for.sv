module for_example;
  int i;
  int mem[0:3];
  initial begin
      for(i=0;i<3;i++)begin
        mem[i]=i+1;
        $display(" mem[%0d]=%0d",i,mem[i]);
      end
   
  end
endmodule
/*# KERNEL:  mem[0]=1
# KERNEL:  mem[1]=2
# KERNEL:  mem[2]=3*/
