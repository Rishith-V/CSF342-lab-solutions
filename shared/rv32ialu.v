module rv32ialu(a, b, alu_ctrl, zero, res);

    input [31:0] a, b;
    input [2:0] alu_ctrl;
    output zero;
    output reg [31:0] res;

    wire [31:0] add_sub_res, and_or_res, shift_res, slt_res;
    wire pos_of, neg_of;

    aluaddsub inst1 (add_sub_res, a, b, ~alu_ctrl[0], pos_of, neg_of);
    alulogic inst2 (a, b, alu_ctrl[0], and_or_res);
    alushift inst3 (shift_res, a, b[4:0], alu_ctrl[0]);
    alucomp inst4 (slt_res, a, b);

    always @(*)
    begin
        case(alu_ctrl)
            3'b000  : #1 res = add_sub_res;
            3'b001 : #1 res = add_sub_res;
            3'b010 : #1 res = and_or_res;
            3'b011 : #1 res = and_or_res;
            3'b100 : #1 res = shift_res;
            3'b101 : #1 res = shift_res;
            3'b110 : #1 res = slt_res;
            3'b111 : #1 res = 32'b0;
        endcase
    end

    assign zero = (res == 32'b0);

endmodule