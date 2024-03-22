// Statement
// Assume that you have two 8-bit 2's complement numbers, a[7:0] and b[7:0]. These numbers are added to produce s[7:0].
// Also compute whether a (signed) overflow has occurred.

// Solution

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
    //  2's complement for a binary number is found by inverting the numbers and adding 1
    //	i.e: 2'scomplement of 0011 is : 1100+0001 =  1101
    //
    //Also remember that MSB of the 2's complement number represents  the sign. i.e if MSB is one then the number is -ve
    //	i.e: 1101 = -8+4+0+1=-3
    //
    //If 2= 0010 then -2= 1101+1 = 1110
    //Also 2+(-2) = 1111 (This property holds for all the numbers)
    
    // we here want to check:
	// MSB determine the sign of the number
    // 2's compliment is used for reprsenting the negative number;
	// +7 => 0111;
    // -7 => +7 to 2's compiment == 1000 + 0001 = 1001;
    // Let us do the 2's compliment addition of +7 and +1;
    // (pos number so 2's compliment is same) === 0111 + 0001 = 1000 but it is not +8 it is (-8) in 2's compliment addition;
    // If we are trying to do an 4bit 2's compliment addition we can't represent the +8 in 4 bit;
	// in 2's complimet form, if we have an n bits, then we can reprsent a number system by -2^n-1 to (2^n-1) - 1;
	// while adding the 7 and 1 we are actually having the overflow so making it -8, at that condition we have to raise a flag;
	
	// we need to check the msb of the input and output, if msb of the input is +ve it must be +ve, vice versa.
	// overflow flow scenario ==> msb of both i/p is 0, o/p == 0 ; msb of both i/p == 1, o/p == 1;
	
 
    assign s = a + b;
    assign overflow = a[7]&b[7]&~s[7] || ~a[7]&~b[7]&s[7];

endmodule
