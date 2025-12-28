/*Create a 4-byte aligned address:
addr must be aligned to 4 bytes*/
//change 4 to 16 it gives 16 byte value
class eg;
  rand bit[31:0]addr;
  constraint c {addr%4 ==0;}
endclass
module code;
  initial begin
    eg e = new();
    repeat(5)begin
      e.randomize();
      $display("addr=%b",e.addr);
    end
  end
endmodule
