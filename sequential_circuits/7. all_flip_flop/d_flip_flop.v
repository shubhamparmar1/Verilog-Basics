module d_flip_flop (
    input CLK,
    input D,
    input en,
    output Q,
    output Q_bar
);

reg Q, Q_bar;

always @(posedge CLK) begin
    if (en) begin
        Q <= D;
        Q_bar <= ~D;
    end
end

endmodule
