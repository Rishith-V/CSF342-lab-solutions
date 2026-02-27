module dut(alu_ctrl, funct3, funct7_5);
    input [2:0] funct3;
    input funct7_5;
    output [2:0] alu_ctrl;

    alu_ctrl DUT (alu_ctrl, funct3, funct7_5);

endmodule