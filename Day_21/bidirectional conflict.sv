class packet;
  rand bit[3:0]a;
  rand bit[3:0]b;
  constraint c1 { a==1;}
  constraint c2 {if(a==0)b==1;
                 else    b==0;}

endclass

module bidirectional;
  initial begin
    packet pkt = new();
    repeat(5)begin
      pkt.randomize()with{b==1;};
      $display("a=%0d b=%0d ",pkt.a,pkt.b);
    end
  end
endmodule
/*Error-[CNST-CIF] Constraints inconsistency failure
Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 14
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.

a=0 b=0 */
