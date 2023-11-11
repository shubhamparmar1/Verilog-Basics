module basicgate_b(
    input a, b,
    output reg and, or, nand, nor, xor, xnor
    );
    always @(a, b)
    begin
        and = a & b;
        or = a | b;
        nand = ~(a & b);
        nor = ~(a | b);
        xor = a ^ b;
        xnor = ~(a ^ b);
    end
endmodule
