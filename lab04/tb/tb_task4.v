module tb_task4();

    wire [31:0] outp;
    reg [31:0] a, b;

    dut DUT (outp, a, b);

    string vcd_file;
    initial begin
        if ($value$plusargs("vcd=%s", vcd_file))
            $dumpfile(vcd_file);
        else
            $dumpfile("task3.vcd");

        $dumpvars(0, tb_task4); 
    end

    initial begin
        $monitor($time, "a = %b, b = %b, outp =  %b", a, b, outp);
    end

    initial
        begin
            a = 32'b0;
            b = 32'b1;

            #5;
            b = 32'b0;

            #10;
            $finish;
        end

endmodule