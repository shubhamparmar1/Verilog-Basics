module Full_Adder_Subtractor (
    output reg s, // Sum
    output reg c_out, // Carry-out or Borrow-out
    input a,      // Operand A
    input b,      // Operand B
    input cin,    // Carry-in or Borrow-in
    input select  // Select line (1 for subtraction, 0 for addition)
);

always @(a, b, cin, select)
begin
    if (select == 1'b1) // Subtraction
    begin
        s = a ^ b ^ cin; // Difference
        c_out = (~a & b) | (cin & (a | ~b));
    end
    else // Addition
    begin
        s = a ^ b ^ cin; // Sum
        c_out = (a & b) | (cin & (a | b));
    end
end

endmodule
