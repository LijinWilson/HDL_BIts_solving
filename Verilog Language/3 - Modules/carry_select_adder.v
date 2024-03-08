// Statement
// In this exercise, you are provided with the module add16 , which adds two 16-bit numbers with carry-in and produces a carry-out 
//and 16-bit sum. You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.

// Circuit diagram
// https://hdlbits.01xz.net/wiki/File:Module_cseladd.png


// Solution
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire add1_carry_out;
    wire [15:0]add2_sel_out, add3_sel_out;
// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
// first we implement the top most adder
    add16 add1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cout(add1_carry_out));
    // implementing the 2nd adder near mux
    add16 add2_sel(.a(a[31:16]),.b(b[31:16]),.cin(0),.sum(add2_sel_out));
    // implementing the 2nd adder near mux
    add16 add3_sel(.a(a[31:16]),.b(b[31:16]),.cin(1),.sum(add3_sel_out));
    
    // Implementing the loop for mux.
    // everytime when their is change in the value inside always argument the loop will start excicuting.
    
    always @(add1_carry_out,add2_sel_out,add3_sel_out) 
        begin
            case (add1_carry_out)
                1'b0 : sum[31:16] = add2_sel_out;
                1'b1 : sum[31:16] = add3_sel_out;
            endcase
        end
    
endmodule
