module dut(outp, inp, b, ctrl);

    input [31:0] inp;
    output [31:0] outp;
    input [4:0] b;
    input ctrl;

    alushift DUT (outp, inp, b, ctrl);

endmodule