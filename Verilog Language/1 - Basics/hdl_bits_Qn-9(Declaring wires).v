// statement

// Implement the following circuit. Create two intermediate wires (named anything you want) to connect the AND and OR gates together. 
// Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to declare a third wire here.
// Notice how wires are driven by exactly one source (output of a gate), but can feed multiple inputs.

//If you're following the circuit structure in the diagram, you should end up with four assign statements,
// as there are four signals that need a value assigned.

// Circuit image: https://hdlbits.01xz.net/mw/images/3/3a/Wiredecl2.png

// Solution: 
`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
	// we are creating an extra wires 
	// and1 , and2, or1;
	// and1 is for a and b;
	// and2 is for c and d;
	// or1 is used to get the combined output as per the diagram
	
    wire and1, and2, or1;
    
	// assigning values;
    assign and1 = a & b;
    assign and2 = c & d;
    assign or1 = and1 | and2;
    
    assign out = or1;
    assign out_n = ~or1;
    
    

endmodule


