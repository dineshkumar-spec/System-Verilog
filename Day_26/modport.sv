module add(intf.add add_if);
assign add_if.sum = add_if.a + add_if.b;
endmodule

module sub(intf.sub sub_if);
assign sub_if.result = sub_if.sum - sub_if.d;
endmodule

interface intf;
  logic[3:0] a,b,d;
  logic[4:0] sum,result;
  
  modport add(
  			input a,b,
  			output sum);
  
  modport sub(
  			input sum,d,
  			output result);
endinterface

module tb;
  intf if1();
  add add_dut(if1);
  sub sub_dut(if1);
  
  initial begin
    if1.a = 2;
    if1.b = 1;
    if1.d = 1;
    #20;
    if1.a = 10;
    if1.b = 11;
    if1.d=8;
    #20;
  end
  
  always@(if1.sum or if1.result)
    $display("time=%0t | a=%0d | b=%0d | d=%0d | sum=%0d | result=%0d",$time,if1.a,if1.b,if1.d,if1.sum,if1.result);
endmodule
/*time=0 | a=2 | b=1 | d=1 | sum=3 | result=2
time=20 | a=10 | b=11 | d=8 | sum=21 | result=13*/
