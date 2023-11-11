module decoder2x4(
    input[1:0] a,
    input e, 
    output reg [3:0] o
    );
    always@(*)
        if (e)
            begin
            case(a)
                2'b00:begin
                o[0]=1'b1;
                o[3:1]=0;
            end
        2'b01:begin
            o[1]=1'b1;
            o[3:2]=0;
            o[0]=0;
            end
        2'b10:begin
            o[2]=1'b1;
            o[3]=0;
            o[1:0]=0;
            end
        2'b11:begin
            o[3]=1'b1;
            o[2:0]=0;
            end
        default:o=0;
        endcase
        end
        else
            o=0;
endmodule

module decoder4x16(
    input[3:0] a,
    output [15:0] o
    );
    wire [3:0] t;
    decoder2x4 d1(.a(a[3:2]),.e(1'b1),.o(t));
    decoder2x4 d2(.a(a[1:0]),.e(t[0]),.o(o[3:0]));
    decoder2x4 d3(.a(a[1:0]),.e(t[1]),.o(o[7:4]));
    decoder2x4 d4(.a(a[1:0]),.e(t[2]),.o(o[11:8]));
    decoder2x4 d5(.a(a[1:0]),.e(t[3]),.o(o[15:12]));
endmodule
