module alu_ctrl(funct3, funct7, alu_ctrl_out);

    input [2:0] funct3;
    input [6:0] funct7;
    output reg [2:0] alu_ctrl_out;


    always@(*)
        begin
            case(funct3)
                    3'b000 : #1 alu_ctrl_out = funct7[5] ? 3'b000 : 3'b001;
                    3'b111 : #1 alu_ctrl_out = 3'b010;
                    3'b110 : #1 alu_ctrl_out = 3'b011;
                    3'b001 : #1 alu_ctrl_out = 3'b100;
                    3'b010 : #1 alu_ctrl_out = 3'b110;

                    default : #1 alu_ctrl_out = 3'b001;
            endcase
        end

endmodule