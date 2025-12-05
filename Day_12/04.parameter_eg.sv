class packet#(parameter WIDTH = 4);
  bit [WIDTH-1:0]data;
  function void display();
    $display("data=%0h",data);
  endfunction
endclass

module class_eg;
  packet p4;
  packet #(8) p8;
  packet #(16) p16;
  initial begin
    p4=new();
    p8=new();
    p16=new();
  p4.data=15;
  p4.display();
  p8.data=255;
  p8.display();
  p16.data=256;
  p16.display();
  end
endmodule
