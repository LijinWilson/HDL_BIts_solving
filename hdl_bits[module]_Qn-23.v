// Statement
// Three Module
//You are given a module my_dff with two inputs and one output (that implements a D flip-flop).
// Instantiate three of them, then chain them together to make a shift register of length 3.
// The clk port needs to be connected to all instances.

// The module provided to you is: module my_dff ( input clk, input d, output q );

// Circuit diagram: https://hdlbits.01xz.net/mw/images/6/60/Module_shift.png


// Solution
module top_module ( input clk, input d, output q );
	
    // our flipflop module => module my_dff ( input clk, input d, output q );
    // we have to declare the flipflop three times or three ff instance is needed as based on circuit
    // we have declare 2 wire for ff1 and ff2 for getting output from ff1 using d1_out and ff2 = d2_out.
    wire d1_out,d2_out;
    my_dff d1(.clk(clk),.d(d),.q(d1_out));
    my_dff d2(.clk(clk),.d(d1_out),.q(d2_out));
    my_dff d3(.clk(clk),.d(d2_out),.q(q));
endmodule
