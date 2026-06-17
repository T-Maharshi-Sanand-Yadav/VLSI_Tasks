module sync_3ff (
    input  wire clk,
    input  wire rst_n,
    input  wire async_in,
    output reg  sync_out
);

reg ff1, ff2;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        ff1      <= 1'b0;
        ff2      <= 1'b0;
        sync_out <= 1'b0;
    end
    else begin
        ff1      <= async_in;
        ff2      <= ff1;
        sync_out <= ff2;
    end
end

endmodule
