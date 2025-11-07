// Code your design here
// Code your design here
module datatypes;
  shortint a;      //16 bits - 2 state
  int b;           //32 bits - 2 state
  longint c;       //64 bits - 2 state
  bit [3:0]d;      //user defined - 2 state
  byte e;          //8 bits - 2 state
  reg [7:0] f;     //user defined - 4 state variables below
  logic [7:0] g;   //user defined
  integer h;       //32 bits

  initial begin
  a = 8'b1100xx11;
  b = 8'h15;
  c = 32'h45;
  d = 4'ha;
  e = 'h23;
  f = 8'b1111xx00;
  g = 8'b01101100;
  h = -1;
  end
  initial begin
    $display("a=%b|b=%h|c=%h|d=%h|e=%h",a,b,c,d,e);
    $display("f=%b|g=%b|h=%h",f,g,h);
  end
endmodule
