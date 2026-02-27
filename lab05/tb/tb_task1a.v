module tb_task1a();

    wire [31:0] q;
    reg [31:0] d;
    reg clk, we, reset;

    dut DUT (d, q, clk, we, reset);

    string vcd_file;
    initial begin
        if ($value$plusargs("vcd=%s", vcd_file))
            $dumpfile(vcd_file);
        else
            $dumpfile("task3.vcd");

        $dumpvars(0, tb_task1a); 
    end

    initial
        begin
            clk = 1'b0;
        end

    always
        begin
            #5;
            clk = ~clk;
        end

    initial
        begin
            $monitor($time, ": clk = %b, reset = %b, we = %b, d = %b, q = %b:", clk, reset, we, d, q);
        end

    initial
        begin
            reset = 1'b1;

            #13;
            reset = 1'b0;
            d = 32'hffffffff;
            we = 1'b0;

            #10;
            we = 1'b1;

            #10;
            d = 32'hfafafafa;

            #15;
            $finish;
        end

endmodule