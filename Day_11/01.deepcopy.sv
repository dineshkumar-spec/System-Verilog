//class
class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address;
  //class constructor
  function new();
    start_address = 10;
    end_address = 70;
  endfunction
  //copy method
  function address_range copy();
    copy = new();
    copy.start_address = this.start_address;
    copy.end_address = this.end_address;
    return copy;
  endfunction
endclass

//class
class packet;
  bit[31:0] addr;
  bit [31:0] data;
  address_range ar; //class handle
  
  function new();
    addr = 32'h12346;
    data = 32'h67;
    ar = new(); //creating object
  endfunction
  
  //display method
  function void display();
    $display("---------------------");
    $display("addr = %0h",addr);
    $display("data = %0h",data);
    $display("start address = %0d",ar.start_address);
    $display("End address = %0d",ar.end_address);
    $display("---------------------");
  endfunction
  
  //function copy method
  function packet copy();
    copy = new();
    copy.addr = this.addr;
    copy.data = this.data;
    copy.ar = ar.copy;
    return copy; 
  endfunction
endclass

//module
module deepcopy;
  packet p1;
  packet p2;
  
  initial begin
    p1=new();
    $display("calling p1 display");
    p1.display();
    
    p2=new();
    $display("calling p2 display");
    p2.display();
    
    p2=p1.copy();//calling copy method
    p2.addr = 32'h6543;
    p2.ar.start_address = 13;
    p2.ar.end_address = 20;
    $display("calling p1 after changing p2");
    p1.display();
    
    $display("calling p2 after changing p2");
    p2.display();
  end
endmodule
/*calling p1 display
---------------------
addr = 12346
data = 67
start address = 10
End address = 70
---------------------
calling p2 display
---------------------
addr = 12346
data = 67
start address = 10
End address = 70
---------------------
calling p1 after changing p2
---------------------
addr = 12346
data = 67
start address = 10
End address = 70
---------------------
calling p2 after changing p2
---------------------
addr = 6543
data = 67
start address = 13
End address = 20
---------------------*/
