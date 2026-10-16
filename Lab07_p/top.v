module top(
	input [9:0]sw,
	output [13:0]led
);

half_sub assign_sub(
	.A(sw[0]),
	.B(sw[1]),
	.Y(led[0]),
	.borrow(led[1])
);

ones_compliment assign_ones(
	.AB(sw[9:2]),
	.Y(led[5:2])
);

twos_compliment assign_twos(
	.A(sw[9:2]),
	.Y(led[13:6])
);

endmodule