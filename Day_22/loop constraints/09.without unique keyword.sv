class eg;
  rand bit [5:0]arr[15];
  constraint c{
    foreach(arr[i])
    { arr[i] %2==0;
     foreach(arr[j])
       if(i!=j)
         arr[i]!=arr[j];}
       
              }
endclass

module code;
  initial begin
    eg e = new();
     e.randomize();
    foreach(e.arr[i])begin
      $display("arr[%0d]=[%0d]",i,e.arr[i]);end
  end
endmodule
    /*arr[0]=[22]
arr[1]=[24]
arr[2]=[40]
arr[3]=[16]
arr[4]=[52]
arr[5]=[10]
arr[6]=[26]
arr[7]=[2]
arr[8]=[34]
arr[9]=[36]
arr[10]=[6]
arr[11]=[48]
arr[12]=[0]
arr[13]=[28]
arr[14]=[50]*/
