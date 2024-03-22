// Statement
// Implement the circuit described by the Karnaugh map below.
// https://hdlbits.01xz.net/mw/images/2/20/Kmap1.png

// Solution
module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    
    assign out = a | b | c;

endmodule
