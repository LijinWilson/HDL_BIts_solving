// Statement
// A "population count" circuit counts the number of '1's in an input vector. Build a population count circuit for a 255-bit input vector.


// Solutions
module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    always @(*) begin
        out = 8'b00000000;
        for (int i = 0; i < 255; i++) begin
            if(in[i] == 1'b1) begin
                out = out+1;
            end
        end
    end

endmodule
