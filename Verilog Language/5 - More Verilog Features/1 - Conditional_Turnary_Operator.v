// Statement
// Given four unsigned numbers, find the minimum. Unsigned numbers can be compared with standard comparison operators (a < b).
// Use the conditional operator to make two-way min circuits, then compose a few of them to create a 4-way min circuit.
// You'll probably want some wire vectors for the intermediate results.

// Solution
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    // here we want to find the min value in the input
    // we compare the a and b and store result in a wire and same for c and d
    // then compare the wires value and store that value to min
    // we must make the dimension of wire and input value same
    
    // declaring the wire with 7:0 dimension
    wire [7:0] t1, t2;
    
    // Finding the minimum value
    assign t1 = a < b ? a : b;
    assign t2 = c < d ? c : d;
    assign min = t1 < t2 ? t1 : t2;

endmodule
