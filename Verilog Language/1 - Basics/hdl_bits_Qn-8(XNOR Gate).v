// Question

// Create a module that implements an XNOR gate

// Solution
module top_module( 
    input a, 
    input b, 
    output out );
    assign out = ~( a^b );
endmodule
