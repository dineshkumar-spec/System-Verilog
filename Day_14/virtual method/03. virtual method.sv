//without virtual
class baseclass;
  function void display();
    $display("inside base class");
  endfunction
endclass

class extendclass extends baseclass;
  function void display();
    $display("inside extend class");
  endfunction
endclass

module eg;
  initial begin
    baseclass  bc;
    extendclass  ec;
    ec = new();
    bc = ec;
    bc.display();
  end
endmodule
//inside base class
//with virtual
class baseclass;
  virtual function void display();
    $display("inside base class");
  endfunction
endclass

class extendclass extends baseclass;
  function void display();
    $display("inside extend class");
  endfunction
endclass

module eg;
  initial begin
    baseclass  bc;
    extendclass  ec;
    ec = new();
    bc = ec;
    bc.display();
  end
endmodule
//inside extend class
