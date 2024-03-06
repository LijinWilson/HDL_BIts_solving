// Problem statement
// Create a module with 3 inputs and 4 outputs that behaves like wires that makes these connections:
// a -> w
// b -> x
// b -> y
// c -> z
// reference image for the connection.
// https://hdlbits.01xz.net/mw/images/1/15/Wire4.png

// Solution
module top_module( 
    input a,b,c,
    output w,x,y,z );
    assign w = a;
    assign x = b;
	assign y = b;	
    assign z = c;
	
	// or
	// using the the concatenation operator
	// assign {w,x,y,z} = {a,b,b,c};
endmodule