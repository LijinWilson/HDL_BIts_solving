// Statement
// Circuit image: https://hdlbits.01xz.net/mw/images/1/1b/Vectorgates.png
// Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors,
// the logical-OR of the two vectors, and the inverse (NOT) of both vectors.
// Place the inverse of b in the upper half of out_not (i.e., bits [5:3]), and the inverse of a in the lower half.


// solution
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    // we want 3 output from the or gate in bitwise operation
    assign out_or_bitwise[0] = a[0] | b[0];
    assign out_or_bitwise[1] = a[1] | b[1];
    assign out_or_bitwise[2] = a[2] | b[2];
    
    // we want one output from the bitwise operation
    assign out_or_logical = a || b;
    
    // we want 6 out put from the not gate out
    assign out_not[0] = ~a[0];
    assign out_not[1] = ~a[1];
    assign out_not[2] = ~a[2];
    assign out_not[3] = ~b[0];
    assign out_not[4] = ~b[1];
    assign out_not[5] = ~b[2];

endmodule
