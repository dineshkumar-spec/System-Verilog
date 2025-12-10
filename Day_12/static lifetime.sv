/*static method only use static property if its used leads to compilation error 
but  static life time method is a method to access non static property in static method
local variable sholud always be static declared*/
class sample;
  static int s_count;//static
  int count;//non static
  function static count_fun();//static lifetime declared 
    int status;
    status = s_count++;
    count++;
  endfunction
endclass
module class_eg;
  sample s1[7];
  initial begin
    foreach(s1[i])begin
      s1[i]=new();
      s1[i].count_fun();
      $display("value of s_count=[%0d]=%0d count[%0d]=%0d",i,s1[i].s_count,i,s1[i].count);
    end
    end
endmodule
/*# value of s_count=[0]=1 count[0]=1
# value of s_count=[1]=2 count[1]=1
# value of s_count=[2]=3 count[2]=1
# value of s_count=[3]=4 count[3]=1
# value of s_count=[4]=5 count[4]=1
# value of s_count=[5]=6 count[5]=1
# value of s_count=[6]=7 count[6]=1*/
