// Solution
//  ------- Using K-Map Reduction ----------
module top_module ( input [1:0] A, input [1:0] B, output z ); 
	
    // Using K-Map Reduction
    // We have 4 inputs so 2^4 Combinations
    // We use 4 variable K-Map 2 input having 2 bits each
    // B1B0\A1A0 00 01 11 10
    //    00 |   0*   1   3   2
    //    01 |   4   5*   7   6
    // 	  11 |  12  13  15*  14
    //    10 |   8   9*  11  10
    
    // * represent areas having the values or equity condtion true; i.e * = 1
    // Output 1 getting K-Map combination
    // 0000, 0101, 1010, 1111                                                                
    
    // Declaring the wire to get output from the and gate
    wire and1_out, and2_out, and3_out, and4_out;
    
    // Declaring the AND Gate
    and(and1_out, ~A[0], ~A[1], ~B[0], ~B[1]);
    and(and2_out, ~A[0], A[1], ~B[0], B[1]);
    and(and3_out, A[0], ~A[1], B[0], ~B[1]);
    and(and4_out, A[0], A[1], B[0], B[1]);
     
    // Summing all the output from the and gate;
    or(z, and1_out + and2_out + and3_out + and4_out);
    
endmodule

// ------- Using Ternary Operator ---------
module top_module ( input [1:0] A, input [1:0] B, output z ); 
	assign z = A == B ? 1 : 0;
endmodule
