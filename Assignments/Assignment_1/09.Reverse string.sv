//09.Reverse string
module reverse_string;
  string str = "SystemVerilog";
  string rev = "";
  int i;
  initial begin
    for(i=str.len-1;i>=0;i--)begin
      rev={rev,str[i]};
    end
    $display("Give string:%s",str);
    $display("Reverse string:%s",rev);
  end
endmodule
//Give string:SystemVerilog
//Reverse string:golireVmetsyS
