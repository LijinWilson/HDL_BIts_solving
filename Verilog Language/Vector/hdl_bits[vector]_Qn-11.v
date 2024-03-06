// Statement
// Build a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit outputs.
// Connect output o0 to the input vector's position 0, o1 to position 1, etc.

// In a diagram, a tick mark with a number next to it indicates the width of the vector (or "bus"), 
// rather than drawing a separate line for each bit in the vector.



// Vector circuit image: https://hdlbits.01xz.net/mw/images/a/ae/Vector0.png
// Solution
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
    
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
    assign outv = vec;

endmodule
