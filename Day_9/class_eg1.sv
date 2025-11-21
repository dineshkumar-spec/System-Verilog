class sv_class;
  int x;
  
  task set(int i);
  x=i;
  endtask
  
  function int get();
  return x;
  endfunction
endclass

module sv_classeg;

   sv_class class_1;

  initial begin
    sv_class class_2 = new();
    class_1 = new();
    class_1.set(210);
    class_2.set(980);
    $display("class_1::value of x =%0d",class_1.get());
    $display("class_1::value of x =%0d",class_2.get());
  end
endmodule
