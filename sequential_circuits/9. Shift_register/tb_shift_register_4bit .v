module testbench;

    reg CLK;
    reg SI;
    wire SO;
    wire [3:0] Q;
    
    shift_register_4bit uut (
        .CLK(CLK),
        .SI(SI),
        .SO(SO),
        .Q(Q)
    );

initial begin
    CLK = 0;
    SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    #5 SI = 0;
    #5 SI = 1;
    
    #5 $finish;
end

always begin
    #2.5 CLK = ~CLK;
end

endmodule
