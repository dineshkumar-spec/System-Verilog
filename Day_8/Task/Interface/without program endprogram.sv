module design_ex(output bit [7:0] addr);
  initial begin
    addr<=10;
    end
endmodule

module testbench(input bit [7:0] addr);
  initial begin
    $display("Addr = %0d",addr);
  end
endmodule

module tbench_top;
  wire [7:0] addr;
  
  design_ex dut (addr);
  testbench test(addr);
endmodule
