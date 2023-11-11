module testbench;

  reg CLK, J, K;
  wire Q, Q_bar;

  // Instantiate the JK flip-flop
  jk_flip_flop jk_ff (
    .CLK(CLK),
    .J(J),
    .K(K),
    .Q(Q),
    .Q_bar(Q_bar)
  );

  // Clock generation
  always begin
    #5 CLK = ~CLK;
  end

  // Stimulus generation
  initial begin
    CLK = 0;
    J = 0;
    K = 0;
    
    // Test case 1: Set Q
    J = 1;
    K = 0;
    #10;
    J = 0;
    #10;
    
    // Test case 2: Reset Q
    J = 0;
    K = 1;
    #10;
    K = 0;
    #10;
    
    // Test case 3: Toggle Q
    J = 1;
    K = 1;
    #10;
    J = 0;
    #10;
    K = 0;
    #10;
    
    $finish;
  end

  // Display results
  always @(posedge CLK) begin
    $display("Time=%0t J=%b K=%b Q=%b Q_bar=%b", $time, J, K, Q, Q_bar);
  end

endmodule
