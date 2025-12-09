//pure virtual method
virtual class packet;
  int i;
  pure virtual function void init(int a);//pure virtual declaration
endclass
    
    class child extends packet;
      function void init (int a);
      i=-a;
        $display("value of i = %0d",i);
      endfunction
    endclass
    
module pure_virtual;
initial begin
  child c = new();
  c.init(10);
end
endmodule
