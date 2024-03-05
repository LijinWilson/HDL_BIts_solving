// Statement

// Modules
// Connect the port on 2 methods
// Circuit diagram https://hdlbits.01xz.net/wiki/File:Module.png

// Solution
module top_module ( input a, input b, output out );
	// There are two commonly-used methods to connect a wire to a port: by position or by name.

	// By Possition Method
    // Get the child module
	// here position is most importand, this  method is not used at all
    mod_a(a,b,out);
	
	// By Name Method
	// Most commonly used method, here we not needed to care about the position
	mod_a(.out(out),.in1(a),.in2(b));
	
	// here we can create the multiple instance of Method, we can reuse it
	// eg: mod_a inst1(), mod_a ins2()
	
endmodule