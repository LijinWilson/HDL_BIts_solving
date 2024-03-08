// Statement
// More Replication
// Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output vector.
// The output should be 1 if the two bits being compared are equal.

// Circuit diagram https://hdlbits.01xz.net/wiki/File:Vector5.png

//As the diagram shows, this can be done more easily using the replication and concatenation operators.

// The top vector is a concatenation of 5 repeats of each input
// The bottom vector is 5 repeats of a concatenation of the 5 inputs


// Solution

module top_module (
    input a, b, c, d, e,n
    output [24:0] out );//
    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    assign out = ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {{5{a,b,c,d,e}}};

endmodule
