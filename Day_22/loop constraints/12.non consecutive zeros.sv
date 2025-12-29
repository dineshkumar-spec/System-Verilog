//not print consecutive 5 zeros
class eg;
  rand bit[9:0] data;
  constraint c{!(data[4:0] inside {0,1});
               !(data[5:1] inside {0,1});
               !(data[6:2] inside {0,1});
               !(data[7:3] inside {0,1});
               !(data[8:4] inside {0,1});
               !(data[9:5] inside {0,1});}
endclass

module code;
  initial begin
    eg e = new();
    repeat(5)begin
    e.randomize();
      $display("data=%b",e.data);
    end
  end
endmodule
/*data=1010111000
data=0110111111
data=0110010101
data=0101011001
data=1010001100*/
