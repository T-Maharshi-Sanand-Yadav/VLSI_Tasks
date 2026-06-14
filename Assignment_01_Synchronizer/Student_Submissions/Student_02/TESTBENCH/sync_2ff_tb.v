module sync_2ff_tb;

reg CLK;
reg D;
wire Q;
wire QB;

sync_2ff DUT (
    .CLK(CLK),
    .D(D),
    .Q(Q),
    .QB(QB)
);

initial
begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial
begin
    $dumpfile("sync_2ff.vcd");
  $dumpvars(0,sync_2ff_tb);

    D = 0;

    #7  D = 1;
    #11 D = 0;
    #13 D = 1;
    #17 D = 0;

    #50 $finish;
end

endmodule
