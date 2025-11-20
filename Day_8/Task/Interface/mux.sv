//i0,i1,i2,i3 input, [1:0]sel,y-output
//design
module mux4to1(muxif inf);
  always@*begin
    case(inf.sel)
    2'b00:inf.y=inf.i0;
    2'b01:inf.y=inf.i1;
    2'b10:inf.y=inf.i2;
    2'b11:inf.y=inf.i3;
    default:inf.y=inf.i0;
  endcase
end
endmodule
//interface
interface muxif;
  logic [1:0]sel;
  logic i0,i1,i2,i3;
  logic y;
endinterface

//test
module tb;
  muxif inf();//instance interface
  mux4to1 dut (inf);//connect interface to module
  initial begin
   $dumpfile("dump.vcd"); $dumpvars; $monitor("time=%0t|sel=%b|i0=%b|i1=%b|i2=%b|i3=%b|y=%b",$time,inf.sel,inf.i0,inf.i1,inf.i2,inf.i3,inf.y);
    inf.sel=2'b00;inf.i0=1;#5;
    inf.sel=2'b11;inf.i3=1;#5;
    inf.sel=2'b01;inf.i1=1;#5;
  end
endmodule
