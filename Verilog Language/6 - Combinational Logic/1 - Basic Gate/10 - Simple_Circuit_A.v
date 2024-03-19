// Statement
// Taken from 2015 midterm question 4

// Module A is supposed to implement the function z = (x^y) & x. Implement this module.

// Solution
module top_module (input x, input y, output z);
    assign z = (x^y) & x;
endmodule
