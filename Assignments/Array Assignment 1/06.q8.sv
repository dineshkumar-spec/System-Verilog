/*8. Write a test bench to test the Associative array data type and its predefined
methods by using the following statements
a. declare a 64-bit integer type sparse array assoc & an index idx
b. initialize idx to 1
c. fill array assoc by 1-bit left shift of idx value in a loop
which runs 64 times so that the array is filled as a
sparse array
d. use first, next, last, prev methods to get the values of
these elements*/
/*repeat(64) produces powers of 2

until int overflows.

Correct up to iteration 31

(1 → 1073741824)

After that:

Overflow occurs

idx becomes negative and then 0

arr[0] gets written repeatedly*/
module sparse;
  longint arr [int];
  int idx;
  initial begin
    idx = 1;
    repeat(64)begin
      arr[idx] = idx;
      idx = idx << 1;
    end
    if(arr.first(idx))
    $display(arr[idx]);
    if(arr.next(idx))
    $display(arr[idx]);
    if(arr.last(idx))
    $display(arr[idx]);
    if(arr.prev(idx))
    $display(arr[idx]);
  end
endmodule
