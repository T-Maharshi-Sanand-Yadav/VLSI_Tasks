module reset_sync_1ff (
    input  wire clk,
    input  wire rst_n_async,   // Active-low asynchronous reset
    output reg  rst_n_sync     // Synchronized reset
);

always @(posedge clk or negedge rst_n_async) begin
    if (!rst_n_async)
        rst_n_sync <= 1'b0;    // Asynchronous assertion
    else
        rst_n_sync <= 1'b1;    // Synchronous deassertion
end

endmodule
