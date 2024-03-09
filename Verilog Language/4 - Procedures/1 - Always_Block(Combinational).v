// Statement
// Build an AND gate using both an assign statement and a combinational always block.

// Solution
// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    // while using the assign method the type of the variable must be an net(wire) type;
    // if it is of reg type it will throw an error;
    assign out_assign = a & b;
    
    // using the Always type
    // while using the always method the type must be of variable(reg);
    always @(*)
        begin
            out_alwaysblock = a & b;
        end

endmodule
