// Implement module called full_adder
module full_adder(
    // Declare your inputs
    input A, B, Cin,

    // Declare Y output
    output Y, Cout
);

    assign Y = ~Cin & (A ^ B) | Cin & ~(A ^ B);
    assign Cout = A & Cin | A & B | B & Cin;

    // assign Z = ~carry & (B ^ D) | carry & ~(B ^ D);
    // assign carry2 = B & carry | B & D | D & carry;

endmodule