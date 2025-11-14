package A;
int data=78;
function display();
  $display("Data:%0d",data);
endfunction
endpackage

package B;
int data=34;
function display();
  $display("Data:%0d",data);
endfunction
endpackage

import A::*;
import B::*;
module example;
  initial begin
    A::display();
    B::display();
  end
endmodule
