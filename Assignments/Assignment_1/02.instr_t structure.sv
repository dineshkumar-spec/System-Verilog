//2.typedef instruct
module structure;
  typedef struct{
    logic [15:0]opcode;
    logic [7:0]src;
    logic [7:0]dst;
    logic [7:0]imm_value;
  }Instr_t;
   Instr_t memory [0:2];
  initial begin
    memory[1].opcode = 16'b0011_0011;
    memory[2].src = 8'b0000_1111;
    memory[0].dst = 8'b1010_1100;
    memory[1].imm_value = 8'b0110_1001;
  
    $display(memory);
  end
endmodule
