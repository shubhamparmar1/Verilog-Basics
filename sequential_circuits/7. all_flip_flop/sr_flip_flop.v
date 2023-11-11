module sr_flip_flop (
    input CLK,
    input S,
    input R,
    output Q,
    output Q_bar
);

reg Q, Q_bar;

always @(posedge CLK) begin
    if (R && S) begin
        // Invalid condition, both set and reset are active
        Q <= 1'b0;
        Q_bar <= 1'b1;
    end else if (R) begin
        // Reset is active
        Q <= 1'b0;
        Q_bar <= 1'b1;
    end else if (S) begin
        // Set is active
        Q <= 1'b1;
        Q_bar <= 1'b0;
    end else begin
        // No action
        Q <= Q;
        Q_bar <= Q_bar;
    end
end

endmodule
