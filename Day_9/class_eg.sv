module class_eg;
class Animal;
  int age;
  string name;
  
  function void print();
    $display("Animal:%s Age=%0d",name,age);
  endfunction
  
  task growold(int how_long);
    repeat(how_long)
      #1s age++;
  endtask
endclass
  
  initial begin
  Animal a_h;
  a_h = new();
  a_h.name="LION";
  a_h.age = 10;
  a_h.growold(3);
  a_h.print();  
  end
endmodule
