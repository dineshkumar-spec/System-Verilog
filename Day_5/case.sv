module cas;
  logic [2:0]index;
  always@(index)begin
    case(index)
      0:$display($stime,,,"case 0 is executed");
      1:$display($stime,,,"case 1 is executed");
      2:$display($stime,,,"case 2 is executed");
      3:$display($stime,,,"case 3 is executed");
      default:$display($stime,,,"default case is executed");
    endcase
  end
  initial begin
  #5 index = 0;
    $monitor($stime,,,"index=%0d",index);
    #40 $finish;
  end
  
  always begin
  #10 index=index++;
  end
endmodule
