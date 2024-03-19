// SOlution
module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    // We are using the sop (Sum of product)
    // Consider the high value from the truth table.
    
    // we are designing the 4 and gate in a pattern for each input having the out as 1
    // if one and gate become 1 other will become 0.
    // sum up all the out from and gate everytime 1 is coming out.
    
    // define the wire for getting the output from the nand gates
    wire and1_out, and2_out, and3_out, and4_out;
    
    and(and1_out, ~x3, x2, x1);
    and(and2_out, ~x3, x2, ~x1);
    and(and3_out, x3, ~x2, x1);
    and(and4_out, x3, x2, x1);
    
    or(f, and1_out, and2_out, and3_out, and4_out);

    
endmodule

// ------ Using K-Map Reduction --------

module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    
    // Solved using the K-Map
    // While solving the K-Map we are considering the sop ie; we consirdering the O/P as 1 term from the TT;
    // After the K-Map reduction we get ~X3X2 + X3X1;
    
    // Declaring the wire for getting the output from the AND gate;
    wire and1_out, and2_out;
    
    // AND operation
    and(and1_out, ~x3, x2);
    and(and2_out, x3, x1);
    
    // Summing the output from the and - SOP operation
    or(f, and1_out, and2_out);

endmodule
