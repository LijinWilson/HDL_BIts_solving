// Statement
// Taken from 2015 midterm question 4

// See mt2015_q4a and mt2015_q4b for the submodules used here. The top-level design consists of two instantiations each of subcircuits A and B, as shown below.

// Circuit : https://hdlbits.01xz.net/wiki/File:Mt2015_q4.png

// Solution
module top_module (input x, input y, output z);
	
    // We want to define the wire for getting the gates
    wire A1_out, A2_out, B1_out, B2_out, AND_out, OR_out, XOR_out;
    
    // We want to instantiate the module A and B two times
    // Here we are using the order for connection.
    A A1(x, y, A1_out);
    A A2(x, y, A2_out);
    B B1(x, y, B1_out);
    B B2(x, y, B2_out);
    
    // Setting the out from the and and or gate
    or(OR_out, A1_out, B1_out);
    and(AND_out, A2_out, B2_out);
    
    // Getting the out from XOR gate
    xor(z, OR_out, AND_out);
    
endmodule

module A ( input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module B ( input x, input y, output z );
    assign z = ~(x^y);
endmodule