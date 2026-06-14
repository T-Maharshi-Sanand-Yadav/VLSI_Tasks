module sync_3ff (
    input  wire CLK,
    input  wire D,
    output reg  Q,
    output wire QB
);

reg ff1;
reg ff2;

always @(posedge CLK)
begin
    ff1 <= D;
    ff2 <= ff1;
    Q   <= ff2;
end

assign QB = ~Q;

endmodule
