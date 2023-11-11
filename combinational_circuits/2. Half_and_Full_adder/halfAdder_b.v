module halfAdder_b(
    input a, b,
    output reg c, s
    );
    always @(a, b)
    begin
    c = a & b;
    s = a ^ b;
    end
endmodule
