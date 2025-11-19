module half_adder(input a,b,output sum,carry);
  assign {carry,sum}=a+b;
endmodule

module full_adder(input a,b,c,output s,cout);
wire s0,c0,c1;
  half_adder ha1(.a(a),.b(b), .sum(s0), .carry(c0));
  half_adder ha2(.a(s0),.b(c),.sum(s),.carry(c1));
  assign cout = c0|c1;
endmodule

module tb;
reg a;
reg b;
reg c;
wire s,cout;
  full_adder fa(a,b,c,s,cout);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t|a=%b|b=%b|c=%b|sum=%b|cout=%b",$time,a,b,c,s,cout);
    a=0;b=0;c=0;#5;
    a=0;b=0;c=1;#5;
    a=0;b=1;c=0;#5;
    a=0;b=1;c=1;#5;
    a=1;b=0;c=0;#5;
    a=1;b=0;c=1;#5;
    a=1;b=1;c=0;#5;
    a=1;b=1;c=1;#5;
    $finish;
  end
endmodule
