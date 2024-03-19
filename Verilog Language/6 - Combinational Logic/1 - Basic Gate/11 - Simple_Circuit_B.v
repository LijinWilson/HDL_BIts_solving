// Statement
// Taken from 2015 midterm question 4

// Circuit B can be described by the following simulation waveform:
// Circuit : https://hdlbits.01xz.net/wiki/File:Mt2015_q4b.png

// Solution
module top_module ( input x, input y, output z );
    assign z = ~(x^y);
endmodule