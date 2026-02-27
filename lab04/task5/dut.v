module dut(a, b, alu_ctrl, zero, res);

    input [31:0] a, b;
    input [2:0] alu_ctrl;
    output zero;
    output [31:0] res;

    rv32ialu inst (a, b, alu_ctrl, zero, res);

endmodule