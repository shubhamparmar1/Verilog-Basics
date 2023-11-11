module testbench;

reg CLK;
reg D;
reg en;
wire Q;
wire Q_bar;

d_flip_flop uut (
    .CLK(CLK),
    .D(D),
    .en(en),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin
    CLK = 0;
    D = 0;
    en = 0;
    #5 en = 1;
    #5 D = 1;
    #5 D = 0;
    #5 D = 1;
    #5 en = 0;
    #5 $finish;
end

always begin
    #2 CLK = ~CLK;
end

endmodule
