class parent_trans;
  bit[31:0]data;
  function void disp_p();
    $display("value of data=%0h",data);
  endfunction
endclass

class child_trans extends parent_trans;
int id;
  function void disp_c();
    $display("value of id=%0h",id);
  endfunction
endclass

module class_eg;
initial begin
  child_trans c = new();
  c.data = 100;
  c.id = 1;
  c.disp_p();
  c.disp_c();
end
endmodule
