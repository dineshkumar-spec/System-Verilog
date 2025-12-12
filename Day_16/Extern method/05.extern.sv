class bike;
  string model;
  int engine_capacity;
  
  extern function void display();
    extern task features(string model,int engine_capacity);
endclass
      
      function void bike::display();
        $display("yamaha bike ");
      endfunction
      
      task bike::features(string model,int engine_capacity);
      this.model = model;
      this.engine_capacity = engine_capacity;
        $display("model=%s and engine capacity = %0d",model,engine_capacity);
      endtask
      
      module eg;
        initial begin
          bike p;
          p = new();
          p.display();
          p.features("pulsar",349);
        end
      endmodule
      // yamaha bike 
      //model=pulsar and engine capacity = 349
