module tb_task2();

    reg [31:0] a, b;
    reg ctrl;
    wire [31:0] outp;

    dut DUT (a, b, outp, ctrl);

    initial
        begin
            $monitor($time, "a = %b, b = %b, ctrl = %b, outp = %b", a, b ,ctrl, outp);
        end

    string vcd_file;
    initial begin
        if ($value$plusargs("vcd=%s", vcd_file))
            $dumpfile(vcd_file);
        else
            $dumpfile("task2.vcd");

        $dumpvars(0, tb); 
    end

    initial
        begin
            a = 32'h00000000; b = 32'hFFFFFFFF; ctrl = 0;
            #5;

            a = 32'hFFFFFFFF; b = 32'h00000000; ctrl = 1;
            #5;

            a = 32'hAAAA_AAAA; b = 32'h5555_5555; ctrl = 0;
            #5;

            a = 32'h1234_5678; b = 32'h8765_4321; ctrl = 1;
            #5;

            a = 32'hFFFF_FFFF;
            #10;

            $finish;
        end

endmodule