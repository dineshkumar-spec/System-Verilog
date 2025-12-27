module system_functions;
  bit[31:0] addr1;
  bit[31:0] addr2;
  bit[31:0] addr3;
  bit[31:0] data;
  initial begin
    addr1=$urandom();
    addr2=$urandom(89);
    addr3={$urandom(),$urandom()};
    data=$urandom*6;
    $display("addr1=%0d,addr2=%0d,addr3=%0d,data=%0d",addr1,addr2,addr3,data);
    
    addr1=$urandom_range(30,20);
    addr2=$urandom_range(90);
    addr3=$urandom_range(50,30);
    $display("addr1=%0d,addr2=%0d,addr3=%0d,data=%0d",addr1,addr2,addr3,data);
  end
endmodule
//addr1=4261362690,addr2=3511819237,addr3=845296302,data=695534606
//addr1=30,addr2=11,addr3=47,data=695534606
