// Staetment

// Create a module with the same functionality as the 7458 chip. 
// IC 7458: https://hdlbits.01xz.net/mw/images/e/e1/7458.png

// Solution: 

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    // intially we have to design 6 wires
    // 4 wires are the output from the and gate
    // 2 wires are the output from  the or gate
    
    // Declaring the wires
    wire i1, i2, i3, i4, i5, i6;
    
    // assigning values to wire and output
    // AND gate
    assign i1 = p2a & p2b;
    assign i2 = p1a & p1c & p1b;
    assign i3 = p2c & p2d;
    assign i4 = p1f & p1e & p1d;
    
    // OR gate 
    assign i5 = i1 | i3;
    assign i6 = i2 | i4;
    
    // Output
    assign p1y = i6;
    assign p2y = i5;

endmodule
