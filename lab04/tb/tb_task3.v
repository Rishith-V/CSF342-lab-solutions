`timescale 1ns/1ps

module tb_task3();

    reg [4:0] b;
    reg ctrl;
    reg [31:0] inp;
    wire [31:0] outp;

    dut DUT (outp, inp, b, ctrl);

    string vcd_file;
    initial begin
        if ($value$plusargs("vcd=%s", vcd_file))
            $dumpfile(vcd_file);
        else
            $dumpfile("task3.vcd");

        $dumpvars(0, tb_task3); 
    end

    initial
        begin
            $monitor($time, "inp  = %b, b = %b, ctrl = %b, outp = %b", inp, b, ctrl, outp);
        end

    initial
        begin
            inp = 32'hA5A5A5A5; 
            b = 0;
            ctrl = 0;

            #5;
            b = 1;
            
            #5;
            ctrl = 1;

            #5;
            b = -1; 

            #5;
            ctrl = 0;

            #10;
            $finish;
        end

endmodule