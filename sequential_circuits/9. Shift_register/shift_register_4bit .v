module shift_register_4bit (
    input CLK,
    input SI,
    output SO,
    output [3:0] Q
);

reg SO;
reg [3:0] Q;

always @(posedge CLK) begin
    Q <= {Q[2:0], SI};
    SO <= Q[0];
end

endmodule
