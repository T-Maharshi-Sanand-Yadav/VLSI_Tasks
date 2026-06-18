module reset_sync_2ff (
    input  wire clk,
    input  wire rst_n_async,   // Active-low asynchronous reset
    output wire rst_n_sync
);

reg ff1, ff2;

always @(posedge clk or negedge rst_n_async) begin
    if (!rst_n_async) begin
        ff1 <= 1'b0;
        ff2 <= 1'b0;
    end
    else begin
        ff1 <= 1'b1;
        ff2 <= ff1;
    end
end

assign rst_n_sync = ff2;

endmodule
