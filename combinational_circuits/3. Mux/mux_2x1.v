//1)Structural
module mux_2x1_s(
    input I0, I1, s,
    output out
    );
    wire w1, w2, w3;
    not(w1, s);
    and(w2,I0,s);
    and(w3,I1,w1);
    or(out,w2, w3);
endmodule


//2)Data Flow
module mux_2x1_d(
    input I0, I1, s,
    output out
    );
    wire w1, w2, w3;
    assign w1 = ~(s);
    assign w2 = I0 & s;
    assign w3 = I1 & w1;
    assign out = w2 | w3;
endmodule


//3)Behavioural
module mux_2x1_b(
    input I0, I1, s,
    output out
    );
    always @(I0, I1, s) 
    begin
        if (s == 1'b0)
            out = I0;
        else
            out = I1;
    end
endmodule
