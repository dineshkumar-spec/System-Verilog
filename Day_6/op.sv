module increment;
  int a,b,c,d;
  initial begin
    a=10;
    b=a++; //assign a to b, then icrement
    $display("b=a++ :: a=%0d b=%0d",a,b);
    
    a=20;
    b=++a;//increment a,then assign to b
    $display("b = ++a :: a = %0d b=%0d",a,b);
    
      
    a=10;
    b=a--;// assign a to b ,then decrement a
    $display("b = a-- :: a = %0d b=%0d",a,b);
    
    a=20;
    b=--a;//decrement a,then assign to b
    $display("b = ++a :: a = %0d b=%0d",a,b);
    
    a=10;c=10;
    b = ++a + ++c;
    //increent a and c ; then assign a+c to b
    $display("b = ++a + ++c :: a=%0d c=%0d b=%0d",a,c,b);
    
      a=10;c=10;
    b = a++ + c++;
    // assign a+c to b ; then increment a and c
    $display("b = a++ + c++ :: a=%0d c=%0d b=%0d",a,c,b);
  end
endmodule
