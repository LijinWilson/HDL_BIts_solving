// Statement
// Replication Operator
// Build a circuit that sign-extends an 8-bit number to 32 bits. This requires a concatenation of 24 copies of the sign bit
// (i.e., replicate bit[7] 24 times) followed by the 8-bit number itself.


// Solution
module top_module (
    input [7:0] in,
    output [31:0] out );//
	// replicating the sign bits that is the most significant bits to make it 32 bit. and rest with input
    assign out = {{24{in[7]}},in};

endmodule
