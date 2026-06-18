`timescale 1ns/1ps

module tb_reset_sync_2ff;

reg clk;
reg rst_n_async;
wire rst_n_sync;

// DUT
reset_sync_2ff uut (
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

    rst_n_async = 0;   // Assert reset

    #12 rst_n_async = 1;   // Deassert reset

    #40 rst_n_async = 0;   // Assert again

    #13 rst_n_async = 1;   // Deassert again

    #60 $finish;
end

// Monitor
initial begin
    $display("Time\tclk\trst_n_async\trst_n_sync");
    $monitor("%0t\t%b\t%b\t\t%b",
              $time, clk, rst_n_async, rst_n_sync);
end

// Waveform dump
initial begin
    $dumpfile("reset_sync_2ff.vcd");
    $dumpvars(0, tb_reset_sync_2ff);
end

endmodule
