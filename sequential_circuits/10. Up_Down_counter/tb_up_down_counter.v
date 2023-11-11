module testbench_up_down_counter;

  reg clock;
  reg reset;
  reg up_down;
  wire [3:0] count;

  up_down_counter uut (
    .clock(clock),
    .reset(reset),
    .up_down(up_down),
    .count(count)
  );

  initial begin
    clock = 0;
    reset = 1;
    up_down = 0;
    #10 reset = 0;
    #160 up_down = 1; // Count up
    #160 up_down = 0; // Count down
    #80 up_down = 1; // Count up
    #80 up_down = 0; // Count down
    $finish;
  end

  always begin
    #5 clock = ~clock;
  end

endmodule
