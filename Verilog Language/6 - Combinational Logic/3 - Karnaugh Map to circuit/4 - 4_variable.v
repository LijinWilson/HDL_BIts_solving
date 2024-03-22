// Statment
// Implement the circuit described by the Karnaugh map below.
// https://hdlbits.01xz.net/mw/images/9/98/Kmap4.png

// Solution
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    // assign out = a^b^c^d;
    assign out = ((a^b)&~(c^d)) | (~(a^b)&(c^d));
endmodule
