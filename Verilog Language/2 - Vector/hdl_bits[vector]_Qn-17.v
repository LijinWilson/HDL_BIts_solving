// Statement
// Vector Reversal
// Given an 8-bit input vector [7:0], reverse its bit ordering

// Solution
module top_module( 
    input [7:0] in,
    output [7:0] out
);
// here we can use the normal application
// example: out[0] = in[0] etc....
// here we solve using the string concatenation
    
	// using concatenation
	// while we using the assign out =  {in[7],in[6]...} we are assigning the in[0]=out[0]
	// we want to reverse so; int[0] = out[7]
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
endmodule
