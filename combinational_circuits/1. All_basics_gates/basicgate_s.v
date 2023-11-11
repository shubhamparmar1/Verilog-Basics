module basicgate_s(
    input a, b,
    output c
    );
    and(and, a, b);
    or(or, a, b);
    nand(nand, a, b);
    nor(nor, a, b);
    xor(xor, a, b);
    xnor(xnor, a, b);
endmodule
