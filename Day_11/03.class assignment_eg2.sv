/*Q2. Demonstrate reference sharing
Create class data with:
bit [7:0] value
Write code to:
d1 = new();
d2 = d1;
d2.value = 200;
👉 Display both d1.value and d2.value
Explain why both changed.*/
class data;
  bit [7:0] value;
  
  function new();
    value = 8'h54;
  endfunction
  
  function void display();
    $display("value = %0d",value);
  endfunction
endclass

module tb;
  data d1;
  data d2;
  initial begin
    d1 = new();
    $display("calling d1");
    d1.display();
    d2 = d1;
    d2.value = 200;
    $display("calling d2");
    d2.display();
    //both give same values 
    d1.display();
    d2.display();
  end
endmodule
