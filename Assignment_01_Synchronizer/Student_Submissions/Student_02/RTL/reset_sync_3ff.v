module reset_sync_3ff (
    input  wire CLK,
    input  wire D,
    input  wire RST_N,
    output reg  Q,
    output wire QB
);

reg ff1;
reg ff2;

always @(posedge CLK or negedge RST_N)
begin
    if(!RST_N)
    begin
        ff1 <= 1'b0;
        ff2 <= 1'b0;
        Q   <= 1'b0;
    end
    else
    begin
        ff1 <= D;
        ff2 <= ff1;
        Q   <= ff2;
    end
end

assign QB = ~Q;

endmodule
