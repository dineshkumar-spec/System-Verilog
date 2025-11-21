/*Write a class counter with a variable count.
Include methods:
increment() → increases count by 1
decrement() → reduces count by 1
get_count() → returns current count
Create 2 objects and show both work independently.*/

class counter;
int count;
  function void increment();
  count=count+1;
  endfunction
  
  function void decrement();
  count = count-1;
  endfunction
  
  function int get_count();
    return count;
  endfunction
endclass

module count_value;
initial begin
  counter c1;
  counter c2;
  c1 = new();
  c2 = new();
  c1.increment();
   c1.increment();
  c2.decrement();
  c2.decrement();
  
  $display("c1 count=%0d",c1.get_count());
  $display("c2 count=%0d",c2.get_count());
  
  
end
endmodule
