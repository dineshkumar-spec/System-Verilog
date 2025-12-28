/*Create a constraint:
array size = 10 elements
each element between 5 and 50
values must be unique*/
class eg;
  rand int arr[];
  int i;
  constraint c { arr.size()==10;
                 foreach(arr[i])
                 arr[i] inside{[5:50]};}
endclass
module code;
  initial begin
    eg e = new();
   // repeat(5)begin
      e.randomize();
      foreach(e.arr[i])
        $display("arr=[%0d]",e.arr[i]);
   // end
  end
endmodule
/*# KERNEL: arr=[44]
# KERNEL: arr=[24]
# KERNEL: arr=[46]
# KERNEL: arr=[25]
# KERNEL: arr=[45]
# KERNEL: arr=[18]
# KERNEL: arr=[6]
# KERNEL: arr=[47]
# KERNEL: arr=[36]
# KERNEL: arr=[9]*/
