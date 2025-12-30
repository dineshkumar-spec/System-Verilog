class eg;
  rand bit data[];
  constraint c{data.size()==20;
               foreach(data[i])
               {
                 if((i%4==0)||(i%4==1))
               data[i]==1;
                 else if((i%4==2)||(i%4==3))
                 data[i]==0;
               }
              }
endclass

module code;
  initial begin
    eg e = new();
   // repeat(2)begin
      e.randomize();
      foreach(e.data[i])
      $write("%0b",e.data[i]);
   // end
  end
endmodule
//11001100110011001100
