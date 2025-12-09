//pure virtual method
virtual class packet;
  int a,b,c;
  pure virtual function void disp();//pure virtual declaration
  pure virtual task sum();
endclass
    
    class child extends packet;
      function void disp();
        a=5;
        $display("value of a=%0d b=%0d c=%0d",a,b,c);
      endfunction
      
      task sum();
        c=a+b;
        $display("value of a=%0d b=%0d c=%0d",a,b,c);
      endtask
    endclass
    
module pure_virtual;
initial begin
  child c = new();
  c.disp();
  c.b=10;
  c.sum();
end
endmodule
//value of a=5 b=0 c=0
//value of a=5 b=10 c=15
