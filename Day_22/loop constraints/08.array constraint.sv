class eg;
  rand bit [5:0]arr[15];
  constraint c{
    foreach(arr[i])
             arr[i] %2==0;
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
