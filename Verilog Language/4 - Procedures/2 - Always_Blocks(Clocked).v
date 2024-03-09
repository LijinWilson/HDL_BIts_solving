// Statement
// Build an XOR gate three ways, using an assign statement, a combinational always block, and a clocked always block.
// Note that the clocked always block produces a different circuit from the other two: There is a flip-flop so the output is delayed.

// Circuit diagram : https://hdlbits.01xz.net/wiki/File:Alwaysff.png

// Solution
// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    // by Continous assignment
    assign out_assign = a ^ b;
    
    // By Combinational always block;
    // Here we want to use a blocking assignment (a = b).
    always @(*) 
        begin
            out_always_comb = a ^ b;
        end
    
    // By Clocked always block
    // Here we want to use the non blocking assignment ( a <= b ).
    always @(posedge clk)
        begin
            out_always_ff <= a ^ b;
        end

endmodule
