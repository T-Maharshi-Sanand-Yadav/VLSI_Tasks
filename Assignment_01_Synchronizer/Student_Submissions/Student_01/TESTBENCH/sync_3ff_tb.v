`timescale 1ns/1ps

module tb_sync_3ff;

reg clk;
reg rst_n;
reg async_in;
wire sync_out;

// Instantiate DUT
sync_3ff uut (
    .clk(clk),
    .rst_n(rst_n),
    .async_in(async_in),
    .sync_out(sync_out)
);

// Clock Generation (10 ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin

    rst_n = 0;
    async_in = 0;

    // Release reset
    #12 rst_n = 1;

    // Generate asynchronous transitions
    #7  async_in = 1;
    #13 async_in = 0;
    #8  async_in = 1;
    #17 async_in = 0;
    #9  async_in = 1;
    #11 async_in = 0;

    #50 $finish;

end

// Monitor signals
initial begin
    $display("Time\tclk\trst_n\tasync_in\tsync_out");
    $monitor("%0t\t%b\t%b\t%b\t\t%b",
             $time, clk, rst_n, async_in, sync_out);
end

// Waveform dump
initial begin
    $dumpfile("sync_3ff.vcd");
    $dumpvars(0, tb_sync_3ff);
end

endmodule
