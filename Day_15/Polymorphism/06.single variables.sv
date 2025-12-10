class packet;
  int a,b;
  function void display();
    $display("value of a=%0d,b=%0d",a,b);
  endfunction
endclass

class child extends packet;
  //int a,b;
  function void display();
    $display("value of a=%0d,b=%0d",a,b);//here value override 
  endfunction
endclass

module poly;
  initial begin
    child c = new();
    packet p = c;
    p.a=10;
    p.b=20;
    c.a=30;
    c.b=40;
    p.display();
  end
endmodule
//value of a=30,b=40
