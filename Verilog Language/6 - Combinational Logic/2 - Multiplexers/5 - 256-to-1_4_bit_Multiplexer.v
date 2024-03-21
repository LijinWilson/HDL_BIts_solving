// Statement
// Create a 4-bit wide, 256-to-1 multiplexer. The 256 4-bit inputs are all packed into a single 1024-bit input vector.
// sel=0 should select bits in[3:0], sel=1 selects bits in[7:4], sel=2 selects bits in[11:8], etc.

// Solution
module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    
    // The bwloe shown logic is correct the error in the compiler cause that logic not to work
    // assign out = in[sel*4 + 3 : sel*4]
    
    assign out = {in[sel * 4 + 3], in[sel * 4 + 2], in[sel * 4 + 1], in[sel * 4]};

endmodule
