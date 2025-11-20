//design code
module and_gate(and_if.DUT_mp inf);
assign inf.y = inf.a ^ inf.b;
endmodule

//interface
interface and_if;
  logic a,b;
  logic y;
  modport DUT_mp(input a,b,output y);
  modport TEST_mp(output y,input a,b);
endinterface

//test
module tb;
  and_if inf();//interface instance
  and_gate dut ( inf.DUT_mp);//connect interface to module
initial begin
  $dumpfile("dump.vcd"); $dumpvars;
  $monitor("time=%0t|a=%b|b=%b|y=%b",$time,inf.a,inf.b,inf.y);
    inf.a=0;inf.b=0;#5;
    inf.a=0;inf.b=1;#5;
    inf.a=1;inf.b=0;#5;
    inf.a=1;inf.b=1;#5;
  $finish;
end
endmodule
