// Statement
// Parity checking is often used as a simple method of detecting errors when transmitting data through an imperfect channel.
// Create a circuit that will compute a parity bit for a 8-bit byte (which will add a 9th bit to the byte). We will use "even" parity,
// where the parity bit is just the XOR of all 8 data bits.

// Solution
module top_module (
    input [7:0] in,
    output parity); 
	// parity operation
    // if an bit contain even number of 1 it will show 0 by doing xor operation and vice versa for odd 
    // here we are doing the reduction operation
    // it will perform the xor operation through out the bit
    assign parity = ^ in;
endmodule
