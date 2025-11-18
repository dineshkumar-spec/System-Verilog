// Code your testbench here
// or browse Examples
module shortint_to_othertypes;
shortint short;
  integer integer_typ;
  longint long;
  initial begin
  
  short = 'b111x_x010;
    $display("before casting");
    short = int'(short);
    $display("after casting to int %b",short);
    
    
    $display("before casting");
    integer_typ = integer'(short);
    $display("after casting to integer %b",integer_typ);
    
    $display("before casting");
    long = longint'(short);
    $display("after casting to longint %b",long);
  end
endmodule
