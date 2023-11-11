module basicgate_d(
    input a, b,
    output c
    );
    assign and = a & b;
    assign or = a | b;
    assign nand = ~(a & b);
    assign nor = ~(a | b);
    assign xor = a ^ b;
    assign xnor = ~(a ^ b);
endmodule
