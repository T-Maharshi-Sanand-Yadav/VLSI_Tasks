`timescale 1ns/1ps

module tb_reset_sync_1ff;

reg clk;
reg rst_n_async;
wire rst_n_sync;

// DUT
reset_sync_1ff uut (
    .clk(clk),
    .rst_n_async(rst_n_async),
    .rst_n_sync(rst_n_sync)
);

// Clock generation (10 ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin

    rst_n_async = 0;   // Reset asserted

    #12;
    rst_n_async = 1;   // Reset deasserted asynchronously

    #23;
    rst_n_async = 0;   // Assert reset again

    #15;
    rst_n_async = 1;   // Deassert again

    #50;
    $finish;
end

// Monitor
initial begin
    $display("Time\tclk\trst_n_async\trst_n_sync");
    $monitor("%0t\t%b\t%b\t\t%b",
              $time, clk, rst_n_async, rst_n_sync);
end

// Waveform dump
initial begin
    $dumpfile("reset_sync_1ff.vcd");
    $dumpvars(0, tb_reset_sync_1ff);
end

endmodule
