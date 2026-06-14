module reset_sync_1ff_tb;

reg CLK;
reg D;
reg RST_N;
wire Q;
wire QB;

reset_sync_1ff DUT(
    .CLK(CLK),
    .D(D),
    .RST_N(RST_N),
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
    $dumpfile("reset_sync_1ff.vcd");
  $dumpvars(0,reset_sync_1ff_tb);

    RST_N = 0;
    D = 0;

    #12 RST_N = 1;

    #10 D = 1;
    #20 D = 0;

    #15 RST_N = 0;
    #10 RST_N = 1;

    #30 $finish;
end

endmodule
