// Statement
// A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 3-bit input vector.

// Solution
module top_module( 
    input [2:0] in,
    output [1:0] out );

    always @ (*) begin
        out  = 1'b0;
        for (int i = 0; i < 3; i++) begin
            if (in[i] == 1'b1)
                out = out + 1;
        end
        
    end
    
endmodule
