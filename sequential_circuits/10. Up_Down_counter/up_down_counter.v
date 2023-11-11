module up_down_counter (
  input wire clock,          // Clock signal
  input wire reset,          // Reset signal
  input wire up_down,        // Up/Down control input (1 for up, 0 for down)
  output wire [3:0] count    // 4-bit counter output
);

  reg [3:0] count; // 4-bit counter

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      count <= 4'b0000; // Reset the counter
    end else if (up_down) begin
      // Increment the counter when up_down is high (up)
      count <= count + 1;
    end else begin
      // Decrement the counter when up_down is low (down)
      count <= count - 1;
    end
  end

endmodule
