class parent_trans;
  bit[31:0]data_p;
  function void disp_p();
    $display("value of data_p=%0d",data_p);
  endfunction
endclass

class child_c1 extends parent_trans;
  bit[31:0]data_c1;
  function void disp_c1();
    $display("value of data_c1=%0d",data_c1);
  endfunction
endclass


class child_c2 extends parent_trans;
  bit[31:0]data_c2;
  function void disp_c2();
    $display("value of data_c2=%0d",data_c2);
  endfunction
endclass


class child_A extends child_c1;
  bit[31:0]data_ca;
  function void disp_ca();
    $display("value of data_ca=%0d",data_ca);
  endfunction
endclass


class child_B extends child_A;
  bit[31:0]data_cb;
  function void disp_cb();
    $display("value of data_cb=%0d",data_cb);
  endfunction
endclass

module multilevel_inheritance;
initial begin
  child_B c = new();//child 1 extended classes
  child_c2 d = new();// child2
  c.data_cb=1;
  c.data_ca=2;
  c.data_c1=3;
  c.data_p=4;
  d.data_c2=6;
  d.data_p=10;
  
  c.disp_cb();
  c.disp_ca();
  c.disp_c1();
  c.disp_p();
  
  d.disp_c2();
  d.disp_p();
end
endmodule
