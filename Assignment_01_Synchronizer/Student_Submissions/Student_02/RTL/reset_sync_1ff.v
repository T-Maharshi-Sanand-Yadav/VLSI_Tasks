module reset_sync_1ff (
    input  wire CLK,
    input  wire D,
    input  wire RST_N,
    output reg  Q,
    output wire QB
);

always @(posedge CLK or negedge RST_N)
begin
    if(!RST_N)
        Q <= 1'b0;
    else
        Q <= D;
end

assign QB = ~Q;

endmodule
