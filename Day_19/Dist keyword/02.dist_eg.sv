class packet;
  rand bit[3:0] value1;
  rand bit[3:0] value2;
  
  constraint value_c1 {value1 dist{2:/5,[10:12]:/8};}
  constraint value_c2 {value2 dist{2:/5,[10:12]:=8};}
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
/*# value1(with :/)=12 | value2(with:=)=11
# value1(with :/)=2 | value2(with:=)=12
# value1(with :/)=12 | value2(with:=)=12
# value1(with :/)=11 | value2(with:=)=2
# value1(with :/)=11 | value2(with:=)=10
# value1(with :/)=12 | value2(with:=)=10
# value1(with :/)=10 | value2(with:=)=10
# value1(with :/)=2 | value2(with:=)=2
# value1(with :/)=10 | value2(with:=)=12
# value1(with :/)=12 | value2(with:=)=11
# value1(with :/)=2 | value2(with:=)=12
# value1(with :/)=12 | value2(with:=)=12
# value1(with :/)=2 | value2(with:=)=11
# value1(with :/)=10 | value2(with:=)=12
# value1(with :/)=2 | value2(with:=)=2*/
