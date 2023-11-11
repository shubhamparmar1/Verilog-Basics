module testbench_decoder4x16;

  // Inputs
  reg [3:0] a;
  
  // Outputs
  wire [15:0] o;
  
  // Instantiate the decoder
  decoder4x16 uut (
    .a(a),
    .o(o)
  );

  // Clock signal
  reg clk = 0;
  always begin
    #5 clk = ~clk;
  end

  // Test vector
  initial begin
    $display("Testing 4x16 Decoder");
    $monitor("a = %b, o = %b", a, o);
    
    // Test all possible input combinations
    for (a = 0; a < 16; a = a + 1) begin
      #10;  // Wait for some time to observe the output
    end

    // Terminate the simulation
    $finish;
  end

endmodule

// Simulate the testbench
module tb_decoder4x16;
  reg clk;
  initial begin
    clk = 0;
    $dumpfile("decoder4x16.vcd");
    $dumpvars(0, tb_decoder4x16);
    $display("Starting simulation");
    // Simulate for 100 time units
    repeat (100) begin
      #5 clk = ~clk;
    end
    $finish;
  end
endmodule
