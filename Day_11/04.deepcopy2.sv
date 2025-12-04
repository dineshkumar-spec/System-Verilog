// Q1. Deep Copy Basic
// You have a class:
// class Address;
//   int door_no;
//   string street;
// endclass
// class Person;
//   string name;
//   Address addr;
// endclass
// Write code to perform a deep copy of a Person object so that:
// name is copied
// addr (inner object) is not shared, but duplicated

class Address;
  int door_no;
  string street;
  
  function new();
    door_no = 45;
    street = "anna arch";
  endfunction
  
  function Address copy();
    copy = new();
    this.door_no = copy.door_no;
    this.street = copy.street;
    return copy;
  endfunction;
endclass

class Person;
  string name;
  Address addr;
  
  function new();
    name = "dk";
    addr = new();
  endfunction
  
  function void display();
    $display("door no = %0d",addr.door_no);
    $display("street = %s",addr.street);
    $display("name = %s",name);
  endfunction
  
  function Person copy;
    copy = new();
    this.name = copy.name;
    this.addr = addr.copy;
    return copy;
  endfunction
endclass

module deep;
  Person p1;
  Person p2;
  initial begin
    p1 = new();
    p1.display();
    p2 = p1.copy();
    p2.addr.door_no = 7;
    p2.addr.street = "chennai";
    p2.name = "kd";
    p1.display();
    p2.display();
  end
endmodule
/*# KERNEL: door no = 45
# KERNEL: street = anna arch
# KERNEL: name = dk
# KERNEL: door no = 45
# KERNEL: street = anna arch
# KERNEL: name = dk
# KERNEL: door no = 7
# KERNEL: street = chennai
# KERNEL: name = kd*/
