module op;
  bit[7:0]bus_data;
  initial begin
    for(int i=0;i<10;i++)begin
    bus_data=$urandom;
      if(bus_data inside {1,2,[4:9],10,15,20,58,[200:150]})
        $display("bus_data=%0d 'inside' {1,2,[4:9],10,15,20,58,[200:150]}",bus_data);
      else
        $display("bus_data=%0d 'outside' {1,2,[4:9],10,15,20,58,[200:150]}",bus_data);
    end
  end
endmodule
