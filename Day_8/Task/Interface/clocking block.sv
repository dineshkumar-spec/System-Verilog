//design
module multiplier(mult_if.RTL inf);
  always@(posedge inf.clk or posedge inf.reset)begin
    if(inf.reset)begin
    inf.out<=0;
    inf.ack<=0;
    end
    else if(inf.en)begin
    inf.out<=inf.a*inf.b;
    inf.ack<=1;
    end
    else inf.ack<=0;
  end
endmodule
//interface
interface mult_if (input logic clk,reset);
  logic [7:0]a,b;
  logic [15:0] out;
  logic en;
  logic ack;
  //used in tstbech to avoid race condition
  clocking cb @(posedge clk);
  default input #1 output #2;
    input out,ack;
    output a,b,en;
  endclocking
  
  modport TB (clocking cb, input clk, reset);
    modport RTL (input clk, reset,a,b,en, output out,ack);
endinterface

//test
module tb;
  bit clk;
  bit reset;
  always #2 clk=~clk;
  
  initial begin
    clk=0;
    reset=1;
    #2;
    reset=0;
  end
  
  mult_if inf(clk,reset);
  multiplier DUT (inf);
  
  `define TB_IF inf.TB.cb
  
  initial begin
  #5;
    `TB_IF.a <='d5; `TB_IF.b <='d6;
    `TB_IF.en <=1; 
    #10 `TB_IF.en <=0;
    wait(`TB_IF.ack);
    $display("time=%0t: a=%0d b=%0d, out=%0d",$time,inf.a,inf.b,inf.out);
    
     #5;
    `TB_IF.a <='d10; `TB_IF.b <='d5;
    `TB_IF.en <=1; 
    #10 `TB_IF.en <=0;
    wait(`TB_IF.ack);
    $display("time=%0t: a=%0d b=%0d, out=%0d",$time,inf.a,inf.b,inf.out);
    $finish;
    $finish;
  end
endmodule
    //# time=15: a=5 b=6, out=30
    //# time=30: a=10 b=5, out=50
