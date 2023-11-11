module halfAdder_s(
    input a, b,
    output c, s
    );
    and(c,a,b);
    xor(s,a,b);
endmodule
