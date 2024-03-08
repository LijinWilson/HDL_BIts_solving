// Statement
// Create an Adder( 64bit ) using 2 full Adder. first adder add the first 32 bit and vice versa.
// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
// Circuit diagram: https://hdlbits.01xz.net/mw/images/a/a3/Module_add.png 


// Solution
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire add1_carry;
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    add16 add1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cout(add1_carry));
    add16 add2(.a(a[31:16]),.b(b[31:16]),.sum(sum[31:16]),.cin(add1_carry));
endmodule

