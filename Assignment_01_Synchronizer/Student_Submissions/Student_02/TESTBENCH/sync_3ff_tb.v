module sync_3ff_tb;

reg CLK;
reg D;
wire Q;
wire QB;

sync_3ff DUT (
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
  $dumpfile("sync_3ff.vcd");
  $dumpvars(0,sync_3ff_tb);

    D = 0;

    #8  D = 1;
    #14 D = 0;
    #12 D = 1;
    #18 D = 0;

    #70 $finish;
end

endmodule
