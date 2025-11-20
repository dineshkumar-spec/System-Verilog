//design code
module and_gate(and_if inf);
assign inf.y = inf.a & inf.b;
endmodule

//interface
interface and_if;
  logic a,b;
  logic y;
endinterface

//test
module tb;
  and_if inf();//interface instance
  and_gate a (inf);//connect interface to module
initial begin
  $monitor("time=%0t|a=%b|b=%b|y=%b",$time,inf.a,inf.b,inf.y);
    inf.a=0;inf.b=0;#5;
    inf.a=0;inf.b=1;#5;
    inf.a=1;inf.b=0;#5;
    inf.a=1;inf.b=1;#5;
  $finish;
end
endmodule
