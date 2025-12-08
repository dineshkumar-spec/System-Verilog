class parentclass;
  bit[31:0] addr;
endclass

class childclass extends parentclass;
  bit[31:0]data;
endclass

module inheritance;
childclass c;
  initial begin
    c=new();
    c.addr=3245;
    c.data=9876;
    $display("value of addr=%0d | data=%0d",c.addr,c.data);
  end
endmodule
