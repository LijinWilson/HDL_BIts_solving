// Statment
// Ripple Carry Adder

// Create a 100-bit binary ripple-carry adder by instantiating 100 full adders. The adder adds two 100-bit numbers
// and a carry-in to produce a 100-bit sum and carry out. To encourage you to actually instantiate full adders,
// also output the carry-out from each full adder in the ripple-carry adder. cout[99] is the final carry-out
// from the last full adder, and is the carry-out you usually see.

// Solution : 

// Step 1 : We want to define the full adder module;
// Full adder has 3 Input (in1, in2, carry_in) this are of 1bit, 2 Output (carry_out, sum/result) this are of 1 bit;

module Full_Adder (
	input in1, in2, cin,
    output fa_cout, fa_sum
);
    
// here we are using the concatenation operator for filling value inside the sum and cout
// while concating the sum and cout, the MSB will stored inside the cout and lsb on sum
// for Example if input in1 and in2 of 5 bit the o/p will be of 6 bits the cout = res[6] and sum = res[5:0]     

    assign {fa_cout, fa_sum} = in1 + in2 + cin; // here it is of 1 bit 
    
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
// Step : 2
// We want to instantiate the full adder for 99 times for adding the 100 bit inputs
// if we want to instantiate a full adder mulitple times we cannot use the for loop inside an always Block.
// instead we want use GENERATE block
// as part of that we remove the int declaration and declare i using an genvar, this variable can only
// be used under the generate block

// we want our cin of first adder to be 0 / cin from the top module
// So we define our first full adder before the generate_for_loop-statment inputing a[0], b[0], cin
// for full adder from 1 to 99 we use the loop and cin of that adder cout of previous adders

        
    assign {cout[0], sum[0]} = a[0] + b[0] + cin; 

    genvar i;
    generate begin
        for(i = 1; i < 100; i++) begin:full_adder_block
            Full_Adder fa1(.fa_sum(sum[i]),.fa_cout(cout[i]),.in1(a[i]),.in2(b[i]),.cin(cout[i - 1]));
        end:full_adder_block
    end
    endgenerate
    
endmodule

// NB
// An 8-bit ripple carry adder consists of eight full adders connected in a cascade,
// with each full adder's carry output connected to the next full adder. 

// Ripple carry has an demerit that each adder block waits for the carry to arrive from its previous block
// The i^{th} block waits for the i-1^{th} block to produce its carry, so their excist an considerable delay.
// So we use the Carry Look-ahead Adder.