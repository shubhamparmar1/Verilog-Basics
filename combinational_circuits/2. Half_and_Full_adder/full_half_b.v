module halfadder_b(
    input a, b,
    output reg c, s
    );
    always @(a, b)
    begin
    c = a & b;
    s = a ^ b;
    end
endmodule

module full_half_b(
    input a, b, c,
    output sum, carry
    );
    wire w1, w2, w3;
    halfadder h1(.a(a), .b(b), .c(w2), .s(w1));
    halfadder h2(.a(w1), .b(c), .c(w3), .s(sum));
    or(carry, w2, w3);    
endmodule
