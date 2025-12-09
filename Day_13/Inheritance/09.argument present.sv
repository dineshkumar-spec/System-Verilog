class parentclass;
int addr;
  function new(int addr);
    this.addr=addr;
  endfunction
endclass

class childclass extends parentclass;
int data;
  function new(int data,int addr);//argument present 
    super.new(addr);//use super keyword first 
    this.data=data;
  endfunction
endclass

module super_eg;
  initial begin
    childclass c= new(15,10);
    $display("value of data=%0d addr=%0d",c.data,c.addr);
  end
endmodule
//value of data=15 addr=10
