module casting;
  int a = 32'hABCD1234;
  bit[7:0] data;
  bit[3:0] d1;
  int t_int;
  int signed s1=-5;
  logic [7:0]u1 = 8'd6;
  initial begin
  //size casting
    data = 8'(a);
    d1 = 4'(a);
    $display("32 to 8 bit size is %0h",data);
    $display("32 to 4 bit size is %0h",d1);
  //type casting
    t_int=int'(30.54321);
    $display("real to int values is %0d",t_int);
  //sign casting
    s1=signed'(u1);
    u1=unsigned'(251);
    $display("signed cast %0d",s1);
    $display("unsigned cast %0d",u1);
    
    s1=signed'(-10);
    u1=unsigned'(s1);
    $display("signed cast %0d",s1);
    $display("unsigned cast %0d",u1);
    
  end
endmodule
