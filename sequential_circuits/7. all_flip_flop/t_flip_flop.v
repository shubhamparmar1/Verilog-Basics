module TFF(
    input CLK,
    input T,
    input reset,
    output Q,
    output Q_bar
);
    
    reg Q, Q_next;
    
    always @(posedge CLK or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end else begin
            Q <= T ? ~Q : Q;
        end
    end
    
    assign Q_bar = ~Q;
    
endmodule
