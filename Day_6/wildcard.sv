module op;
  bit[7:0]data=8'hff;
  initial begin
    if(data=?=8'b1xxx_z1xz)begin
      $display("Data %b matches with %b",data,8'b1xxx_z1xz);
    end
    
    if(data!=?8'b1xxx_z1x0)begin
      $display("Data %b does not matches with %b",data,8'b1xxx_z1x0);
    end
    #1 $finish;
  end
endmodule
