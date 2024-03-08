// Statement
// In this exercise, you will create a circuit with two levels of hierarchy.
// Your top_module will instantiate two copies of add16 (provided), each of which will instantiate 16 copies of add1 
// (which you must write). Thus, you must write two modules: top_module and add1.


// Solution
// here we want to define adder 1 module, adder 16 module is already defined, now instantiate the 2 16bit adder to make 32 bit adder
// here we are implementing the 2 hierarchy method.
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire add1_cout;
	
    add16 add1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cout(add1_cout));
    add16 add2(.a(a[31:16]),.b(b[31:16]),.sum(sum[31:16]),.cin(add1_cout));

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder 1bit sum expression
// A EX-OR B EX-OR C-in
    assign sum = a^b^cin;
// Full adder 1bit carry expression
// AB + C-in(A EX-OR B)
    assign cout = a&b|cin&(a^b);

endmodule
