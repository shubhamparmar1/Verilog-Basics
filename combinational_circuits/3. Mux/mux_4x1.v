module mux2x1(
    input I0, I1, s,
    output out
    );
    wire w1, w2, w3;
    not(w1, s);
    and(w2,I0,s);
    and(w3,I1,w1);
    or(out,w2, w3);
endmodule

module mux_4x1(
    input I0, I1,I2,I3, s0,s1,
    output out
    );
    wire w1,w2;
    mux2x1 m1(I0, I1,s0,w1);
    mux2x1 m2(I2, I3,s0,w2);
    mux2x1 m3(w1, w2,s1,out);
endmodule
