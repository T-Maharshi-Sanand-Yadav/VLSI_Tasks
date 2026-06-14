module reset_sync_3ff_tb;

reg CLK;
reg D;
reg RST_N;
wire Q;
wire QB;

reset_sync_3ff DUT(
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
    $dumpfile("reset_sync_3ff.vcd");
  $dumpvars(0,reset_sync_3ff_tb);

    RST_N = 0;
    D = 0;

    #12 RST_N = 1;

    #10 D = 1;
    #15 D = 0;
    #15 D = 1;

    #10 RST_N = 0;
    #10 RST_N = 1;

    #80 $finish;
end

endmodule
