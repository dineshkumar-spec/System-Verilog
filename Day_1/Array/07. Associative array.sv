module associative_array;
  typedef enum {Transmit,Receive,Repeat}tr_type;
  bit[7:0] array_enum[tr_type];
  bit[7:0] array_int[int];
  initial begin
    array_enum[Transmit]=10;
    array_enum[Receive]=20;
    array_enum[Repeat]=30;
    foreach(array_enum[i])begin
      $display("Array_enum[%s]=%0d",i.name(),array_enum[i]);
    end
    array_int[5]=34;
    array_int[10]=29;
    array_int[67]=1;
    foreach(array_int[i])begin
      $display("Array_int[%0d]=%0d",i,array_int[i]);
    end
  end
endmodule
