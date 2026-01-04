//design
module design_ex(output bit[7:0] addr);
initial begin
addr<=10;
end
endmodule

//tb
program tb(input bit[7:0] addr);
initial begin
  $display("\t Addr=%0d",addr);
end
endprogram

//tb_top
module tb_top;
  wire[7:0]addr;
  
  design_ex dut (addr);
  
  tb test (addr);
endmodule
//	 Addr=10
