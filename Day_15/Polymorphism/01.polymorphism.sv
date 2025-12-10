class parent;
  bit[31:0]data;
  int id;
  
  virtual function void display();
    $display("Base class:value of data=%0d, id=%0d",data,id);
  endfunction
endclass

class child_A extends parent;
function void display();
  $display("child_A class:value of data=%0d, id=%0d",data,id);
endfunction
endclass

class child_B extends parent;
function void display();
  $display("child_B class:value of data=%0d, id=%0d",data,id);
endfunction
endclass

class child_C extends parent;
function void display();
  $display("child_C class:value of data=%0d, id=%0d",data,id);
endfunction
endclass

module polymorphism;
initial begin
parent p_a,p_b,p_c;
  
  child_A c_a = new();
  child_B c_b = new();
  child_C c_c = new();
  
  c_a.data = 100;
  c_a.id=1;
  c_b.data = 200;
  c_b.id=2;
  c_c.data = 300;
  c_c.id=3;
  
  p_a = c_a;
  p_b=c_b;
  p_c=c_c;
  
  p_a.display();
  p_b.display();
  p_c.display();
  
  p_a.data=400;
  p_a.id=4;
  p_a.display();
end
endmodule
/*# child_A class:value of data=100, id=1
# child_B class:value of data=200, id=2
# child_C class:value of data=300, id=3
# child_A class:value of data=400, id=4*/
