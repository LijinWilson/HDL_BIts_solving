// Statement
// You are given a module my_dff8 with two inputs and one output (that implements a set of 8 D flip-flops).
// Instantiate three of them then chain them together to make a 8-bit wide shift register of length 3

//Circuit diagram: https://hdlbits.01xz.net/wiki/File:Module_shift8.png

// Solution
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    // Intiating the wire for flip flops out
    // We have to define size cuz out from d ff is of 8 bits, without size def it will considered as 1 bit
    // cause error
    wire [7:0] d1_out, d2_out, d3_out;
    
    // instantiating d flip flop
    // provided module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    my_dff8 d1(.clk(clk),.d(d),.q(d1_out));
    my_dff8 d2(.clk(clk),.d(d1_out),.q(d2_out));
    my_dff8 d3(.clk(clk),.d(d2_out),.q(d3_out));
    
    // defining a loop looping based on any change in values
    always @(*) begin
        // Multiplexer Code'
		// Multiplexer Output will select an input line based on selector line if 00 it select I1, o1 => I2
		// to show the output
        case (sel)
            2'b00: q=d;
            2'b01: q=d1_out;
            2'b10: q=d2_out;
            2'b11: q=d3_out;
        endcase
    end
    

endmodule
