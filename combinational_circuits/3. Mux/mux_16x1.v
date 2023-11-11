module m_2x1(
    input I0, I1,
    input sel,
    output out
    );
    assign out = (sel) ? I1 : I0;
endmodule

module m_4x1(
    input [3:0] I0, I1, I2, I3,
    input [1:0] sel,
    output out
    );
    wire w0, w1, w2;
    m_2x1 mux1(I0, I1, sel[0], w0);
    m_2x1 mux2(I2, I3, sel[0], w1);
    m_2x1 mux3(w0, w1, sel[1], w2);
    assign out = w2;
endmodule

module mux_16x1(data, sel, y);
     input [15:0] data;
     input [3:0] sel;
     output y;
     wire [0:3] ma;
     m_4x1 mux1(data[3:0],sel[1:0],ma[0]);
     m_4x1 mux2(data[7:4],sel[1:0],ma[1]);
     m_4x1 mux3(data[11:8],sel[1:0],ma[2]);
     m_4x1 mux4(data[15:12],sel[1:0],ma[3]);
     m_4x1 mux5(ma,sel[3:2],y);
endmodule
