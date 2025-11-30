/*2. Write a snippet in SV to insert one queue into another queue. (Do it with
& without using array methods)*/
module eg;
  int q[$]='{1,2,3,4,5};
  int d[$]='{6,7,8,9,10};
  initial begin
    $display("Elements of q:",q);
    $display("Elements of d:",d);
    q={q,d};
    $display("After inserting elements without using array methods:",q);
  end
endmodule
-------------------------------------------------------------------------------
/*2. Write a snippet in SV to insert one queue into another queue. (Do it with
& without using array methods)*/
module eg;
  int q[$]='{1,2,3,4,5};
  int d[$]='{6,7,8,9,10};
  initial begin
    $display("Elements of q:",q);
    $display("Elements of d:",d);
    foreach(d[i])
      q.push_back(d[i]);
    $display("After inserting elements using array methods:%p",q);
  end
endmodule
