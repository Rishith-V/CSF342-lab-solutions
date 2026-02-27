`timescale 1ns/1ps

module tb;
    reg signed [31:0] A, B;
    reg ctrl;
    wire signed [31:0] sum;
    wire pos_of, neg_of;

    dut uut (
        .a(A),
        .b(B),
        .ctrl(ctrl),
        .sum(sum),
        .pos_of(pos_of),
        .neg_of(neg_of)
    );

    string vcd_file;
    initial begin
        if ($value$plusargs("vcd=%s", vcd_file))
            $dumpfile(vcd_file);
        else
            $dumpfile("task1.vcd");

        $dumpvars(0, tb); 
    end

    initial begin
        $monitor($time, "A=%d, B=%d, ctrl=%b, Sum=%d, +OF=%b, -OF=%b", A, B, ctrl, sum, pos_of, neg_of);

        A = 8; B = 4; ctrl = 0;
        #10; 
        B = 10; ctrl = 1;
        #10;

        A = -2; B = -1; ctrl = 0;
        #10;

        A = 32'h7FFFFFFF; B = 1; ctrl = 0;
        #10;

        A = 32'h80000000; B = 1; ctrl = 1;
        #10;

        $finish;
    end
endmodule


