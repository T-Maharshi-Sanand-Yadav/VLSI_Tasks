module sync_2ff (
    input  wire CLK,
    input  wire D,
    output reg  Q,
    output wire QB
);

reg ff1;

always @(posedge CLK)
begin
    ff1 <= D;
    Q   <= ff1;
end

assign QB = ~Q;

endmodule
