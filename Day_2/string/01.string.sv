module str;
  string s1="HARD";
  string s2="WORK";
  string s3="NEVER";
  string s4="12345FAILS";
  string s5="";
   string s6={"HELLO",s5};
  integer i;
  string str;
  initial begin
    $display("s1=%s|s2=%s|s3=%s|s4=%s|s5=%s|s6=%s",s1,s2,s3,s4,s5,s6);
    $display(s1.tolower());
    //s2.getc(1);
    $display("%s",s2.getc(0));
    s3.putc(2,"D");
    $display("%s",s3);
    i=s4.atoi();
    $display("%0d",i);
    s4.itoa(i);
    $display("%s",s4);
  end
endmodule
/*output:
# s1=HARD|s2=WORK|s3=NEVER|s4=12345FAILS|s5=|s6=HELLO
# hard
# W
# NEDER
# 12345
# 12345*/
