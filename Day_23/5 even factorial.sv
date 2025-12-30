class eg;
  rand int val[];
  constraint c{val.size()==5;}
  constraint c1{foreach(val[i])
               {
                 val[i]==fact((i+1)*2);
               }}
endclass
                 
static function automatic int fact(int num);
       if(num==0)
          fact=1;
       else
          fact=num*fact(num-1);
endfunction     
               
module code;
  initial begin
    eg e = new();
    e.randomize();
    foreach(e.val[i])
      $display("val[%0d]=%0d",i,e.val[i]);
  end
endmodule
/**val[0]=2
val[1]=24
val[2]=720
val[3]=40320
val[4]=3628800/
