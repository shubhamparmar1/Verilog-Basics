module ring_counter_8bit (
    input CLK,
    output [7:0] Q
);

reg [7:0] Q = 8'b10000000;

    always @(posedge CLK) begin
        Q <= {Q[6:0], Q[7]};
    end

endmodule
