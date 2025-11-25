module array_query1;

  typedef logic [15:0] mem_t [991:63]; var mem_t mem;

  logic [7:0][15:0] myarr [12:10][3:0];
  byte a ='d6;
  string s1="vlsi verify ";

  initial begin $display("Dimesion of mem : %0d", $high(mem));
    $display("Dimesion of myarr : %0d", $high(myarr));
  $display("Dimension of a: %0d",$dimensions(a));  
    $display("dimension of string :%0d",$dimensions(s1));
end endmodule
/*# Dimesion of mem : 991
# Dimesion of myarr : 12
# Dimension of a: 1
# dimension of string :1*/
