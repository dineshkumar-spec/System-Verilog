module casting;
  string name;
  real r_num;
  int num[3];
  initial begin
  name="DK";
  r_num=11.30;
    num[0]=shortint'(name);//execute ascii value
    num[1]=int'(r_num);
    r_num=2.125+real'({4'h1,4'hA});
   
    $display("Casting from string to int:num[0]=%0d",num[0]);
    $display("Casting from real to int: num[1]=%0d",num[1]);
    $display("Casting from int to real:r_num=%0f",r_num);
 
  end
endmodule
