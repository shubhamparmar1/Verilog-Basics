module Half_Adder_Subtractor (
    output reg s, // Sum
    output reg b, // Borrow or Difference
    input a,      // Operand A
    input b_in,   // Operand B or Borrow-in
    input select  // Select line (1 for subtraction, 0 for addition)
);

always@(a, b_in, select)
begin
    if (select == 1'b1) // Subtraction
    begin
        s= a ^ b_in; // Difference
        b = ~a & b_in;
    end
    else // Addition
    begin
        s= a ^ b_in; // Sum
        b = a & b_in; // Carry
    end
end

endmodule
