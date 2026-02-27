module dut(d, q, clk, we, reset);

    input [31:0] d;
    input clk, we, reset;
    output [31:0] q;

    reg32 DUT (d, q, clk, we, reset);

endmodule