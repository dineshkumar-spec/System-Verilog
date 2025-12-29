class eg;
  rand int arr[5][3];
  int i,j;
  constraint c{
    foreach(arr[i,j])
         arr[i][j]==i*j;
              }
endclass

module code;
 int i,j;
  initial begin
    eg e = new();
     e.randomize();
    foreach(e.arr[i,j])begin
      $display("arr[%0d][%0d]=[%0d]",i,j,e.arr[i][j]);end
  end
endmodule
/*arr[0][0]=[0]
arr[0][1]=[0]
arr[0][2]=[0]
arr[1][0]=[0]
arr[1][1]=[1]
arr[1][2]=[2]
arr[2][0]=[0]
arr[2][1]=[2]
arr[2][2]=[4]
arr[3][0]=[0]
arr[3][1]=[3]
arr[3][2]=[6]
arr[4][0]=[0]
arr[4][1]=[4]
arr[4][2]=[8]*/
