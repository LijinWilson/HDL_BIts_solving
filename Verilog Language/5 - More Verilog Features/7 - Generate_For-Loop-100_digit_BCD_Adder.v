// Statement

// You are provided with a BCD one-digit adder named bcd_fadd that adds two BCD digits and carry-in,
// and produces a sum and carry-out.
// Instantiate 100 copies of bcd_fadd to create a 100-digit BCD ripple-carry adder. Your adder should add two 100-digit BCD numbers
// (packed into 400-bit vectors) and a carry-in to produce a 100-digit sum and carry out.

// Solution

// BCD converts the each decimal number as an 4 bits binary.

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire[99:0] cout_wire;
    genvar i;
    
    generate 
        // initializing the first adder outside the loop 
        bcd_fadd fadd1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_wire[0]), .sum(sum[3:0]));
        for(i = 4;i < 400;i = i+4) begin:BCD_Adder
            bcd_fadd addn(.a(a[i+3:i]),.b(b[i+3:i]),.cin(cout_wire[i/4-1]),.cout(cout_wire[i/4]),.sum(sum[i+3:i]));
        end:BCD_Adder
    
    endgenerate
    
    assign cout = cout_wire[99];

endmodule
