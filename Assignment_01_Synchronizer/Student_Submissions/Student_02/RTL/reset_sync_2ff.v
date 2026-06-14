module reset_sync_2ff (
    input  wire CLK,
    input  wire D,
    input  wire RST_N,
    output reg  Q,
    output wire QB
);

reg ff1;

always @(posedge CLK or negedge RST_N)
begin
    if(!RST_N)
    begin
        ff1 <= 1'b0;
        Q   <= 1'b0;
    end
    else
    begin
        ff1 <= D;
        Q   <= ff1;
    end
end

assign QB = ~Q;

endmodule
