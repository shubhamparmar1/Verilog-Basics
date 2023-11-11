module jk_flip_flop (
  input CLK,     // Clock input
  input J,       // J input
  input K,       // K input
  output Q,      // Q output
  output Q_bar   // Q' (Q bar) output
);

  reg Q, Q_bar; // Flip-flop outputs
  
  always @(posedge CLK) begin
    if (J & ~K)
      Q <= 1'b1;
    else if (~J & K)
      Q <= 1'b0;
  end

  always @(posedge CLK) begin
    if (J & ~K)
      Q_bar <= 1'b0;
    else if (~J & K)
      Q_bar <= 1'b1;
  end

endmodule

