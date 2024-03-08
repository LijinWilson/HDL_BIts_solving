// Statement
// You are provided with a 16-bit adder module, which you need to instantiate twice:

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

// Use a 32-bit wide XOR gate to invert the b input whenever sub is 1. (This can also be viewed as b[31:0] 
// XORed with sub replicated 32 times. See replication operator.). Also connect the sub input to the
// carry-in of the adder.

// Circuit diagram : https://hdlbits.01xz.net/wiki/File:Module_addsub.png


// Solution
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    // wire for getting the out from the xor gate
    wire [31:0] B_XOR;
    // wire for passing COUT values from the add1
    wire add1_COUT;
    //Implementing the xor gate;
    // we want to replicate the sub value to 32 times as per the requirement;
    assign B_XOR = {32{sub}}^b;
    
    // implement the adder;
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    add16 add1(.a(a[15:0]),.b(B_XOR[15:0]),.cin(sub),.sum(sum[15:0]),.cout(add1_COUT));
    add16 add2(.a(a[31:16]),.b(B_XOR[31:16]),.cin(add1_COUT),.sum(sum[31:16]));

endmodule
