interface bus(input logic clk);
  logic [31:0]addr;
  logic [31:0]data;
endinterface

class driver;
virtual bus vif;
  function new(virtual bus vif);
  this.vif = vif;
  endfunction
  
  task drive(bit[31:0]addr,data);
    @(posedge vif.clk)
    vif.addr = addr;
    vif.data = data;
    $display("addr=%0h,data=%0d",addr,data);
  endtask
endclass

module top;
  bit clk;
  bus _if(clk);
  driver d1;
  always #5 clk = ~clk;
  initial begin
    d1 = new(_if);
    #20;
    d1.drive('h2,200);
    #40;
    d1.drive('h4,400);
  end
endmodule
/*Value of a = 6, b = 4
Sum of a and b, c = 10*/
