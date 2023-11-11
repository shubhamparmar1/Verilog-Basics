module testbench;
reg CLK;
wire [7:0] Q;

ring_counter_8bit uut (
    .CLK(CLK),
    .Q(Q)
);

initial begin
    CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 CLK = 1;
    #5 CLK = 0;
    #5 $finish;
end

always begin
    #5 CLK = ~CLK;
end

endmodule
