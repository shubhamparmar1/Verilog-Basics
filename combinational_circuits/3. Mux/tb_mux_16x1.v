//Test-bench
module tb_mux_16x1;

  // Inputs and outputs of the mux_16x1 module
  reg [15:0] data;
  reg [3:0] sel;
  wire y;

  // Instantiate the mux_16x1 module
  mux_16x1 u_mux (
    .data(data),
    .sel(sel),
    .y(y)
  );

  // Stimulus generation without a clock
  initial begin
    // Initialize inputs
    data = 16'b0000000000000000;
    sel = 4'b0000;

    // Test Case 1: Select input 0
    data = 16'b0000000000000001;
    sel = 4'b0000;
    #10; // Delay for simulation purposes

    // Test Case 2: Select input 1
    data = 16'b0000000000000010;
    sel = 4'b0001;
    #10; // Delay for simulation purposes

    // Test Case 3: Select input 2
    data = 16'b0000000000000100;
    sel = 4'b0010;
    #10; // Delay for simulation purposes

    // Test Case 4: Select input 3
    data = 16'b0000000000001000;
    sel = 4'b0011;
    #10; // Delay for simulation purposes

    // Test Case 5: Select input 4
    data = 16'b0000000000010000;
    sel = 4'b0100;
    #10; // Delay for simulation purposes

    // Test Case 6: Select input 5
    data = 16'b0000000000100000;
    sel = 4'b0101;
    #10; // Delay for simulation purposes

    // Test Case 7: Select input 6
    data = 16'b0000000001000000;
    sel = 4'b0110;
    #10; // Delay for simulation purposes

    // Test Case 8: Select input 7
    data = 16'b0000000010000000;
    sel = 4'b0111;
    #10; // Delay for simulation purposes

    // Test Case 9: Select input 8
    data = 16'b0000000100000000;
    sel = 4'b1000;
    #10; // Delay for simulation purposes

    // Test Case 10: Select input 9
    data = 16'b0000001000000000;
    sel = 4'b1001;
    #10; // Delay for simulation purposes

    // Test Case 11: Select input 10
    data = 16'b0000010000000000;
    sel = 4'b1010;
    #10; // Delay for simulation purposes

    // Test Case 12: Select input 11
    data = 16'b0000100000000000;
    sel = 4'b1011;
    #10; // Delay for simulation purposes

    // Test Case 13: Select input 12
    data = 16'b0001000000000000;
    sel = 4'b1100;
    #10; // Delay for simulation purposes

    // Test Case 14: Select input 13
    data = 16'b0010000000000000;
    sel = 4'b1101;
    #10; // Delay for simulation purposes

    // Test Case 15: Select input 14
    data = 16'b0100000000000000;
    sel = 4'b1110;
    #10; // Delay for simulation purposes

    // Test Case 16: Select input 15
    data = 16'b1000000000000000;
    sel = 4'b1111;
    #10; // Delay for simulation purposes

    // End simulation
    $finish;
  end

  // Display output
  always @(y) begin
    $display("Output y = %b", y);
  end

endmodule
