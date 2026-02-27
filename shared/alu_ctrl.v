module alu_ctrl(alu_ctrl, funct3, funct7_5);
    input [2:0] funct3;
    input funct7_5;
    output [2:0] alu_ctrl;

    assign #1 alu_ctrl = (funct3 == 3'b000 && funct7_5 == 1'b0) ? 3'b001 :
                         (funct3 == 3'b000 && funct7_5 == 1'b1) ? 3'b000 :
                         (funct3 == 3'b111) ? 3'b010 :
                         (funct3 == 3'b110) ? 3'b011 :
                         (funct3 == 3'b001) ? 3'b100 :
                         (funct3 == 3'b010) ? 3'b110 : 3'b000;
endmodule