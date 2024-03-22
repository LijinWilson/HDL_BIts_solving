// Statement
// Implement the circuit described by the Karnaugh map below.
// https://hdlbits.01xz.net/mw/images/4/4d/Kmap2.png

// Solution
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
assign out = ~b&~c | ~a&~d | a&c&d | ~a&b&c;
endmodule
