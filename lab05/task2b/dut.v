`timescale 1ns/1ps

module dut(clk, reset, we, rs1, rs2, rd, wd, r1, r2);

    input clk, reset, we;
    input [4:0] rs1, rs2, rd;
    input [31:0] wd;
    output [31:0] r1, r2;

    regfile DUT (clk, reset, we, rs1, rs2, rd, wd, r1, r2);


endmodule