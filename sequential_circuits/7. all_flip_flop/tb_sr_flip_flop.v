module testbench;

reg CLK;
reg S;
reg R;
wire Q;
wire Q_bar;

sr_flip_flop uut (
    .CLK(CLK),
    .S(S),
    .R(R),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin
    CLK = 0;
    S = 0;
    R = 0;
    #5 R = 1;
    #5 S = 1;
    #5 R = 0;
    #5 S = 0;
    #5 R = 1;
    #5 S = 1;
    #5 R = 0;
    #5 S = 0;
    #5 $finish;
end

always begin
    #2 CLK = ~CLK;
end

endmodule
