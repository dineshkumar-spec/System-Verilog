class packet;
  rand bit[3:0] value1;
  rand bit[3:0] value2;
  
  constraint value_c1 {value1 dist{3:/4,[5:8]:/7};}// 3 have 4 weight and  high weight than [5:8] it have 1.75
  constraint value_c2 {value2 dist{3:=4,[5:8]:=7};}// 3 have 4 weight and [5:8] have 7 weight 
endclass

module eg;
  initial begin
    packet p = new();
    repeat(15)begin
      p.randomize();
      $display("value1(with :/)=%0d | value2(with:=)=%0d",p.value1,p.value2);
    end
  end
endmodule
/*# value1(with :/)=3 | value2(with:=)=6
# value1(with :/)=8 | value2(with:=)=7
# value1(with :/)=7 | value2(with:=)=7
# value1(with :/)=8 | value2(with:=)=8
# value1(with :/)=6 | value2(with:=)=5
# value1(with :/)=7 | value2(with:=)=5
# value1(with :/)=3 | value2(with:=)=8
# value1(with :/)=6 | value2(with:=)=5
# value1(with :/)=3 | value2(with:=)=7
# value1(with :/)=7 | value2(with:=)=6
# value1(with :/)=3 | value2(with:=)=7
# value1(with :/)=3 | value2(with:=)=7
# value1(with :/)=5 | value2(with:=)=6
# value1(with :/)=5 | value2(with:=)=8
# value1(with :/)=3 | value2(with:=)=6*/
