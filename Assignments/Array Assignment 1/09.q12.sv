/*12. Write the SystemVerilog code to:
a) Declare a 2-state array, my_array, that holds four 12-bit
values
b) initialize my_array so that:
i. my_array[0] = 12’h012
ii. my_array[1] = 12’h345,
iii. my_array[2] = 12’h678,
iv. my_array[3] = 12’h9AB;
c) Traverse my_array and print out bits [5:4] of each 12-bit
element
i. Using a for loop
ii. Using a foreach loop*/
module example;
  bit [11:0]my_array[4];
  initial begin
    my_array = '{12'h012,12'h345,12'h678,12'h9AB};
   //Traverse using forloop
    for(int i=0;i<4;i++)begin
    $display("my_array[%0d][5:4]=%b",i,my_array[i][5:4]);
    end
      $display("-----------------------------");
    //Traverse using foreach
    foreach(my_array[i])begin
      $display("my_array[%0d][5:4]=%b",i,my_array[i][5:4]);
    end
  end
endmodule
/*# KERNEL: my_array[0][5:4]=01
# KERNEL: my_array[1][5:4]=00
# KERNEL: my_array[2][5:4]=11
# KERNEL: my_array[3][5:4]=10
# KERNEL: -----------------------------
# KERNEL: my_array[0][5:4]=01
# KERNEL: my_array[1][5:4]=00
# KERNEL: my_array[2][5:4]=11
# KERNEL: my_array[3][5:4]=10*/
