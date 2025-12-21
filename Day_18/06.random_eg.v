module example;
  int data;
  bit[3:0]value;
  initial begin
    repeat(10)begin
    data=$random;
      value=$urandom;
    $display("value f data=%0d|value=%0d",data,value);
    end
  end
endmodule
/*# value f data=303379748|value=3
# value f data=-1064739199|value=2
# value f data=-2071669239|value=10
# value f data=-1309649309|value=13
# value f data=112818957|value=8
# value f data=1189058957|value=10
# value f data=-1295874971|value=0
# value f data=-1992863214|value=12
# value f data=15983361|value=2
# value f data=114806029|value=12*/
