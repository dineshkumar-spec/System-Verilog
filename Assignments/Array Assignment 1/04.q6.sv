/*6. Write a test bench to test the dynamic array data type and its predefined
methods by using the following statements
a. declare two dynamic arrays d1, d of type int
b. initialize d array elements with (9,1,8,3,4,4)
c. allocate six elements in array d1
d. initialize array d1 with index as its value
e. display d1 and its size
f. delete array d1
g. reverse, sort, reverse sort, and shuffle the array d*/

module dyn;
  int d1[];
  int d[];
  initial begin
    d1=new[6];
     d1 = '{0,1,2,3,4,5};
     d = '{9,1,8,3,4,4};
    
    $display("Elements %p",d1,"Size of d1 is %0d",d1.size());
    d1.delete();
    $display(d1);
    d.reverse();
    $display("Reverse of d %p",d);
    d.sort();
    $display("after sorting %p",d);
    d.rsort();
    $display("after reverse sort %p",d);
    d.shuffle();
    $display("after shuffle %p",d);
  end
endmodule
