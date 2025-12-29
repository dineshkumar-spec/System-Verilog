class eg;
  rand bit [5:0]arr[10];
  constraint c
  {
    foreach(arr[i])
    { arr[i] %5==0;
     foreach(arr[j])
     {
       if(j>i)
         arr[j]>arr[i];
     }
    }
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
     /*arr[0]=[15]
arr[1]=[20]
arr[2]=[25]
arr[3]=[30]
arr[4]=[35]
arr[5]=[40]
arr[6]=[45]
arr[7]=[50]
arr[8]=[55]
arr[9]=[60]*/
