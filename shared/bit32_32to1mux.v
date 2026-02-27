`timescale 1ns/1ps

module bit32_32to1mux(reg_out, reg_num, reg_arr);

    input [4:0] reg_num;
    input [31:0] reg_arr [0:31];

    output [31:0] reg_out;

    genvar i, j;
    generate
        for(j = 0; j < 32; j= j + 1) begin: bit_loop
            wire [31:0] regbit;

            for(i = 0; i < 32; i = i + 1) begin: reg_loop
                assign regbit[i] = reg_arr[i][j];

            end

            mux32to1 m1(regbit, reg_num, reg_out[j]);
        end
    endgenerate
endmodule