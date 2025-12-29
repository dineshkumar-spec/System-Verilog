class eg;
  rand int arr[];
  constraint c
  {arr.size()==15;
   foreach(arr[i])
   {arr[i] inside{[1:50]};
    arr[i]%2==0;
    if(i>0)
      arr[i]>arr[i-1];
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
/*arr[0]=[4]
arr[1]=[12]
arr[2]=[14]
arr[3]=[20]
arr[4]=[22]
arr[5]=[30]
arr[6]=[32]
arr[7]=[34]
arr[8]=[36]
arr[9]=[38]
arr[10]=[40]
arr[11]=[44]
arr[12]=[46]
arr[13]=[48]
arr[14]=[50]*/
