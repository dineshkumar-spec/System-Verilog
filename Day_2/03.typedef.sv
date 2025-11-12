/*Create a typedef for an enum type state_t with values:
IDLE, START, RUN, STOP.
Write code to assign a value and print the state name using .name().*/
module typ2;
  typedef enum{IDLE,START,RUN,STOP}state_t;
  state_t s1;
  initial begin
    s1=STOP;
    $display(" State values are:%0d",s1);
    $display("state name is %s",s1.name());
  end
endmodule
