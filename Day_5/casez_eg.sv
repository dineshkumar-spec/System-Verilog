module cas;
  logic [7:0]index;
  always@(index)begin
    casez(index)
      'b1???_????:$display($stime,,,"case 0 is executed");
      'b01??_????:$display($stime,,,"case 1 is executed");
      'b001z_zzzz:$display($stime,,,"case 2 is executed");
      'b0001_xxxx:$display($stime,,,"case 3 is executed");
      default:$display($stime,,,"default case is executed");
    endcase
  end
  initial begin
  #10 index=8'b1010_1110;
  #10 index=8'b0101_0101;
  #10 index=8'b0010_0100;
  #10 index=8'b0001_1101;
  #10 index=8'b0000_1111;
  #40 $finish;
  end
  
  initial begin
    $monitor($stime,,,"index=%0b",index);
  end
endmodule
