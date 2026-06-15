`timescale 1ns/1ps

module tb_sync_2ff;

reg clk;
reg rst_n;
reg async_in;
wire sync_out;

// DUT Instantiation
sync_2ff dut (
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

    rst_n    = 0;
    async_in = 0;

    // Release reset
    #12 rst_n = 1;

    // Asynchronous input transitions
    #7  async_in = 1;
    #13 async_in = 0;
    #8  async_in = 1;
    #17 async_in = 0;
    #9  async_in = 1;

    #40 $finish;
end

// Monitor
initial begin
    $monitor("Time=%0t clk=%b rst_n=%b async_in=%b ff1=%b sync_out=%b",
              $time, clk, rst_n, async_in,
              dut.ff1, sync_out);
end

// Waveform Dump
initial begin
    $dumpfile("sync_2ff.vcd");
    $dumpvars(0, tb_sync_2ff);
end

endmodule
