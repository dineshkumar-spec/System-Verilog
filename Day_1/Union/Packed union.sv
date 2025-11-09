module uni;
  typedef union packed{
  		int a;
        int b;
  }value;
  initial begin
    value v1,v2;
 	v1.a=32'hfffff;
    v1.b=32'h6;
    
    v2.a=32'h78;
    v2.b=32'h42;
    $display("a=%0h",v1.a);
    $display("b=%0h",v1.b);
    $display("value=%0p",v1);
    $display("a=%0h",v2.a);
    $display("b=%0h",v2.b);
    $display("value=%0p",v2);
   
  end
endmodule
/*# KERNEL: a=6
# KERNEL: b=6 ovrwrite 
# KERNEL: value=6
# KERNEL: a=42
# KERNEL: b=42 overwrites
# KERNEL: value=66*  hex 42's decimal value is 66 /
