module tb;
  bit[1:0]abc;
  initial begin
  abc=1;
    priority case(abc)
      0:$display("Found to be 0");
      2:$display("Found to be 2");
    endcase
  end
endmodule
//Warning: priority_case_1: testbench.sv(5), scope: tb, time: 0. None of case items matched, actual expression value: 01 
