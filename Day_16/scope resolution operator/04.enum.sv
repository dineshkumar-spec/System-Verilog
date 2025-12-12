class bike;
  typedef enum{
  HERO,
  YAMAHA,
  ROYAL_ENFIELD,
    HONDA}brand;
  
  function void display(brand br);
    $display("brand %s",br.name());
  endfunction
endclass

module eg;
  initial begin
    bike b = new();
    b.display(bike::HONDA);
  end
endmodule
// brand HONDA
