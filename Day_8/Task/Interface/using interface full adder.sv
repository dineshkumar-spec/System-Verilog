// Code your design here
module half_adder(input a,b,output sum,carry);
  assign {carry,sum}=a+b;
endmodule
//fa_if is interface name nd inf is handle name to access multiple signals  

module full_adder(fa_if inf);
wire s0,c0,c1;
  half_adder ha1(inf.a,inf.b,s0,c0);
  half_adder ha2(s0,inf.c,inf.s,inf.cout);
  assign cout = c0|c1;
endmodule

interface fa_if;
  logic a,b,c;
  logic s,cout;
endinterface
//handle name is usd to assign input values and instancs full adder
module tb;
  fa_if inf();
  full_adder fa(inf);
  initial begin $monitor("time=%0t|a=%b|b=%b|c=%b|sum=%b|cout=%b",$time,inf.a,inf.b,inf.c,inf.s,inf.cout);
    inf.a=0;inf.b=0;inf.c=0;#5;
    inf.a=0;inf.b=0;inf.c=1;#5;
    inf.a=0;inf.b=1;inf.c=0;#5;
    inf.a=0;inf.b=1;inf.c=1;#5;
    inf.a=1;inf.b=0;inf.c=0;#5;
    inf.a=1;inf.b=0;inf.c=1;#5;
    inf.a=1;inf.b=1;inf.c=0;#5;
    inf.a=1;inf.b=1;inf.c=1;#5;
    $finish;
  end
endmodule
