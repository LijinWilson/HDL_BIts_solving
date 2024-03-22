// Statement
// Implement the circuit described by the Karnaugh map below.
// https://hdlbits.01xz.net/mw/images/1/1f/Kmap3.png

// Solution
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    // assign out = a&~d | a&c | ~b&c;
    assign out = ~c&~d&a | ~b&c | c&a;
endmodule
