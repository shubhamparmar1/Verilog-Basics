module testbench_TFF;

reg CLK;
reg T;
reg reset;
wire Q;
wire Q_bar;

// Instantiate the T flip-flop
TFF UUT (
    .CLK(CLK),
    .T(T),
    .reset(reset),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin
    // Initialize inputs
    CLK = 0;
    T = 0;
    reset = 0;

    // Apply a reset pulse
    reset = 1;
    #10 reset = 0;

    // Test cases
    #5 T = 1; // Toggling input, Q should change
    #5 T = 0; // T is 0, Q should remain the same
    #5 T = 1; // Toggling input again, Q should change
    
    // Test cases                                        
    #5 T = 1; // Toggling input, Q should change      
    #5 T = 0; 
    #5 T = 1;
    $finish;
end

always begin
    #5 CLK = ~CLK; // Toggle the clock every 5 time units
end

endmodule
