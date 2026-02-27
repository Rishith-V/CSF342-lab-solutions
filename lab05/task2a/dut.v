`timescale 1ns/1ps

module dut(dec_out, rd, reg_write_en);

    input [4:0] rd;
    input reg_write_en;
    output [31:0] dec_out;

    decoder5to32 DUT (dec_out, rd, reg_write_en);


endmodule