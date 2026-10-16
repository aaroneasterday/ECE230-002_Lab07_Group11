module ones_compliment(
	input [7:0]AB,
	output [3:0]Y
);

wire [3:0] c1;
wire [2:0] c2;
wire [3:0] s1;

full_adder fa0(
	.A(AB[0]),
	.B(AB[4]),
	.Cin(1'b0),
	.Cout(c1[0]),
	.Y(s1[0])
);

full_adder fa1(
	.A(AB[1]),
	.B(AB[5]),
	.Cin(c1[0]),
	.Cout(c1[1]),
	.Y(s1[1])
);

full_adder fa2(
	.A(AB[2]),
	.B(AB[6]),
	.Cin(c1[1]),
	.Cout(c1[2]),
	.Y(s1[2])
);

full_adder fa3(
	.A(AB[3]),
	.B(AB[7]),
	.Cin(c1[2]),
	.Cout(c1[3]),
	.Y(s1[3])
);


full_adder fb0(
	.A(s1[0]),
	.B(1'b0),
	.Cin(c1[3]),
	.Cout(c2[0]),
	.Y(Y[0])
);

full_adder fb1(
	.A(s1[1]),
	.B(1'b0),
	.Cin(c2[0]),
	.Cout(c2[1]),
	.Y(Y[1])
);

full_adder fb2(
	.A(s1[2]),
	.B(1'b0),
	.Cin(c2[1]),
	.Cout(c2[2]),
	.Y(Y[2])
);

full_adder fb3(
	.A(s1[3]),
	.B(1'b0),
	.Cin(c2[2]),
	.Y(Y[3])
);

endmodule
